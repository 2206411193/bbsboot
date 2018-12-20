package com.qiuzhibin.demo.controller;

import com.qiuzhibin.demo.common.ResponseCode;
import com.qiuzhibin.demo.model.Type;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.UserVo;
import com.qiuzhibin.demo.service.ArticleService;
import com.qiuzhibin.demo.service.IArticleService;
import com.qiuzhibin.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;
    private IArticleService articleService;

    @RequestMapping("/showUser/{id}")
    public String selectUser(@PathVariable int id) {
        return userService.selectUser(id).toString();
    }


    // 用户登录
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

    // 用户登出
    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, RedirectAttributes redirectAttr) {
        request.getSession().setAttribute("user", null);
        System.out.println("成功删除登陆信息！");
        return "redirect:/showMain.do";
    }

    //用户注册
    @RequestMapping(value = "/register.do", method = RequestMethod.POST)
    public String register(UserVo user,HttpServletRequest request, RedirectAttributes redirectAttr) {
        if(!userService.insertUser(user)){

            System.out.println("注册失败，用户已存在！");
        }
        request.getSession().setAttribute("user", user);
        System.out.println("注册成功:   "+user.getUsername()+"   "+user.getPassword());
        return "redirect:/post.do";
    }

//    @RequestMapping("getType.do")
//    @ResponseBody
//    public List<Type> getTypes(){
//        return articleService.findTypes();
//    }


    //用户保存草稿
//    @RequestMapping(value = "saveAsDraft.do" ,method = RequestMethod.POST)
//    public String saveAsDraft(ArticleVo article, HttpServletRequest request){
//        articleService.SaveDraft(article);
//    }

    //展示用户文章
    @ResponseBody
    @RequestMapping(value = "showArticle.do" ,method = RequestMethod.GET)
    public String showArticle(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if(user!=null){
            ArrayList<ArticleVo> articles = articleService.getAllArticle(user.getId());
          return "a";
        }
   return "b";
    }


    //用户发布文章
   @RequestMapping(value = "saveArticle.do",method = RequestMethod.POST)
    public String saveArticle(ArticleVo article,HttpServletRequest request){
       User user = (User) request.getSession().getAttribute("user");
       article.setUp(user.getId());
       if(user!=null){
           articleService.SaveArticle(article);
       }
       return "ok";

}


    //用户回复

}