<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>topic</title>
    <link href="static/css/nav/navbar.css" type="text/css" rel="stylesheet">
    <link href="static/css/homepage/login.css" type="text/css" rel="stylesheet">
    <link href="static/css/nav/sidenav.css" type="text/css" rel="stylesheet">
    <script src="static/js/login.js" type="text/javascript" > </script>
</head>
<body>

<!-- 弹出登录小窗口 -->
<div class="mini_login"  id="mini_login" >
    <!-- 表单 -->
    <form action="/user/login.do" method="post">
        <div class="item">
            <label style="color: white">用户名：</label>
            <input style="border-radius:7px;height: 20px" type="text" name="username"/>
        </div>
        <div class="item">
            <label style="color: white">密&nbsp&nbsp码：</label>
            <input  style="border-radius:7px;height: 20px" type="password" name="password" />
        </div>
        <div class="item">
            <input style="border-radius: 7px; background-color: black;color: white" class="btn_login" type="submit" value="login">
        </div>
    </form>
</div>
<!-- 遮罩层 -->
<%--<div class="cover"></div>--%>


<div class="navbar">
    <a href="/showMain.do" style="float: left"><img src="/static/img/img-2/goBack_1.png"> go-back</a>
    <a href="/showRegister.do" style="float: right">register</a>
    <!--主体-->
    <a href="javascript:void(0)" id="btn_showlogin" style="text-decoration: none;float: right">login</a>
</div>

<div class="sidenav">
    <a href="#">新片推荐</a>
    <a href="#">粉丝聚集</a>
    <a href="#">资源分享</a>
    <a href="Movie.jsp">影视观看</a>
</div>

<div class="main">

</div>

</body>
</html>