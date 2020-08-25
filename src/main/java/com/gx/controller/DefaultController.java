package com.gx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * @author : Zhangsai
 * @Date : 2020/08/09/23:58
 * @Description :
 */
@Controller
@RequestMapping(value = {""})
public class DefaultController {
    @RequestMapping(value = {"/login"})
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/index")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "welcome")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping(value = "/welcome1.html")
    public String welcome1(){return "welcome1";}

    /** 会员列表（静态表格）*/
    @RequestMapping(value = "/member-list")
    public String memberList(){
        return "member-list";
    }

    /** 会员列表（静态表格）*/
    @RequestMapping(value = "/member-list1")
    public String memberList1(){
        return "member-list1";
    }

}
