<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
     <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
     <link type="text/css" rel="stylesheet" href="<%=basePath %>css/error.css" media="all" />
     <title>404</title>
   </head>
   <body>
         <br><br><br>在下书了<a href = "/post.do">返回主页</a><br>
         <img src="<%=basePath %>image/404.jpg" style=""/>
   </body>
</html>
