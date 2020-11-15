package com.gx.controller;

import com.gx.dao.serverDao.Server;
import com.gx.utils.AjaxResultUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/***
 * 欢迎页 welcome.jsp
 */
@Controller
@RequestMapping(value = "/server")
public class WelcomeController {
    @RequestMapping(value = "/getSystemInfo.action",method = RequestMethod.GET)
    @ResponseBody
    public Object getSystemInfo() throws Exception{
        Server server = new Server();
        server.copyTo();
        return AjaxResultUtil.success(server);
    }

}
