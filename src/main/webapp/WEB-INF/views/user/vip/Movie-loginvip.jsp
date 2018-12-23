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
</head>
<body>

<div class="navbar">
    <a href="/showMainAfterLogin.do" style="float: left"><img src="/static/img/img-2/goBack_1.png"> go-back</a>
        <a href="/showMainAfterLogin.do" style="float: right;">username:${sessionScope.get("user").getUsername()}</a>
    <a href="vipUserMain.jsp" style="float: right"><img src="/static/img/img-2/tuzi.jpg" style="border-radius: 50%; width: 35px;height: 35px"></a>
</div>

<div class="middle_2" style="top: 90px">
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
                    <a target="_blank" href="https://v.qq.com/x/cover/ciwsbplwbrje0gt.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Iron Man 1》</div>
            </div>
            <div class="img">
                <div class="img_2">
                    <a target="_blank" href="https://v.qq.com/x/cover/90qkh14unn4q8xu/v0020sk2lw4.html?">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Iron Man 2》</div>
            </div>
            <div class="img">
                <div class="img_3">
                    <a target="_parent" href="#">
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
                    <a target="_blank" href="https://v.qq.com/x/cover/891a0latn4c5chp/r0018t60y1z.html?">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Captain America 1:Avenger Pioneer》</div>
            </div>
            <div class="img">
                <div class="img_1_2">
                    <a target="_blank" href="https://v.qq.com/x/cover/ix5jw6tz5ghz4dc.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Captain America 2：Winter Soldier》</div>
            </div>
            <div class="img">
                <div class="img_1_3">
                    <a target="_blank" href="https://v.qq.com/x/cover/kzhcitf07bg2pxy.html">
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
                    <a target="_blank" href="https://v.qq.com/x/cover/sjfw7p2cz0ff6m9/i0018msd6dc.html?">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Thor》</div>
            </div>

            <div class="img">
                <div class="img_2_2">
                    <a target="_blank" href="https://v.qq.com/x/cover/gib6uvlt5rfudib.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Thor 2:The Dark World》</div>
            </div>

            <div class="img">
                <div class="img_2_6">
                    <a target="_blank" href="https://v.qq.com/x/cover/j5lolls4qv1mptx.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Hulk 1》</div>
            </div>

            <div class="img">
                <div class="img_2_3">
                    <a target="_blank" href="https://v.qq.com/x/cover/vwq7gmy475harwj.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Hulk 2》</div>
            </div>

            <div class="img">
                <div class="img_2_4">
                    <a target="_blank" href="https://v.qq.com/x/cover/uvl5rs2euhfgoip/h0022otg21y.html?">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Doctor Strange》</div>
            </div>
            <div class="img">
                <div class="img_2_5">
                    <a target="_blank" href="https://v.qq.com/x/cover/zl6n65vy9hgrarl/u0019j97d7o.html?">
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
                    <a target="_blank" href="https://v.qq.com/x/cover/cz2szzeahb8aj1k/z0012pc1s2j.html?">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Avengers》</div>
            </div>
            <div class="img">
                <div class="img_3_2">
                    <a target="_blank" href="https://v.qq.com/x/cover/w7ju7urc1x4w3jc/t0017mlfdg4.html?">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《The Avengers 2:Age of Ultron》</div>
            </div>
            <div class="img">
                <div class="img_3_3">
                    <a target="_parent" href="#">
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
                    <a target="_blank" href="http://www.le.com/tv/91901.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 1》</div>
            </div>
            <div class="img">
                <div class="img_4_2">
                    <a target="_blank" href="http://tv.sohu.com/s2014/shield2/">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 2》</div>
            </div>
            <div class="img">
                <div class="img_4_3">
                    <a target="_blank" href="http://www.ckck.vip/om/37002.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 3》</div>
            </div>
            <div class="img">
                <div class="img_4_4">
                    <a target="_blank" href="https://kan.jinbaozy.com/vodhtml/152.html">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 4》</div>
            </div>
            <div class="img">
                <div class="img_4_5">
                    <a target="_blank" href="http://tv.sohu.com/s2014/shield2/">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 2-1》</div>
            </div>
            <div class="img">
                <div class="img_4_6">
                    <a target="_blank" href="http://tv.sohu.com/s2014/shield2/">
                        <img src="/static/img/img-1/bofang.jpg" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 2-2》</div>
            </div>
            <div class="img">
                <div class="img_4_7">
                    <a target="_blank" href="http://www.ckck.vip/om/37002.html">
                        <img src="/static/img/img-2/bofang.png" alt="图片文本描述" width="50px" height="50px">
                    </a>
                </div>
                <div class="desc">Movie name:《Agents of S.H.I.E.L.D 3-1》</div>
            </div>
            <div class="img">
                <div class="img_4_8">
                    <a target="_blank" href="http://www.ckck.vip/om/37002.html">
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