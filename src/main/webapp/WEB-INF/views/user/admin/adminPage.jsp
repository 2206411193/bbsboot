<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: qiuzhibin
  Date: 18-12-23
  Time: 下午9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理中心</title>
</head>
<script>
    var items = document.querySelectorAll(".del");
    for (var i = 0; i < items.length; i++) {
        items[i].onclick = function () {
            return confirm("您确认要删除吗？");
        }
    }
</script>
<style type="text/css">
    .datalist {
        border: 1px solid #429fff; /* 表格边框 */
        font-family: Arial;
        border-collapse: collapse; /* 边框重叠 */
    }
    .datalist tr:hover {
        background-color: #c4e4ff; /* 动态变色,IE6下无效！*/
    }
    .datalist caption {
        padding-top: 3px;
        padding-bottom: 2px;
        font: bold 1.1em;
        background-color: #f0f7ff;
        border: 1px solid #429fff; /* 表格标题边框 */
    }
    .datalist th {
        border: 1px solid #429fff; /* 行、列名称边框 */
        background-color: #d2e8ff;
        font-weight: bold;
        padding-top: 4px;
        padding-bottom: 4px;
        padding-left: 10px;
        padding-right: 10px;
        text-align: center;
    }
    .datalist td {
        border: 1px solid #429fff; /* 单元格边框 */
        text-align: right;
        padding: 4px;
    }
</style>
<body>
<div>
    <form class="datalist" action="/addStar.do" method="post">
    <table>
        <th>请输入您要充值的用户id</th>
        <th>请输入您要充值的星星：</th>

          <tr>
              <td><input name ="userId" type="number"></td>
              <td><input name="star" type="number"></td>
          </tr>
    </table>
        <input type="submit" value="充值">
    </form>
</div>
<br><br>

用户管理：
<table class="datalist"border="1" style="width: 100%">
    <tr>
        <th>用户id</th>
        <th>用户名</th>
        <th>星级</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${sessionScope.list}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.role}</td>
            <td>
                <a href="delete/user/${user.id}" class="del">删除</a> |
                    <%--<a href="edit/${user.id}">修改</a></td>--%>
        </tr>
    </c:forEach>
</table>


<br><br>

    文章管理：
<table class="datalist" border="1" style="width: 100%">
    <tr>
        <th>文章id</th>
        <th>类型</th>
        <th>作者id</th>
        <th>文章标题</th>
        <th>文章内容</th>
        <th>创建时间</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${sessionScope.listA}" var="article">
        <tr>
            <td>${article.id}</td>
            <td>${article.type_id}</td>
            <td>${article.up}</td>
            <td>${article.title}</td>
            <td>${article.text}</td>
            <td>${article.create_time}</td>

            <td>
                <a href="delete/article/${article.id}" class="del">删除</a> |
                    <%--<a href="edit/${user.id}">修改</a></td>--%>
        </tr>
    </c:forEach>
</table>
<p>
    <a href="add">新增</a>
</p>

评论管理：
<table class="datalist" border="1" style="width: 100%">
    <tr>
        <th>评论id</th>
        <th>目标文章id</th>
        <th>评论标题</th>
        <th>评论内容</th>
        <th>评论者id</th>
        <th>评论时间</th>
    </tr>
    <c:forEach items="${sessionScope.listR}" var="reply">
        <tr>
            <td>${reply.id}</td>
            <td>${reply.aid}</td>
            <td>${reply.title}</td>
            <td>${reply.text}</td>
            <td>${reply.up}</td>
            <td>${reply.create_time}</td>
            <td>
                <a href="delete/reply/${reply.id}" class="del">删除</a> |
                <%--<a href="edit/${user.id}">修改</a></td>--%>
        </tr>
    </c:forEach>
</table>
</body>

</html>
