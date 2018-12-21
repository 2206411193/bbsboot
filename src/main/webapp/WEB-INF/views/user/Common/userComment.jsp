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
    <title>usercomment</title>
</head>
<body>

<!--输入数据库我的用户名-->
user:${sessionScope.get("username")}<br><br>

<form><textarea id="content2" cols="100" name="content" rows="3">
           <!--将内容输入在这，并且将内容保存到数据库-->
       </textarea>
</form>

<!--跳转到release.jsp，将发布的内容以固定的形式放到iframe中-->
<a href="userRelease.jsp" target="two"><input type="submit" value="release"></a>
</body>
</html>