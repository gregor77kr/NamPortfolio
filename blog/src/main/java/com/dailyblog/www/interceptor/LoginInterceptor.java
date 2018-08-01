package com.dailyblog.www.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	// 로그인이 되어있지 않은 사용자가 다른 menu에 접근하는 것을 방지함
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user_info")==null) {
			response.sendRedirect(request.getContextPath() + "/member/login.do?message=nologin");
			return false;
		} 
		
		return true;
	}// preHandler ends
}
