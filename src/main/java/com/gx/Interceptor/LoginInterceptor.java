package com.gx.Interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Auther: Zhangsai
 * @Date: 2020/08/09/23:58
 * @Description:登入拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取登入的url
        String loginUrl = request.getRequestURI();
        if (loginUrl.contains("login") || loginUrl.contains("Login")){
            return true;
        } else {
            System.out.println(loginUrl);
            //判断用户是否登录
            if(request.getSession().getAttribute("user")!=null){
                //说明已经登录，放行
                return true;
            } else {
                //没有登录，跳转到登录界面
                response.sendRedirect(request.getContextPath() + "/login.do");
            }

        }
        return false;
    }
}
