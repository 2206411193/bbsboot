<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie-loginlatter</title>
    <link href="/static/css/nav/navbar.css" type="text/css" rel="stylesheet">
    <link href="/static/css/middle/middle-1.css" type="text/css" rel="stylesheet">
    <link href="/static/css/middle/middle_2.css" type="text/css" rel="stylesheet">
    <script src="/static/js-1/vidio.js" type="text/javascript" > </script>
    <link href="/static/css/homepage/login.css" type="text/css" rel="stylesheet">
    <script src="/static/js-1/login.js" type="text/javascript" > </script>
</head>
<body>

<div class="navbar">
    <a href="/showMain.do" style="float: left"><img src="static/img/img-2/goBack_1.png"> go-back</a>
    <a href="/showRegister.do" style="float: right">register</a>
    <!--主体-->
    <a href="javascript:void(0)" id="btn_showlogin" style="text-decoration: none;float: right">login</a>
</div>
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
<div class="middle_2" style="top: 80px">
    <button class="tablink" onclick="openCity('Iron Man', this, 'red')" id="defaultOpen">Iron Man</button>
    <button class="tablink" onclick="openCity('Captain America', this, 'green')">Captain America</button>
    <button class="tablink" onclick="openCity('Thor&Other', this, 'blue')">Thor&Other</button>
    <button class="tablink" onclick="openCity('The Avengers', this, 'orange')">The Avengers</button>
    <button class="tablink" onclick="openCity('Agents of S.H.I.E.L.D', this, 'violet')">Agents of S.H.I.E.L.D</button>
</div>
<div class="middle_1">
    <div id="Iron Man" class="tabcontent">

        <div class="responsive">

            <div class="img">
                <div class="img_1">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Iron Man 1》</div>
            </div>
            <div class="img">
                <div class="img_2">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Iron Man 2》</div>
            </div>
            <div class="img">
                <div class="img_3">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Iron Man 3》</div>
            </div>
            <div class="img" style="height: 200px;width: 100%;">
                <h5 align="center"><br><br><br>Copyright © 2018 Qunar.com Inc. All Rights Reserved.<br>
                    Contact mailbox:2574503276@qq.com<br>Contact address:Yantai University<br>Contact number:17865569900</h5>
            </div>
        </div>
    </div>

    <div id="Captain America" class="tabcontent">

        <div class="responsive">

            <div class="img">
                <div class="img_1_1">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Captain America 1:Avenger Pioneer》</div>
            </div>
            <div class="img">
                <div class="img_1_2">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Captain America 2：Winter Soldier》</div>
            </div>
            <div class="img">
                <div class="img_1_3">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Captain America 3:Civil War》</div>
            </div>
            <div class="img" style="height: 200px;width: 100%;">
                <h5 align="center"><br><br><br>Copyright © 2018 Qunar.com Inc. All Rights Reserved.<br>
                    Contact mailbox:2574503276@qq.com<br>Contact address:Yantai University<br>Contact number:17865569900</h5>
            </div>
        </div>
    </div>

    <div id="Thor&Other" class="tabcontent">

        <div class="responsive">

            <div class="img">
                <div class="img_2_1">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Thor》</div>
            </div>
            <div class="img">
                <div class="img_2_2">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Thor 2:The Dark World》</div>
            </div>
            <div class="img">
                <div class="img_2_3">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Hulk》</div>
            </div>
            <div class="img">
                <div class="img_2_4">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Doctor Strange》</div>
            </div>
            <div class="img">
                <div class="img_2_5">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Ant-Man》</div>
            </div>
            <div class="img" style="height: 200px;width: 100%;">
                <h5 align="center"><br><br><br>Copyright © 2018 Qunar.com Inc. All Rights Reserved.<br>
                    Contact mailbox:2574503276@qq.com<br>Contact address:Yantai University<br>Contact number:17865569900</h5>
            </div>
        </div>
    </div>

    <div id="The Avengers" class="tabcontent">

        <div class="responsive">

            <div class="img">
                <div class="img_3_1">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Avengers》</div>
            </div>
            <div class="img">
                <div class="img_3_2">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Avengers 2:Age of Ultron》</div>
            </div>
            <div class="img">
                <div class="img_3_3">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Avengers 3:Infinity War》</div>
            </div>
            <div class="img" style="height: 200px;width: 100%;">
                <h5 align="center"><br><br><br>Copyright © 2018 Qunar.com Inc. All Rights Reserved.<br>
                    Contact mailbox:2574503276@qq.com<br>Contact address:Yantai University<br>Contact number:17865569900</h5>
            </div>
        </div>
    </div>
    <div id="Agents of S.H.I.E.L.D" class="tabcontent">

        <div class="responsive">

            <div class="img">
                <div class="img_4_1">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 1》</div>
            </div>
            <div class="img">
                <div class="img_4_2">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 2》</div>
            </div>
            <div class="img">
                <div class="img_4_3">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 3》</div>
            </div>
            <div class="img">
                <div class="img_4_4">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="../img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 4》</div>
            </div>
            <div class="img">
                <div class="img_4_5">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 2-1》</div>
            </div>
            <div class="img">
                <div class="img_4_6">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 2-2》</div>
            </div>
            <div class="img">
                <div class="img_4_7">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-2/bofang.png" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 3-1》</div>
            </div>
            <div class="img">
                <div class="img_4_8">
                    <a target="_blank" href="http://static.runoob.com/images/demo/demo2.jpg">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 3-2》</div>
            </div>
            <div class="img" style="height: 200px;width: 100%;">
                <h5 align="center"><br><br><br>Copyright © 2018 Qunar.com Inc. All Rights Reserved.<br>
                    Contact mailbox:2574503276@qq.com<br>Contact address:Yantai University<br>Contact number:17865569900</h5>
            </div>
        </div>

    </div>

</div>


</body>
</html>