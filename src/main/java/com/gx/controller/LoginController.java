package com.gx.controller;

import com.gx.utils.AjaxResultUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @author : Zhangsai
 * @Date : 2020/08/09/23:58
 * @Description :
 */
@Controller
public class LoginController {
    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    @ResponseBody
    public Object submit(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        request.getSession().setAttribute("user", username);
        //System.out.println("用户名是：" + username + "\t密码是：" + password);
        return AjaxResultUtil.success();
    }
}
