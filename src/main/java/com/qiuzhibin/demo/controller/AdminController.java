package com.qiuzhibin.demo.controller;

import com.qiuzhibin.demo.mapper.IUserMapper;
import com.qiuzhibin.demo.model.Article;
import com.qiuzhibin.demo.model.Reply;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.service.IArticleService;
import com.qiuzhibin.demo.service.IReplyService;
import com.qiuzhibin.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
public class AdminController {

    @Autowired
    private IUserService userService;
    @Autowired
    private IArticleService articleService;
    @Autowired
    private IReplyService replyService;
   @Autowired
   private IUserMapper userMapper;

    @RequestMapping("/adminLogin.do")
    public String adminLogin(HttpServletRequest request) {
        ArrayList<User> list =  userService.selectUser();
        ArrayList<Article> listA = articleService.getAllArticle();
        ArrayList<Reply> listR = replyService.getAllReply();
        request.getSession().setAttribute("list",list);
        request.getSession().setAttribute("listA",listA);
        request.getSession().setAttribute("listR",listR);
        return "user/admin/adminPage";
    }
    @RequestMapping(value = "/addStar.do",method = RequestMethod.POST)
    public String addStar(HttpServletRequest request, @RequestParam("star") int star,@RequestParam("userId") int userId){

         User user = userMapper.selectStar(userId);
        int num2 = user.getRole();
       userMapper.addStar(star+num2,userId);
        return "redirect:/adminLogin.do";
    }
    @RequestMapping(value = "/delete/user/{id}",method = RequestMethod.GET)
    public String deleteUser(HttpServletRequest request, @PathVariable("id")int id){
        userService.deleteUser(id);
        return "redirect:/adminLogin.do";
    }

    @RequestMapping(value = "/delete/article/{id}",method = RequestMethod.GET)
    public String deleteArticle(HttpServletRequest request, @PathVariable("id")int id){
        articleService.deleteArticleById(id);
        return "redirect:/adminLogin.do";
    }

    @RequestMapping(value = "/delete/reply/{id}",method = RequestMethod.GET)
    public String deleteReply(HttpServletRequest request, @PathVariable("id")int id){
        replyService.deleteReplyById(id);
        return "redirect:/adminLogin.do";
    }

}
