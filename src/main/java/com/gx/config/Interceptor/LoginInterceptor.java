package com.gx.config.Interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Auther: Zhangsai
 * @Date: 2020/08/09/23:58
 * @Description:登入拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取登入的url
        //判断用户是否登录
        HttpSession session=request.getSession(true);
        if(session.getAttribute("user") == null){
            System.out.println("没有session");
            response.sendRedirect(request.getContextPath() + "/login.html");
            return false;
        }
        return true;
    }
}
