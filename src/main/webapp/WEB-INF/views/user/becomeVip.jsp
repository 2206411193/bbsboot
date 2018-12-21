<%@ page import="org.springframework.web.context.request.SessionScope" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<body>
  <form action="/user/becomeVip.do" method="post">
      请输入您要充值的星星：<input name="star" type="number">颗<br>
       <input type="submit" value="充值">
  </form>

  当前您的小星星数目为:${sessionScope.get("star")}
  <button><a href="/showMain.do">返回</a></button>
</body>
</html>