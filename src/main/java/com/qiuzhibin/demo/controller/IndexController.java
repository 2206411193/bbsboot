package com.qiuzhibin.demo.controller;

import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@Controller
public class IndexController {
@Autowired
    ArticleService articleService;
    @RequestMapping(value = "/showRegister.do", method = RequestMethod.GET)
    public String register(HttpServletRequest request) {
        return "index/register";
    }

    @RequestMapping(value = "/showMain.do", method = RequestMethod.GET)
    public String showMain(HttpServletRequest request) {
        return "index/mainPage";
    }
    @RequestMapping(value = "/post.do", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpServletResponse response) {
//        Dig.digForword(response, "登陆成功!");

        request.getSession().setAttribute("title", "登入");
        return "index/post";
    }

    //登陆后的界面
    @RequestMapping(value = "/vipUserMain.do", method = RequestMethod.GET)
    public String vipUserMain(HttpServletRequest request) {
        return "user/vip/vipUserMain";
    }
    @RequestMapping(value = "/commonUserMain.do", method = RequestMethod.GET)
    public String commonUserMain() {
        return "user/Common/commonUserMain";
    }

  //充值界面
    @RequestMapping(value = "/showBecomeVip.do", method = RequestMethod.GET)
    public String showBecomeVip(HttpServletRequest request)
    {
        User user = (User)request.getSession().getAttribute("user");
        request.getSession().setAttribute("star",user.getRole());
        return "user/becomeVip";
    }
    //未登陆界面的跳转
    @RequestMapping(value = "/moreActor.do", method = RequestMethod.GET)
    public String moreActor(HttpServletRequest request) {
        return "moreActor";
    }
    @RequestMapping(value = "/Movie.do", method = RequestMethod.GET)
    public String Movie(HttpServletRequest request) {
        return "Movie";
    }
    @RequestMapping(value = "/topic.do", method = RequestMethod.GET)
    public String topic(HttpServletRequest request) {
        return "topic";
    }
    @RequestMapping(value = "/game.do", method = RequestMethod.GET)
    public String game(HttpServletRequest request) {
        return "happy/snakeGame";
    }




    //展示用户文章
    @RequestMapping(value = "/showArticle.do")
    public String showArticle(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if(user!=null){
            ArrayList<ArticleVo> articles = articleService.getAllArticle(user.getId());
            request.setAttribute("articles",articles);
            return "user/ArticleList";
        }
        return "b";
    }
}
