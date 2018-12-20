<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>mainPage</title>
    <link type="text/css" rel="stylesheet" href="/static/css/mainpage.css" />
    <script type="text/javascript" src="/static/js/login.js"></script>
</head>
<body>
<header>
    <img src="/static/img/icon.jpg" width="120px" />

    <!-- 主体 -->
    <div class="main">
        <a  href="javascript:void(0)" class="btn_login" id="btn_showlogin" style="text-decoration: none">login</a>
    </div>

    <!-- 弹出登录小窗口 -->
    <div class="mini_login" id="mini_login">
        <!-- 表单 -->
        <form action="/user/login.do" method="post">
            <div class="item firstLine" id="firstLine">
                <span class="login_title">login please!</span>
                <span class="login_close" id="close_minilogin">X</span>
            </div>
            <div class="item">
                <label>username</label>
                <input type="text" name="username" />
            </div>
            <div class="item">
                <label>password</label>
                <input type="password" name="password" />
            </div>
            <div class="item">
                <button  type="submit" class="btn_login" onclick="" style="text-decoration: none">login</button>
            </div>
        </form>
    </div>
    <!-- 遮罩层 -->
    <%--<div class="cover"></div>--%>

    <%--点击Register跳转到register进行注册--%>
    <div class="register"><a href="/showRegister.do">Register</a> </div>
</header>

<nav></nav>

<div class="middle">
    <div class="left">
        <%--点击各按钮，a href的数据库内容需要显示在iframe中--%>
        <%--需要在数据库保存Professional communication，Emotional interaction...文章类型--%>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="four">Professional communication</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="four">Emotional interaction</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="four">Food appreciation</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="four">Tourism community</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="four">Poetry and Ode</a></button><br>
        <button class="button1"><a href="../user/Comment/passType.jsp" target="four">Campus landscape</a></button><br>
    </div>

    <div class="right">
       <iframe name="four" ></iframe>
    </div>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>