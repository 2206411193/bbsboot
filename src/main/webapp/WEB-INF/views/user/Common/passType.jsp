
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>passType</title>
</head>
<body>
<!--输入数据库我的用户名-->
come from the user:${sessionScope.get("username")}<br><br>

Title:
<form>

        <textarea id="content1" cols="106" name="content" rows="1">
          <!--将数据库标题放在标题栏这-->
       </textarea>
    <br>
    content:<br>
    <textarea id="content2" cols="106" name="content" rows="26">
           <!--将数据库的内容填在这-->
       </textarea></form>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--将本帖子（用户，类型，标题，内容，评论）加入收藏-->
<a href="#"style="text-decoration: none">collect</a>|
<!--将本帖子（用户，类型，标题，内容，评论）加入转发-->
<a href="#"style="text-decoration: none">reprint</a>|

<%--跳转页面到comment.jsp--%>
<a href="typeComment.jsp" style="text-decoration: none" target="three">comment</a><br><br>
<iframe name="three" width="720px" style="border-style: none"></iframe>
</body>
</html>
