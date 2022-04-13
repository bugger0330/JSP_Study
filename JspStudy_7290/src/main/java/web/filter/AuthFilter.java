package web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import repository.user.User;


@WebFilter({ "/profile/*", "/board/*" })
public class AuthFilter implements Filter {
	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}



	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		HttpServletRequest hRequest = (HttpServletRequest)request;
		HttpServletResponse hResponse = (HttpServletResponse)response;
		HttpSession session = hRequest.getSession();
		User principalUser = (User)session.getAttribute("principal");
		
		
		if(principalUser == null) {//로그인이 안되서 세션 객체가 없을때
			hResponse.sendRedirect("/JspStudy_7290/auth/signin");
			return;
		}
		
		chain.doFilter(request, response);
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

}
