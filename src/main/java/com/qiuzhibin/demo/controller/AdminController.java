package com.qiuzhibin.demo.controller;

import com.qiuzhibin.demo.filter.LoginFilter;
import com.qiuzhibin.demo.mapper.IUserMapper;
import com.qiuzhibin.demo.model.Article;
import com.qiuzhibin.demo.model.Reply;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.service.IArticleService;
import com.qiuzhibin.demo.service.IReplyService;
import com.qiuzhibin.demo.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

    private final Logger log = LoggerFactory.getLogger(LoginFilter.class);
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
        log.info("管理员成功登陆！正在加载所有的数据库信息。");
        return "user/admin/adminPage";
    }
    @RequestMapping(value = "/addStar.do",method = RequestMethod.POST)
    public String addStar(HttpServletRequest request, @RequestParam("star") int star,@RequestParam("userId") int userId){
         User user = userMapper.getUserById(userId);
        int num2 = user.getRole();
        log.info("管理员充值前星星为"+num2+"颗");
       userMapper.addStar(star+num2,userId);
        log.info("管理员充值后星星为"+star+num2+"颗");
        return "redirect:/adminLogin.do";
    }
    @RequestMapping(value = "/delete/user/{id}",method = RequestMethod.GET)
    public String deleteUser(HttpServletRequest request, @PathVariable("id")int id){
        userService.deleteUser(id);
        log.info("管理员成功删除"+id+"用户！");
        return "redirect:/adminLogin.do";
    }

    @RequestMapping(value = "/delete/article/{id}",method = RequestMethod.GET)
    public String deleteArticle(HttpServletRequest request, @PathVariable("id")int id){
        log.info("管理员成功删除"+id+"文章！");
        return "redirect:/adminLogin.do";
    }

    @RequestMapping(value = "/delete/reply/{id}",method = RequestMethod.GET)
    public String deleteReply(HttpServletRequest request, @PathVariable("id")int id){
        replyService.deleteReplyById(id);
        log.info("管理员成功删除"+id+"回复！");
        return "redirect:/adminLogin.do";
    }

}
