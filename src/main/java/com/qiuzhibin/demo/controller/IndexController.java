package com.qiuzhibin.demo.controller;

import com.qiuzhibin.demo.common.Dig;
import com.qiuzhibin.demo.model.Article;
import com.qiuzhibin.demo.model.Reply;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.ReplyVo;
import com.qiuzhibin.demo.service.ArticleService;
import com.qiuzhibin.demo.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@Controller
public class IndexController {



@Autowired
    ArticleService articleService;
@Autowired
    ReplyService replyService;

    ArrayList<Reply> replys;

     //显示注册界面
     @RequestMapping(value = "/showRegister.do", method = RequestMethod.GET)
    public String register(HttpServletRequest request) {
        return "index/register";
    }


    //登陆后主界面
    @RequestMapping(value = "/showMainAfterLogin.do", method = RequestMethod.GET)
    public String showMainAfterLogin(HttpServletRequest request) {

       User user = (User)request.getSession().getAttribute("user");
        if(user.getRole()<=10)
            return "redirect:/commonUserMain.do";
        else{
            return "redirect:/vipUserMain.do";
        }
    }

    //登陆前主界面
    @RequestMapping(value = "/showMain.do", method = RequestMethod.GET)
    public String showMain(HttpServletRequest request) {
       return "index/mainPage";
    }

    //个人发表文章界面
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

        User user = (User)request.getSession().getAttribute("user");
        if(user==null) {
            System.out.println("未登陆还想看电影？");
            return "Movie";
        }
       else if(user.getRole()<=10) {
            System.out.println(user.getUsername()+"登陆,他的星级为"+user.getRole()+"不充钱的穷碧！");
            return "user/Common/Movie-loginlatter";
        }
        else{
            System.out.println(user.getUsername()+"登陆,他的星级为"+user.getRole()+"是我们亲爱的大会员！");
            return "user/vip/Movie-loginvip";
        }

    }

    //展示所有文章
    @RequestMapping(value = "/topic.do", method = RequestMethod.GET)
    public String topic(HttpServletRequest request,HttpServletResponse response) {
         User user = (User) request.getSession().getAttribute("user");
         if(user!=null){
        ArrayList<Article> articles = articleService.getAllArticle();
        request.getSession().setAttribute("articles",articles);
        return "topic";}
        Dig.digBack(response,"登陆后可以进入论坛,会员可以观看电影欧～");
         return "/showMain.do";
    }






    //展示所有文章点击超链接
    @RequestMapping(value = {"/showArticleById/{id}"} ,method = RequestMethod.GET)
    public String showArticleById(@PathVariable int id, HttpServletRequest request) {

        Article article = articleService.getArticleById(id);

       if(article!=null)
       replys = replyService.getReplyByArticleId(article.getId());
       if(replys!=null||replys.size()!=0){
           request.getSession().setAttribute("replys",replys);
       }
        request.getSession().setAttribute("article",article);
        return "index/Article";
    }





    //游戏
    @RequestMapping(value = "/game.do", method = RequestMethod.GET)
    public String game(HttpServletRequest request) {
        return "happy/snakeGame";
    }




    //展示所有文章
    @RequestMapping(value = "/showArticle.do")
    public String showArticle(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if(user!=null){
            ArrayList<Article> articles = articleService.getAllArticle();
            request.setAttribute("articles",articles);
            return "user/ArticleList";
        }
        return "/showMainAfterLogin.do";
    }
}
