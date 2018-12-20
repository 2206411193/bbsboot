package com.qiuzhibin.demo.controller;

import com.qiuzhibin.demo.common.ResponseCode;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.UserVo;
import com.qiuzhibin.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/showUser/{id}")
    public String selectUser(@PathVariable int id) {
        return userService.selectUser(id).toString();
    }


    //   验证用户登录
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(UserVo userVo, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        request.getSession().setAttribute("title", "login");
        User user = userService.login(userVo);
        if (user != null) {
            request.getSession().setAttribute("user", user);
            redirectAttributes.addFlashAttribute(ResponseCode.LOGIN_SUCCESS, "登陆成功！");
            return "redirect:/post.do";
        } else {
            redirectAttributes.addFlashAttribute(ResponseCode.LOGIN_ERROR, "账户或密码错误!");
        }
        return "redirect:/showMain.do";
    }


    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, RedirectAttributes redirectAttr) {
        request.getSession().setAttribute("user", null);
        return "redirect:/showMain.do";
    }


    @RequestMapping(value = "/register.do", method = RequestMethod.POST)
    public String register(UserVo user,HttpServletRequest request, RedirectAttributes redirectAttr) {
        if(!userService.insertUser(user)){
            return "redirect:/showRegister.do";
        }
        request.getSession().setAttribute("user", user);
        return "redirect:/post.do";
    }

}