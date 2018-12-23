<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <link href="/static/css/homepage/login1.css" type="text/css" rel="stylesheet">
    <script src="/static/login1.js" type="text/javascript" > </script>
</head>
<body>
<script>
    window.onload = function(){

        document.getElementById('id01').style.display='block';
    }
</script>
<%--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;--%>
 <%--background: linear-gradient(to bottom right, darkblue , black);position: absolute;top: 20%;right: 50%;"> Click on me</button>--%>

<div id="id01" class="modal">

    <form class="modal-content animate"  method="post" action="/user/register.do">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="https://static.runoob.com/images/mix/img_avatar.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label><b>Input Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" required>

            <label><b>Input Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <button type="submit">register</button>
            <input type="checkbox" checked="checked">remember me</div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
            <span class="psw">To tomepage <a href="/showMainAfterLogin.do" style="text-decoration: none">login</a></span>
        </div>
    </form>
</div>
</body>
</html>