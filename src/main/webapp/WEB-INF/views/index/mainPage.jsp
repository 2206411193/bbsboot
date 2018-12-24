<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>homepage</title>
    <link href="static/css/homepage/login.css" type="text/css" rel="stylesheet">
    <link href="static/css/homepage/dianzi.css" type="text/css" rel="stylesheet">
    <link href="static/css/homepage/homepageHeader.css" type="text/css" rel="stylesheet">
    <link href="static/css/nav/navbar.css" type="text/css" rel="stylesheet">
    <link href="static/css/middle/middle.css" type="text/css" rel="stylesheet">
    <link href="static/css/homepage/more.css" type="text/css" rel="stylesheet">
    <link href="static/css/homepage/down.css" type="text/css" rel="stylesheet">
    <link href="static/css/homepage/footer.css" type="text/css" rel="stylesheet">
    <%--<script type="text/javascript" src="/static/js/login.js"></script>--%>
    <script src="static/js/login.js" type="text/javascript" > </script>
    <script type="text/javascript" src="/static/js/jquery-1.9.1.js"></script>
    <style>
        body {
            margin:0;
        }
    </style>
</head>
<body>


<header>
    <a href="#"><img class="logoImg" src="/static/img/img-1/logo.jpg" width="100px" height="60px"/></a>
    <img src="/static/img/img-1/black.png" class="logoImg0" alt="timg"/>
    <img src="/static/img/img-1/timg2.png" class="image" alt="timg" height="500px"/>

    <a href="#middle"><img src="static/img/img-1/arrowbottom.png" style="position: absolute;top: 93%;right: 49%;"></a>

</header>

<div class="navbar">
    <a href="/Movie.do" style="float: left;">Movie Appreciation</a>
    <a href="/topic.do" style="float: left">Hot topic</a>
    <%--超链接位置改一改--%>
    <a href="/marvel.do" style="float: left;">Marvel Studios</a>
    <a href="/moreActor.do" style="float: left;">actors</a>
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
<a name="middle"></a>

<div class="middle">

    <div class="introduct"><b><i>Introducing actors</i></b></div>
    <div class="loction">
        <div class="img">
            <div class="video1">
            <a target="_blank" href="static/img/img-1/heiguafu.jpg">
                <img src="static/img/img-1/heiguafu0.jpg" alt="黑寡妇" width="300" height="200">
            </a></div>
            <div class="desc">斯嘉丽·约翰逊（Scarlett Johansson），1984年11月22日生于纽约.<br>
                饰演的角色介绍：<br>
                本名娜塔莎·罗曼诺夫，原是秘密组织神盾局的一名俄国籍女探员，体态婀娜面
                容姣好，头脑清晰行动敏捷，身手不凡强硬凶狠，是神盾局的精英特工。
                娜塔莎最初被安排在斯塔克工业内部作为卧底，负责监视钢铁侠托尼·
                斯塔克，后正式加入复仇者联盟。</div>
        </div>

        <div class="img">
            <a target="_blank" href="static/img/img-1/gangtiexia1.jpg">
                <img src="static/img/img-1/gangtiexia0.jpg" alt="钢铁侠" width="300" height="200">
            </a>
            <div class="desc">小罗伯特·唐尼（Robert Downey Jr.），1965年4月4日出生于美国纽约州纽约市，美国电影演员、制片人。<br>
                饰演的角色介绍：<br>

                托尼·斯塔克是一个拥有着亿万家产的实业家，从父亲那里接手了庞大的家业，托
                尼也从不避讳自己富家公子哥的高贵身份，因为他知道这样有助于他在女人堆里无
                往不利。在继承了斯塔克这个姓氏时不得不承担的责任，可是他真正的兴趣却在发明
                创造上，而且还是科学界公认的天才发明家。

            </div>
        </div>

        <div class="img">
            <a target="_blank" href="static/img/img-1/meiguoduizhang.jpg">
                <img src="static/img/img-1/meiguoduizhang0.jpg" alt="美国队长" width="300" height="200">
            </a>
            <div class="desc">克里斯·埃文斯（Chris Evans），1981年6月13日出生于马萨诸塞州波士顿，美国演员、导演。<br>
                饰演的角色介绍：<br>
                史蒂夫·罗杰斯克里斯·埃文斯饰演身体孱弱的史蒂夫·罗杰斯经过一项秘密的超级士兵研究计划改造，
                成为了强大的超级英雄美国队长，他在二战中的英勇表现让他成为传奇人物。他用国名当做头衔，制服是红白蓝加
                上明亮的星星；一面同样颜色的盾牌就是他的武器。他的诞生，正是源于爱国主义的目的,是绝对正义的化身。
            </div>
        </div>

        <div class="img">
            <a target="_blank" href="/static/img-1/lvjuren.jpg">
                <img src="static/img/img-1/lvjuren0.jpg" alt="绿巨人" width="300" height="200">
            </a>
            <div class="desc">马克·鲁法洛（Mark Alan Ruffalo），1967年11月22日出生于美国威斯康辛州基诺沙，美国影视演员、制片人。<br>
                饰演的角色介绍：<br>
                本名罗伯特·布鲁斯·班纳（Robert Bruce Banner），是世界著名的物理学家，在一次
                意外中被自己制造出的伽玛炸弹的放射线大量辐射，身体产生异变，后
                每当他情绪激动心跳加速的时候就会变成名为浩克的绿色怪物。由于变身后往往不受
                控制，所以为了不伤害身边的人，班纳游走于世界各地寻找控制愤怒的方法.
            </div>
        </div>
    </div>

</div>
<div class="more">
    <a href="/moreActor.do">>>>&nbsp;more&nbsp;</a>
</div>
<div class="dianzi">
<div class="first">Welcome to this place</div>
<div class=third>Click below to enter the theme</div>
</div>

<div class="down">

    <div class="right">
       <a href="/Movie.do"  target="_blank" ><h2 align="center"> <br> <br> <br>Movie Appreciation</h2></a>
    </div>

    <div class="left">
       <a href="/topic.do" target="_blank"> <h2 align="center"> <br> <br> <br>Hot topic</h2></a>
    </div>

</div>
<div class="footer">

    <h5 align="center"><br><br><br>Copyright © 2018 Qunar.com Inc. All Rights Reserved.<br>
        Contact mailbox:2574503276@qq.com<br>Contact address:Yantai University<br>Contact number:17865569900</h5>
</div>

</body>
</html>