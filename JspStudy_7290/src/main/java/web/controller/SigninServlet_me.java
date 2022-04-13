package web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/signin##")
public class SigninServlet_me extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	
	@Override
	public void init() throws ServletException {
	username = "aaa";
	password = "1234";
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		

		
		String username1 = request.getParameter("username");
		String password1 = request.getParameter("password");
	
		if(username.equals(username1) && password.equals(password1)) {
			System.out.println("로그인 성공");
			request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp").forward(request, response);
		
		}else{
				System.out.println("로그인 실패");
				out.write("<script>alert(\"로그인 실패\");"
						+ "window.history.back();</script>");
				request.getRequestDispatcher("/WEB-INF/views/auth/signin.jsp").forward(request, response);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post 요청 옴?");
	}

}
