package db_study;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.util.ArrayList;
import java.util.Vector;

import db.DBConnectionMgr;
import repository.user.User;

public class UserDao {//데이터 엑세스 오브젝트(db에 접근하려는 object)

	private final DBConnectionMgr pool;

	//생성자
	public UserDao(DBConnectionMgr pool) {
		this.pool = pool;
	}
	
	/*
	 * Connection 데이터베이스와 연결하고
		PreparedStatement 에 쿼리문을 담아서 실행하고
		ResultSet 쿼리문 실행 결과를 담는다
	 */
	
	//메소드
	public User getUserByUsername(String username) {
		String sql = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		User user = null;
		
		try {
			con = pool.getConnection();
			sql = "select * from user_mst where username = ?"; //username = ?안에 매개변수 String username을 넣어야 하는데 데이터가 변할수 있어서 ?라고 적었다
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, username);// 첫번째 물음표 안에 username 값을 넣어라
			rs = pstmt.executeQuery();//실행하면 커서가 컬럼명에 와있는데
			
			rs.next();// 해서 커서를 한칸 옮겨야 한다
			
			try {//만약 아이디를 조회했는데 내용이 없으면 예외처리를 해준다
				user = User.builder()//한줄짜리 리스트를 담고 user 객체에 한줄을 담는다
						.user_code(rs.getInt(1))//1번 컬럼을 들고 온다(0부터 시작x)
						.username(rs.getString(2))
						.password(rs.getString(3))
						.name(rs.getString(4))
						.email(rs.getString(5))
						.create_date(rs.getTimestamp(6).toLocalDateTime())
						.update_date(rs.getTimestamp(7).toLocalDateTime())
						.build();
			}catch (SQLDataException e){
				System.out.println("해당 아이디로 조회한 데이터가 없습니다");
				user = null;
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		
		return user;
	}
	
	
	//메소드
	public ArrayList<User> getUserAll(){ // 1. getUserAll() 호출 되면
		String sql = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; // 2. 3가지를 정의 하고 (ResultSet = 결과를 담을수 있는 것)
		
		ArrayList<User> userList = new ArrayList<User>();//3. public ArrayList<User> 리턴값이 <User>니까 userList 객체 생성해서 리턴
		
		try {
			con = pool.getConnection();//커넥션 잡아주고
			sql = "select * from user_mst";
			pstmt = con.prepareStatement(sql);//쿼리문을 pstmt에 담고
			rs = pstmt.executeQuery(); // 쿼리 실행
			
			
			while(rs.next()) {//항아리에서 하나씩 꺼낸다, next() 하면 커서가 한칸씩 밑으로 내려간다
				//boolean next( )  :  커서 다음에 레코드가 없으면 false, 있으면 true를 반환 후 커서를 다음 레코드로 이동시키는 메소드
				
				User user = User.builder()//한줄짜리 리스트를 담고 user 객체에 한줄을 담는다
						.user_code(rs.getInt(1))//1번 컬럼을 들고 온다(0부터 시작x)
						.username(rs.getString(2))
						.password(rs.getString(3))
						.name(rs.getString(4))
						.email(rs.getString(5))
						.create_date(rs.getTimestamp(6).toLocalDateTime())
						.update_date(rs.getTimestamp(7).toLocalDateTime())
						.build();
				userList.add(user);
				//rs.next() 가 끝날때까지 반복
			}
			
		} catch (Exception e) {//오류가 나면 예외처리
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {//중요!!
			pool.freeConnection(con, pstmt, rs);//맨 마지막에 꼭 해야 한다
			/*
			 * DBConnectionMgr 클래스에 들어가보면
			 *  private Vector connections = new Vector(10); 10개의 커넥션 인스턴스를 만들어뒀다
			 *  freeConnection = 수영장에서 튜브를 빌린 뒤 반납하는 행위이다
			 *  freeConnection 를 안하면 10개의 튜브를 빌린 뒤 더이상 DB 접속이 안되서 에러가 난다
			 * */
		}
		
		
		return userList; // ArrayList의 <User> 자료형을 리턴
	}
}
