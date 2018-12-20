<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--personal.jsp相当于是登录后的mainPage.jsp--%>
<head>
    <meta charset="UTF-8">
    <title>personal</title>
    <link type="text/css" rel="stylesheet" href="./css/reset.css" />
    <link type="text/css" rel="stylesheet" href="/static/css/personal.css" />
</head>

<body>

<header><img src="/static/img/icon.jpg" width="120px" /></header>
<%--点击头像跳转到post.jsp页面--%>
<div class="headPortrait">
    <a href="../Post/post.jsp"><img src="headPortrait.png" height="40px" width="50px"></a> </div>
<%--显示登录的用户名--%>
<div class="username">username：${sessionScope.get("username")}</div>

<nav></nav>

<div class="middle">
    <div class="left">
        <%--跟mainPage.jsp一样，点击各按钮，a href的数据库内容需要显示在iframe中--%>
        <%--注意：多了一项<最后一个按钮>我的帖子--%>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="one">Professional communication</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="one">Emotional interaction</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="one">Food appreciation</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="one">Tourism community</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="one">Poetry and Ode</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="one">Campus landscape</a></button><br>
        <button class="button1"><a href="../user/Comment/passUser.jsp" target="one">My post</a></button><br>
    </div>

    <div class="myForum">My Forum</div>
    <div class="posting">
        <%--点击Posting发帖,跳转到post.jsp页面--%>
      <button class="button2"><a href="../Post/post.jsp">Posting</a></button></div>

    <div class="right">
       <iframe name="one" ></iframe>
    </div>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>