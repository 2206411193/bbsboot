<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.qiuzhibin.demo.model.vo.ArticleVo" %><%--
  Created by IntelliJ IDEA.
  User: qiuzhibin
  Date: 18-12-20
  Time: 下午10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <c:forEach items="${articles}" var="article" varStatus="vs">
        <tr>

            <td align = "center">${article.id}</td>
            <td align = "center">${article.text}</td>
            <td align = "center">${article.status}</td>
        </tr>
    </c:forEach>
</p>


</body>
</html>
