package com.iu.s1.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class MemberCheckInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		//Controller 진입전
		//return 이 true라면 다음 Controller로 진행
		//return 이 false라면 다음 Controller로 진행 X
		
		Object obj = request.getSession().getAttribute("member");
		
		if(obj != null) {
			return true;
		}
		
		System.out.println("로그인 안함");
		//1. Foward Jsp
//		request.setAttribute("result", "권한 없음");
//		request.setAttribute("url", "../member/memberLogin");
//		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
//		view.forward(request, response);
		
		//2. Redirect
		response.sendRedirect("../../../../../../../member/memberLogin");	//큰 프로젝트 경우 ../ 여러번 사용하여 home으로 가게 설정
		
		return false;
	}
	
}
