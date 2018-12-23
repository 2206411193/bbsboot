package com.qiuzhibin.demo.controller;

import com.qiuzhibin.demo.common.Dig;
import com.qiuzhibin.demo.common.ResponseCode;
import com.qiuzhibin.demo.model.Reply;
import com.qiuzhibin.demo.model.Type;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.ReplyVo;
import com.qiuzhibin.demo.model.vo.UserVo;
import com.qiuzhibin.demo.service.ArticleService;
import com.qiuzhibin.demo.service.IArticleService;
import com.qiuzhibin.demo.service.IReplyService;
import com.qiuzhibin.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.testng.internal.Utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;
    @Autowired
    private IArticleService articleService;
    @Autowired
    private IReplyService replyService;

    @RequestMapping("/showUser/{id}")
    public String selectUser(@PathVariable int id) {
        return userService.selectUser(id).toString();
    }


    // 用户登录
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(UserVo userVo,HttpServletResponse response, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        request.getSession().setAttribute("title", "login");
        User user = null;
        user = (User)request.getSession().getAttribute("user");
//        if(user!=null){
//            Dig.digBack(response, "无需重复登陆!");
//        }
          user = userService.login(userVo);
        if (user != null) {
            request.getSession().setAttribute("user", user);
            System.out.println("成功登陆！"+user.getUsername());
              if(user.getRole()<=10)
            return "redirect:/commonUserMain.do";
              else{
                  return "redirect:/vipUserMain.do";
              }
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
    public String register(UserVo user,HttpServletRequest request,HttpServletResponse response) {
        if(Utils.isStringBlank(user.getUsername())){
            System.out.println("");
            Dig.digBack(response, "用户名不为空！");
        }
        if(Utils.isStringBlank(user.getPassword())){
            Dig.digBack(response, "密码不为空！");
        }
        boolean flag =  userService.insertUser(user);
        if(!flag){
            Dig.digBack(response, "用户已存在！");
        }else{
        request.getSession().setAttribute("user", user);
        System.out.println("注册成功:   "+user.getUsername()+"   "+user.getPassword());}
        return "redirect:/showMainAfterLogin.do";
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



    //用户发布文章
   @RequestMapping(value = "/saveArticle.do",method = RequestMethod.POST)
    public String saveArticle(ArticleVo article,HttpServletRequest request){

       User user = (User) request.getSession().getAttribute("user");
       Date date = new Date();
       Timestamp ts = new Timestamp(date.getTime());
       article.setCreate_time(ts);
       article.setUp(user.getId());
       System.out.println("用户已登陆！ "+user.getUsername());
       System.out.println(article.getText());

       if(user!=null){
          boolean flag =  articleService.SaveArticle(article);
          if(flag){
           System.out.println("保存成功！");
           return "redirect:/topic.do";
          }
          else{
              System.out.println("出错！");
          }

       }
       return "ok";

}

@RequestMapping(value = "/reply/{id}",method = RequestMethod.POST)
public String reply(@PathVariable int id, ReplyVo replyVo,HttpServletRequest request){
    Date date = new Date();
    Reply reply = replyVo;
    Timestamp ts = new Timestamp(date.getTime());
    User user = (User) request.getSession().getAttribute("user");
    if(user!=null){
//         reply.setUsername(userService.selectUser(user.getId()).getUsername());
         reply.setCreate_time(ts);
         reply.setAid(id);
         reply.setUp(user.getId());
         boolean flag = replyService.InsertReply(reply);
         System.out.println(reply.getText());
         if (flag){
             return "redirect:/showArticleById/"+id;
         }
    }
    return "";
}
    //用户充值
    @RequestMapping(value = "becomeVip.do" ,method = RequestMethod.POST)
    public String becomeVip(@RequestParam("star") int star, HttpServletRequest request,HttpServletResponse response){
        User user = (User) request.getSession().getAttribute("user");

        if(user!=null){
            int num = userService.selectStar(user);
            star = num+star;
            boolean flag =  userService.addStar(star,user);
            if(flag){
            int num1 = userService.selectStar(user);
            }
        }
     return "redirect:/showBecomeVip.do";
    }


}