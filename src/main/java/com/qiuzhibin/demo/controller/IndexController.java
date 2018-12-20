package com.qiuzhibin.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {

    @RequestMapping(value = "/showRegister.do", method = RequestMethod.GET)
    public String register(HttpServletRequest request) {
        return "index/register";
    }

    @RequestMapping(value = "/showMain.do", method = RequestMethod.GET)
    public String showMain(HttpServletRequest request) {
        return "index/mainPage";
    }
    @RequestMapping(value = "/post.do", method = RequestMethod.GET)
    public String login(HttpServletRequest request) {
        request.getSession().setAttribute("title", "登入");
        return "index/post";
    }
}
