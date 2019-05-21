package com.isoft.action;

import com.isoft.service.IUserService;
import com.isoft.service.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
@RequestMapping("/user")
public class UserAction {
    @Autowired
    IUserService userService = new UserServiceImpl();
//  —————————————————————————————————————
    @RequestMapping("/login.do")
    @ResponseBody
    public String login(String uname, String upwd) {
//        硬编码
        String str = userService.login(uname , upwd);
        return str;

    }

//————————————————————————————————————
    @RequestMapping("/register.do")
    @ResponseBody
    public String login(String uname, String upwd,String email) {
//        硬编码
        boolean temp = userService.register(uname , upwd , email);
        if(temp)
            return"success";
        else
            return "fault";

    }
}
