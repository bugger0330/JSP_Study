package web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import db.DBConnectionMgr;
import repository.AuthDao;
import repository.AuthDaoImpl;
import repository.UserDao;
import repository.UserDaoImpl;


@WebFilter(filterName = "servletContextInit")
public class InitFilter implements Filter {
	
	private DBConnectionMgr pool;
	private AuthDao authDao;
	private UserDao userDao;

	public void init(FilterConfig fConfig) throws ServletException {
		pool = DBConnectionMgr.getInstance();
		authDao = new AuthDaoImpl(pool);
		userDao = new UserDaoImpl(pool);
		ServletContext servletContext = fConfig.getServletContext();
		servletContext.setAttribute("authDao", authDao);
		servletContext.setAttribute("userDao", userDao);
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//		System.out.println("doFilter() 전처리");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		chain.doFilter(request, response);
//		System.out.println("doFilter() 후처리");
	}


	public void destroy() {
		
	}
}
