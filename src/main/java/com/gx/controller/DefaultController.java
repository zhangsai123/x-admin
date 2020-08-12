package com.gx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * @Auther: Zhangsai
 * @Date: 2020/08/09/23:58
 * @Description:
 */
@Controller
@RequestMapping(value = {""})

//这是今天第五次提交的代码
public class DefaultController {
    @RequestMapping(value = "/login.html")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/index.html")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "welcome.html")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping(value = "/welcome1.html")
    public String welcome1(){return "welcome1";}

    //会员列表（静态表格）
    @RequestMapping(value = "/member-list.html")
    public String memberList(){
        return "member-list";
    }

    //会员列表（动态表格）
    @RequestMapping(value = "/member-list1.html")
    public String memberList1(){
        return "member-list1";
    }

}
