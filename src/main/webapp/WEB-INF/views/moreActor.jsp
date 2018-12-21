<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>moreActor</title>
    <link href="/static/css/homepage/login.css" type="text/css" rel="stylesheet">
    <link href="/static/css/homepage/dianzi.css" type="text/css" rel="stylesheet">
    <link href="/static/css/homepage/homepageHeader.css" type="text/css" rel="stylesheet">
    <link href="/static/css/nav/navbar.css" type="text/css" rel="stylesheet">
    <link href="/static/css/middle/middle.css" type="text/css" rel="stylesheet">
    <link href="/static/css/homepage/more.css" type="text/css" rel="stylesheet">
    <link href="/static/css/homepage/down.css" type="text/css" rel="stylesheet">
    <link href="/static/css/homepage/footer.css" type="text/css" rel="stylesheet">
    <script src="/static/js/login.js" type="text/javascript" > </script>
    <style>
        body {
            margin:0;
        }
    </style>
</head>
<body>
<div class="navbar">
    <a href="/showMain.do" style="float: left"><img src="/static/img/img-2/goBack_1.png"> go-back</a>
    <a href="/showRegister.do" style="float: right">register</a>
    <!--主体-->
    <a href="javascript:void(0)" id="btn_showlogin" style="text-decoration: none;float: right">login</a>
</div>
<!-- 弹出登录小窗口 -->
<div class="mini_login" id="mini_login" >
    <!-- 表单 -->
    <form action="" method="post">
        <div class="item firstLine" id="firstLine">
            <span class="login_title">login please!</span>
            <span class="login_close" id="close_minilogin">X</span>
        </div>
        <div class="item">
            <label>username</label>
            <input type="text" name="uname" />
        </div>
        <div class="item">
            <label>password</label>
            <input type="password" name="upwd" />
        </div>
        <div class="item">
            <a href="javascript:void(0)" class="btn_login" onclick="" style="text-decoration: none">login</a>
        </div>
    </form>
</div>
<!-- 遮罩层 -->
<div class="cover"></div>
<div class="middle_1">

    <div class="introduct"><b><i>Introducing actors</i></b></div>
    <div class="loction">
        <div class="img">
            <div class="video1">
                <a target="_blank" href="../img-1/heiguafu.jpg">
                    <img src="../img-1/heiguafu0.jpg" alt="黑寡妇" width="300" height="200">
                </a></div>
            <div class="desc">斯嘉丽·约翰逊（Scarlett Johansson），1984年11月22日生于纽约.<br>
                饰演的角色介绍：<br>
                本名娜塔莎·罗曼诺夫，原是秘密组织神盾局的一名俄国籍女探员，体态婀娜面
                容姣好，头脑清晰行动敏捷，身手不凡强硬凶狠，是神盾局的精英特工。
                娜塔莎最初被安排在斯塔克工业内部作为卧底，负责监视钢铁侠托尼·
                斯塔克，后正式加入复仇者联盟。</div>
        </div>

        <div class="img">
            <a target="_blank" href="../img-1/gangtiexia1.jpg">
                <img src="/static/img/img-1/gangtiexia0.jpg" alt="钢铁侠" width="300" height="200">
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
            <a target="_blank" href="../img-1/meiguoduizhang.jpg">
                <img src="/static/img/img-1/meiguoduizhang0.jpg" alt="美国队长" width="300" height="200">
            </a>
            <div class="desc">克里斯·埃文斯（Chris Evans），1981年6月13日出生于马萨诸塞州波士顿，美国演员、导演。<br>
                饰演的角色介绍：<br>
                史蒂夫·罗杰斯克里斯·埃文斯饰演身体孱弱的史蒂夫·罗杰斯经过一项秘密的超级士兵研究计划改造，
                成为了强大的超级英雄美国队长，他在二战中的英勇表现让他成为传奇人物。他用国名当做头衔，制服是红白蓝加
                上明亮的星星；一面同样颜色的盾牌就是他的武器。他的诞生，正是源于爱国主义的目的,是绝对正义的化身。
            </div>
        </div>

        <div class="img">
            <a target="_blank" href="../img-1/lvjuren.jpg">
                <img src="/static/img/img-1/lvjuren0.jpg" alt="绿巨人" width="300" height="200">
            </a>
            <div class="desc">马克·鲁法洛（Mark Alan Ruffalo），1967年11月22日出生于美国威斯康辛州基诺沙，美国影视演员、制片人。<br>
                饰演的角色介绍：<br>
                本名罗伯特·布鲁斯·班纳（Robert Bruce Banner），是世界著名的物理学家，在一次
                意外中被自己制造出的伽玛炸弹的放射线大量辐射，身体产生异变，后
                每当他情绪激动心跳加速的时候就会变成名为浩克的绿色怪物。由于变身后往往不受
                控制，所以为了不伤害身边的人，班纳游走于世界各地寻找控制愤怒的方法.
            </div>
        </div>
        <div class="img">
            <a target="_blank" href="../img-1/qiyiboshi1.jpg">
                <img src="/static/img/img-1/qiyiboshi.jpg" alt="奇异博士" width="300" height="200">
            </a>
            <div class="desc">本尼迪克特·康伯巴奇（Benedict Cumberbatch），1976年7月19日出生于英国伦敦，英国演员、制片人。<br>
                饰演的角色介绍：<br>
                原本是一位知名的外科医生，凭借高超的医术被外界誉为上帝对手
                术界的恩赐，但好景不长，在一场意外的车祸断送了他的从医生涯
                ，赖以生存的双手粉碎性骨折，再也无法拿起手术刀。他走遍世界
                ，只为了寻求治愈，最终，他在喜马拉雅山遇见了古一，被古一收
                为弟子，他开始学习神秘的咒术与魔法，成为一代至尊大法师—奇异博士。

            </div>
        </div>
        <div class="img">
            <a target="_blank" href="../img-1/zhizhuxia1.jpg">
                <img src="/static/img/img-1/zhizhuxia.jpg" alt="蜘蛛侠" width="300" height="200">
            </a>
            <div class="desc">汤姆·赫兰德（Tom Holland），1996年6月1日出生于英国萨里镇，英国男演员。<br>
                饰演的角色介绍：<br>
                彼得·帕克在超级英雄身份与高中生活之间面临的抉择。15岁的高中生，在
                被受放射性感染的蜘蛛咬伤后，便获得了蜘蛛般的能力。在恩师托尼·斯塔
                克的协助下，试图以纽约市皇后区的一名普通高中生和打击犯罪的超级英雄
                蜘蛛侠间保持平衡.
            </div>
        </div>
        <div class="img">
            <a target="_blank" href="../img-1/jinganglang1.jpg">
                <img src="/static/img/img-1/jinganglang.jpg" alt="金刚狼" width="300" height="200">
            </a>
            <div class="desc">休·杰克曼（Hugh Jackman），1968年10月12日出生于澳大利亚悉尼，澳大利亚电影演员。<br>
                饰演的角色介绍：<br>
                又名詹姆斯·豪利特（James Howlett），十九世纪出生于加拿大的阿尔伯塔
                省，自从儿时发现自己的生父杀死自己的养父后，罗根的变种人能力便开始
                显现出来，他拥有延缓衰老和极强的自愈能力，双手还可以伸出利爪。
                这使得罗根正式成为金刚狼（Wolverine），之后他加入了X战警和复仇者联盟等超级英雄团队。

            </div>
        </div>
        <div class="img">
            <a target="_blank" href="/static/img/img-1/heibao1.jpg">
                <img src="/static/img/img-1/heibao.jpg" alt="黑豹" width="300" height="200">
            </a>
            <div class="desc">查德维克·博斯曼（Chadwick Boseman），1977年11月29日出生于美国纽约布鲁克林，美国影视演员。<br>
                饰演的角色介绍：<br>
                黑豹：有着超人的智慧和领袖气质，而且格斗技术超高。在自己的
                国家瓦坎达，他面临一切内忧外患，作为年轻的王位继承人，
                各方势力对于王位的觊觎，外界对瓦坎达振金矿的虎视眈眈，
                都是他急需解决的问题，必须背负起家庭和国家的重任。

            </div>
        </div>

        <div class="img">
            <a target="_blank" href="../img-1/leishen1.jpg">
                <img src="/static/img/img-1/leishen.jpg" alt="雷神" width="300" height="200">
            </a>
            <div class="desc">克里斯·海姆斯沃斯（Chris Hemsworth），1983年8月11日在墨尔本出生，澳大利亚演员.<br>
                饰演的角色介绍：<br>
                北欧神话里挥舞着大铁锤、掌控着风暴和闪电的天神，还能用铁锤打
                开时空之门。暴脾气的他因为自大鲁莽的行为重新点燃了一场古老战
                争的战火，之后被贬到凡间被迫与人类一起生活。在地球上的日子，
                “雷神”逐渐学会了如何做一个真正的英雄。

            </div>
        </div>
        <div class="img">
            <a target="_blank" href="../img-1/luoji1.jpg">
                <img src="/static/img/img-1/luoji.jpg" alt="恶神" width="300" height="200">
            </a>
            <div class="desc">汤姆·希德勒斯顿（Tom Hiddleston）,1981年2月9日生于英国伦敦，英国电影、电视广播及舞台剧演员。<br>
                饰演的角色介绍：<br>
                本片大反派，他是“冰巨人”（Frost giants）的国王Laufey的儿子
                ，由于个头和巨人同类比起来太小，一直被父亲藏着不示人。“
                冰巨人”力大无比，但害怕炎热，是天界奥丁之城阿斯加德（Asg
                ard）的夙敌，奥丁神在战斗中杀死了他们的国王Laufey，之后收
                养了“洛基”。在北欧神话中“洛基”是火与恶之神。

            </div>
        </div>

    </div>
    <div class="introduct_1"><b><i>Not more</i></b></div>
</div>
<div class="footer">
    <h5 align="center"><br><br><br>Copyright © 2018 Qunar.com Inc. All Rights Reserved.<br>
        Contact mailbox:2574503276@qq.com<br>Contact address:Yantai University<br>Contact number:17865569900</h5>
</div>

</body>
</html>