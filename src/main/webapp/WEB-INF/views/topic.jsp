<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="com.qiuzhibin.demo.model.vo.ArticleVo" %>
<%@ page import="com.qiuzhibin.demo.model.Article" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>topic</title>
    <link href="static/css/nav/navbar.css" type="text/css" rel="stylesheet">
    <link href="static/css/homepage/login.css" type="text/css" rel="stylesheet">
    <link href="static/css/nav/sidenav.css" type="text/css" rel="stylesheet">
    <script src="static/js/login.js" type="text/javascript" > </script>
    <style>
        body{
            background-color: #F0F0F0;
            overflow-y: scroll;
            -ms-overflow-y: scroll;
        }
        *{
            border: 0px;
            padding: 0px;
            margin: 0px;
            font-size: 14px;
        }
        a:hover{color:red;text-decoration:none;}



        #menu img{
            height: 90px;
        }
        #menu ul{
            list-style-type: none;

        }
        #menu ul li{
            float: left;
            height: 90px;
            line-height: 90px;
            margin-right: 50px;

        }
        #menu ul li a{
            color: black;text-decoration: none;
            display: inline-block;

        }
        #menu ul li a:hover{color: #65b5ff;text-decoration: none}

        #box p {
            text-align: center;
        }
        .blog{
            border-radius: 70px;
            border: 2px;
            border-color: #0099CC;
        }
        #blog ul{
            list-style-type: none;
        }
        #blog ul li{
            background-color: white;
            padding: 20px;
            width: 100%;
            overflow: hidden;
            margin-top: 15px;
        }
        .blog-left{
            float: left;
            width: 500px;
            overflow: hidden;

        }
        .blog-right{
            float: left;
            margin-left: 10px;
            width: 200px;
            overflow: hidden;
        }
        .blog-right img{
            width: 280px;
            height: 200px;
        }
        .title{
            text-decoration:none;
            font-size: 26px;
        }
        .blog-left p{
            color: gray;
        }
        .blog-left img{
            width: 20px;
            margin-right: 10px;
            vertical-align: middle;
        }
        .page a{
            border: 1px solid #71b0bb;
            text-decoration: none;
            margin: 5px;
            padding: 5px 10px;
        }
        .page a:link,.page a:visited{
            color: #000000;
        }
        .page a:hover,.page a:active{
            color: #FFF;
            background-color: #bbac5c;
        }
        #blog-content p{
            color: black;
        }
        #blog-content img{
            width: 20px;
            margin-right: 10px;
            vertical-align: middle;
        }
    </style>
</head>
<body>


<div class="navbar">
    <a href="/showMainAfterLogin.do" style="float: left"><img src="/static/img/img-2/goBack_1.png"> go-back</a>
    <a href="/showMainAfterLogin.do" style="float: right;">username:${sessionScope.get("user").getUsername()}</a>
    <a href="/showMainAfterLogin.do" style="float: right"><img src="/static/img/img-2/tuzi.jpg" style="border-radius: 50%; width: 35px;height: 35px"></a>
</div>

<div class="sidenav">
    <a href="#">新片推荐</a>
    <a href="#">粉丝聚集</a>
    <a href="#">资源分享</a>
    <a href="/Movie.do">影视观看</a>
</div>

<div class="main">

<ul>
    <%
        ArrayList<Article> articleList =(ArrayList)session.getAttribute("articles");

        if (articleList == null || articleList.size() == 0)
            out.print("没有文章可显示");
        else {
            for (int i = articleList.size() - 1; i >= 0; i--) {
                Article single =  articleList.get(i);
    %>

    <li>

        <div class="blog-left">
            <p ><a href="showArticleById/<%=single.getId()%>" class="title"><%=single.getTitle()%></a></p>
            <p style="margin-top: 20px"><%=single.getText()%></p>
            <p style="margin-top: 90px"><img src="/static/img/img-2/tuzi.jpg" >afan
                <img src="/static/img/img-2/bofang.png" style="margin-left: 20px"><%=single.getCreate_time()%></p>
        </div>
        <div class="blog-right"><img src="http://lorempixel.com/400/200/"></div>

    </li>
    <%
            }
        }
    %>
</ul>
</div>

</body>

</html>