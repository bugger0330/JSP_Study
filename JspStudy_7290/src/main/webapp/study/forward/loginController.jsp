<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! 
	String username = "aaa";
	String password = "1233";

	int signin(String username, String password){
		if(this.username.equals(username)){
			if(this.password.equals(password)){
				//로그인 성공
				return 2;
			}else{
				//비밀번호 오류
				return 1;
			}
		}else{
			//아이디 오류
			return 0;
		}
	}

%>

<%
	String _username = request.getParameter("username2");
	String _password = request.getParameter("password2");
	String loginFlag = request.getParameter("login-flag");
	
	System.out.println(_username + ", " + _password + ". " + loginFlag);
	
	int flag = signin(_username, _password);
	
	if(flag == 0){
%>
	<jsp:forward page="username_error.jsp"></jsp:forward>
<% 			
	}else if(flag == 1){
%>
		<jsp:forward page="password_error.jsp"></jsp:forward>
<% 			
	}else{
%>
		<jsp:forward page="signin_success.jsp"></jsp:forward>
<% 			
	}		

//실행 후 주소창 맨 뒤에 ?username=aaa&password=1233  입력후 엔터
//get 요청
%>




















