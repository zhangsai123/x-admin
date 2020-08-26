package com.gx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author : Zhangsai
 * @Date : 2020/08/26/16:25
 * @Description :
 */
@Controller
public class LogoutController {
    @RequestMapping(value = "/logout.action")
    public String loginout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "redirect:/login";
    }
}
