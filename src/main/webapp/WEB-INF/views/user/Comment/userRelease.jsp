<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/18 0018
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>userrelease</title>
</head>
<body>
<%--输入数据库我的用户名--%>
user:${sessionScope.get("username")}<br><br>
<%--将数据库中评论的内容放到这--%>


<%--通过点击删除按钮，删除评论--%>
<input type="submit" value="delete">
</body>
</html>
