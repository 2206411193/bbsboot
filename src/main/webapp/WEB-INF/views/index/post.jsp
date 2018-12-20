
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="/static/css/post.css" />
    <script type="text/javascript" src="/static/js/post.js"></script>
    </head>

<body  onload="startTime()">
<header><img src="/static/img/icon.jpg" width="120px" /></header>
<div align="left" class="headPortrait">
    <p><img src="/static/img/headPortrait.png" width="204" height="126" /></p>
</div>
<%--将数据库中登录的用户名显示在这--%>
<div class="username">username：${sessionScope.get("user").getUsername()}</div>
<div class="password">password：********</div>
<div class="time">time now：<div id="txt" style="float: right"></div></div>
<%--退出按钮，点击loginout，返回mainPage.jsp界面--%>
<a href="/user/logout.do" class="logout"><input class="button2" type="submit" value="logout"/></a>

<div class="middle">
    <div class="left">
        <%--跳转到本页面，没什么用--%>
        <button class="button1"><a href="post.jsp">Personal homepage</a></button><br>
            <%--点击按钮，跳转到personal.jsp页面--%>
        <button class="button1"><a href="../commomUser/personal.jsp">Campus homepage</a></button><br>
            <%--点击各按钮，将数据库保留的信息以固定的模板展示到iframe中--%>
        <button class="button1"><a href="../user/Comment/passUser.jsp" target="five">My post</a></button><br>
        <button class="button1"><a href="../user/Comment/passUser.jsp" target="five">My draft</a></button><br>
        <button class="button1"><a href="../user/Comment/passUser.jsp" target="five">My collection</a></button><br>
        <button class="button1"><a href="../user/Comment/passUser.jsp" target="five">My comments</a></button><br>
        <button class="button1"><a href="../user/Comment/passUser.jsp" target="five">My reprint</a></button><br>
    </div>
    <div class="right">
        <%--通过用户名保存标题到数据库--%>
    <div class="title">Title:</div>
    <div class="Title1">
        <form>
            <input type="text" name="Title" placeholder="Please fill in the title..." size="97" style="height: 27px">
            <%--将选择的类型进行保存到数据库--%>
            <select name="Select" style="width: 100px;border-color: #4f75c4;height: 30px;">
                <option>Selection module</option>
                <option>Professional communication</option>
                <option>Emotional interaction</option>
                <option>Food appreciation</option>
                <option>Tourism community</option>
                <option>Poetry and Ode</option>
                <option>Campus landscape</option>
            </select>
        </form>
    </div>
<%--通过用户名和标题保存内容到数据库--%>
        <div class="content">content:</div>
        <div class="picture"></div>
        <div class="Content1"><textarea id="content" cols="97" name="content" rows="36"></textarea></div>

        <div class="original">
            <form id="form3" name="form3" method="post" action="">
                <label for="Original">
                    <input type="radio" name="radio" id="Original" value="Original" />
                    Original</label>
            </form>
        </div>
        <%--保存标题，内容，在数据库中标记转发--%>
        <div class="reprint">
            <form id="form4" name="form4" method="post" action="">
                <input type="radio" name="radio" id="Reprint" value="Reprint" />
                <label for="Reprint">Reprint</label>
            </form>
        </div>
            <%--保存标题，内容，在数据库中标记草稿--%>
        <div class="addDraft"><button class="button3"><a href="#" >Add draft</a></button></div>

        <div class="posting">
            <form id="form5" name="form5" method="post" action="">
                <div align="center"><button class="button1" style="width: 80px;background-color: #4f75c4">
                    <%--通过点击posting按钮将发布的信息以固定的格式展现在iframe中--%>
                    <a href="../user/Comment/passUser.jsp" target="five">Posting</a></button>
                </div>
            </form>
        </div>

        <iframe name="five" ></iframe>

    </div>
</div>

<jsp:include page="../footer.jsp"/>
</body>
</html>




