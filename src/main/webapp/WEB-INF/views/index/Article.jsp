<%@ page import="java.util.ArrayList" %>
<%@ page import="com.qiuzhibin.demo.model.Reply" %>
<%@ page import="com.qiuzhibin.demo.model.vo.ReplyVo" %><%--
  Created by IntelliJ IDEA.
  User: qiuzhibin
  Date: 18-12-22
  Time: 下午4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>文章详情</title>
    <link href="/static/css/homepage/login.css" type="text/css" rel="stylesheet">
    <link href="/static/css/nav/sidenav.css" type="text/css" rel="stylesheet">
    <script src="/static/js/login.js" type="text/javascript" > </script>
    <script type="text/javascript" src="/static/js/jquery-1.9.1.js"></script>
</head>
<style>
body {margin:0;text-align:center;
    background-repeat: no-repeat;
    background-size: 100% 100%;
    background-image: url("/static/img/img-1/22aeb57761540e77a76dc39c41a488389d3a4668.jpg");

}

.navbar {
overflow: hidden;
background-color: #333;
position: fixed;
top: 0;
width: 100%;
}

.navbar a {
float: left;
display: block;
color: #f2f2f2;
text-align: center;
padding: 14px 16px;
text-decoration: none;
font-size: 17px;
}

.main {
padding: 16px;
margin-top: 30px;
height: 1500px; /* Used in this example to enable scrolling */
}
</style>
<body>
<!-- 弹出登录小窗口 -->

<div class="navbar">
    <a href="/topic.do" style="float: left"><img src="/static/img/img-2/goBack_1.png"> go-back</a>
    <a href="/showMainAfterLogin.do" style="float: right;">username:${sessionScope.get("user").getUsername()}</a>
    <a href="/showMainAfterLogin.do" style="float: right"><img src="/static/img/img-2/tuzi.jpg" style="border-radius: 50%; width: 35px;height: 35px"></a>
    <a href="/user/logout.do" style="float: right;">登出</a>
</div>
<div class="sidenav">
    <a href="/post.do">我的空间</a>
    <a href="/game.do">玩个游戏</a>
    <a href="#">查看作者</a>
    <a href="/Movie.do">影视观看</a>
</div>
<div class="article" style="horiz-align: center;margin-top: 200px;">
<h1 align="center" style="color:red;" >${article.title}</h1>
    <textarea  disabled style="font-size: 18px;color: #2196F3;background:rgba(0, 0, 0, 0.15);resize:none;  border-radius:5px;" rows="17" cols="100" >${article.text}</textarea>
</div>

<div class="replys" style="horiz-align: center;">
   <ul>
    <%
        ArrayList<Reply> replyList =(ArrayList)session.getAttribute("replys");
        if (replyList == null || replyList.size() == 0)
            out.print("暂无评论,赶快抢沙发吧！");
        else {
            for (int i = replyList.size() - 1; i >= 0; i--) {
                Reply single =  replyList.get(i);
    %>

    <li>
            <label style="color:red;">title:<%=single.getTitle()%></label><br>
            <label>people:<%=single.getUp()%></label><br>
               <label >time:<%=single.getCreate_time()%></label><br>
            <textarea disabled form="reply" name="text" style="    background:rgba(0, 0, 0, 0.15);    font-size: 18px;color: #2196F9;resize:none;  border-radius:5px;" rows="7" cols="100" ><%=single.getText()%></textarea>


    </li>

    <%
            }
        }
    %>
<br><br>
    <li>
        <form id="reply" method="post" action="/user/reply/${article.getId()}">
            <input name="title" style=" width: 100px; border: none;  background:rgba(0, 0, 0, 0.15);"placeholder="标题:"><br>
            <textarea form="reply" name="text" style="resize:none;background:rgba(0, 0, 0, 0.15);  border-radius:5px;" placeholder="内容" cols="100" rows="7" ></textarea>
                <button type="submit" style="background-color: black;color: white; margin-right: 0px">评论</button>
        </form>
    </li>
    </ul>

</div>
<br>

</body>


</html>

