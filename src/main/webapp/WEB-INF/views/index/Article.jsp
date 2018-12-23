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
body {margin:0;text-align:center}

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
<div class="article" style="margin-top: 200px">
<h1 align="center">${article.title}</h1>
        <div style="font: 18px 'Bitstream Charter';position:relative;horiz-align: center;  border-radius: 5px;border-color: black ;border-spacing: 10px">
    <textarea  readonly style=" resize:none;" rows="20" cols="100" >
        ${article.text}
    </textarea>
        </div>

</div>

<div class="replys" style="text-align: center">
   <ul>
    <%
        ArrayList<Reply> replyList =(ArrayList)session.getAttribute("replys");
        if (replyList == null || replyList.size() == 0)
            out.print("暂无评论,清开始妮的表演！");
        else {
            for (int i = replyList.size() - 1; i >= 0; i--) {
                Reply single =  replyList.get(i);
    %>

    <li>
        <div class="blog-left">
            <label>title:<%=single.getTitle()%></label><br>
            <label>people:<%=single.getUp()%></label><br>
               <label >time:<%=single.getCreate_time()%></label><br>
            <textarea disabled form="reply" name="text" style="background-color:white;resize:none;  border-radius:5px;" rows="7" cols="100" ><%=single.getText()%></textarea>

        </div>

    </li>

    <%
            }
        }
    %>
<br><br>
       <div style="margin-left:150px;text-align: center;height: 800px;width:1200px; overflow-y:-moz-scrollbars-vertical">
    <li>
        <form id="reply" style="width: 100px" method="post" action="/user/reply/${article.getId()}">
            <div>
            <input name="title" style=" width: 100px; border: none; "placeholder="标题:"><br>
            <textarea form="reply" name="text" style="text-align: center; resize:none; border-radius:5px;" rows="10" cols="100" placeholder="内容" ></textarea>
                <button type="submit" style="background-color: black;color: white; margin-right: 0px">评论</button>
            </div>
        </form>
    </li>
       </div>
    </ul>

</div>
<br>

</body>


</html>

