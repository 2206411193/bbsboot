<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>register</title>
    <link type="text/css" rel="stylesheet" href="/static/css/register.css" />
</head>
<body background="/static/img/nightMoon.jpg">
<div class="logGet">
    <p align="center"> <a target="ff" class="p1">register</a></p>
    <form method="post" action="/user/register.do">
        <div class="lgD">
            <input type="text" placeholder="Enter one username" name="username" /> </div>
        <div class="lgD">
            <input type="password" placeholder="Enter user password" name="password" /> </div>
        <div class="logC">
            <%--点击注册，跳转到mainPage.jsp页面，并且数据库保存新输入的账户，密码--%>
            <button class="button1"><input type="submit" value="Register"/></button></div>
    </form>
</div>
<jsp:include page=""/>
</html>