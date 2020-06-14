<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;">  
<meta name="description" content="">
<meta name="keywords" content="">

<title>Strategy</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/styles-merged.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/slide.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/map.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.css">

</head>
<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-default probootstrap-navbar">
  <div class="container">
	<div class="navbar-header">
	  <a class="navbar-brand" href="index.jsp" title="uiCookies:Frame">四会</a>
	</div>
	<div id="navbar-collapse" class="navbar-collapse collapse">
	  <ul class="nav navbar-nav navbar-right">
		<li class="active"><a href="#" data-nav-section="home" onclick="window.location.href = '${pageContext.request.contextPath}/client/index.jsp'">首页</a></li>
		<li><a href="#" data-nav-section="sum" onclick="window.location.href = '${pageContext.request.contextPath}/client/index.jsp#sum'">概述</a></li>
                                <li><a href="#" data-nav-section="features" onclick="window.location.href = '${pageContext.request.contextPath}/client/index.jsp#features'">城市名片</a></li>
		<li ><a href="${pageContext.request.contextPath}/client/scenery.jsp" onclick="window.location.href='${pageContext.request.contextPath}/client/scenery.jsp'">风土人情</a></li>
		<li><a href="${pageContext.request.contextPath}/client/food.jsp" onclick="window.location.href='${pageContext.request.contextPath}/client/food.jsp'">美食</a></li>
                                <li><a href="${pageContext.request.contextPath}/client/map.jsp" onclick="window.location.href='${pageContext.request.contextPath}/client/map.jsp'">位置</a></li>
		<li><a href="${pageContext.request.contextPath}/client/strategy.jsp" onclick="window.location.href='${pageContext.request.contextPath}/client/strategy.jsp'">攻略</a></li>
		<li><a href="${pageContext.request.contextPath}/jsps/main.jsp" onclick="window.location.href='${pageContext.request.contextPath}/jsps/main.jsp'">商城</a></li>
	  </ul>
	</div>
  </div>
</nav>

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/strategy_1.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
  <div class="container">
	<div class="row intro-text">
	  <div class="col-md-8 col-md-offset-2 text-center">
	  </div>
	</div>
  </div>
</section>

<section class="probootstrap-section probootstrap-bg-light" id="contact" data-section="contact">
  <div class="container">
		<div class="row text-center mb100">
	  <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
		<p class="mb30 text-black probootstrap-heading" style="font-size:36px">广宁竹海大观、四会古法造纸村休闲3日游</p>
		<p>出发日期：2007/12/10<br/>天数：3天<br/>人均费用：300元<br/>人物：独自一人</p>
	    <p align="left"><strong>前言</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">说说这次旅行，（2003、12月、3天300元）</p>
	   <p align="left"><strong>第一天</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">广州坐汽车3小时前往，游览市区。晚上入住。酒店好漂亮，装修非常的豪华。房间里也整洁，各种各样的家具也很齐全。卫生间干净又宽敞。住单人房也挺舒服的，它的床垫很柔软。酒店服务员态度也很好，服装整洁，如果有什么需要也可以快速办到。</p>
	  <p><img src="${pageContext.request.contextPath}/client/img/stra1.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
	  <br />
	   <p align="left"><strong>第二天</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">游览竹海大观公园（30元），范围还算挺大，竹林也青翠茂密，一条清江流过景区，安宁幽静，空气清新，还混合着竹子的清香，风景不错。公园还在建设中，以后应该会更漂亮，但收费肯定也会提高的。最惬意的是坐在餐厅延伸到江边竹林下的竹亭里吃午饭，沐浴着和风与竹香，品饮着一杯清茶，等待着笋干烧肉煲上桌，然后慢慢品尝，美滋滋的！爽！</p>
	  <p><img src="${pageContext.request.contextPath}/client/img/stra2.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
	  <br />
	   <p align="left"><strong>第三天</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">回程经过四会市，刚好在举行柑桔节，但我满大街都找不到个小而蜜甜的正宗沙糖桔，都是那些假冒的品种占据市场，可悲！因为正宗的价格较贵，销路不好，不如价廉的冒牌货利润大。后来去了郊外的邓村参观古法造纸作坊（免费、分散在各处）。</p>
	  <p><img src="${pageContext.request.contextPath}/client/img/stra3.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
	  </div>
	</div>
	<div class="row text-center mb100">
	<a href="${pageContext.request.contextPath}/client/strategy.jsp">返回</a>
	</div>
  </div>
</section>

<script src="${pageContext.request.contextPath}/client/js/bbs.js"></script>
<script src="${pageContext.request.contextPath}/client/js/scripts.min.js"></script>
<script src="${pageContext.request.contextPath}/client/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/client/js/scenery.js"></script>
<script src='${pageContext.request.contextPath}/client/js/flickity.pkgd.js'></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script src="${pageContext.request.contextPath}/client/js/baidumap.js"></script>
<script src="${pageContext.request.contextPath}/client/js/preloader.js"></script>
<script src="${pageContext.request.contextPath}/client/js/style.js"></script>

</body>
</html>