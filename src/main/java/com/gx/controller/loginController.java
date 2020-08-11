package com.gx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * @Auther: Zhangsai
 * @Date: 2020/08/09/23:58
 * @Description:
 */
@Controller
public class loginController {
    @RequestMapping(value = "/submit.action",method = RequestMethod.POST)
    @ResponseBody
    public Object submit(HttpServletRequest request){
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      System.out.println("用户名是："+username +"\t密码是："+password);
      HashMap<String, String> mesg = new HashMap<>();
      mesg.put("mesg","登入成功");
      return mesg;
    }
}
