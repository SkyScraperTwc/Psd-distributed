package com.scut.psd.web.filter;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

    	String userId =  (String) request.getSession().getAttribute("userId");
		String username =  (String) request.getSession().getAttribute("username");

	    if(null != userId && !userId.isEmpty() && null!=username && !username.isEmpty()){
	    	/**拦截器放行*/
	    	return super.preHandle(request, response, handler);
	    }else{
	    	response.sendRedirect(request.getContextPath()+"/user/toLogin");
	    	return false;
	    }
   }
    
}
