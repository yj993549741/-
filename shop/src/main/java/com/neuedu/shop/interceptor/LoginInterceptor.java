package com.neuedu.shop.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.neuedu.shop.entity.User;


public class LoginInterceptor implements HandlerInterceptor{
	
	private List<String> allowPaths;
	
	public List<String> getAllowPaths() {
		return allowPaths;
	}

	public void setAllowPaths(List<String> allowPaths) {
		this.allowPaths = allowPaths;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//用户登录session验证
		String allowedpath = request.getRequestURL().toString();
		//判断是否登录，没有登录进行拦截
		User user = (User)request.getSession().getAttribute("user");
		if(user!=null) return true;
		for(String path : allowPaths){
			//allowPaths:http://localhost:8080/springmvc/findAll.do
			if(allowedpath.endsWith(path)){
				return true;
			}
		}
		//只要不匹配
		response.sendRedirect("login.jsp");
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}

}
