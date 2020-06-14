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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/strategy_3.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
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
		<p class="mb30 text-black probootstrap-heading" style="font-size:36px">在四会游山水，逛六祖寺</p>
		<p>出发日期：2016/08/06<br/>天数：1天<br/>人均费用：100元<br/>人物：家庭<br/>玩法：自驾 美食 短途周末 </p>
	    <p align="left"><strong>前言</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">说说这次旅行，夏天，就是想泡在水中。听说四会鸿宾山庄不错，附近的游泳池引的山水很清凉，于是周六慕名前往，朝至夕返。从佛山南海出发，全程自驾用了约一个半小时。另外还游览了六祖寺，步行十多分钟可到。</p>
	   <p align="left"><strong>第一天</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">我们去的是鸿宾游泳场，开放到晚上10点。水确实很清凉，但是很晒；门票才10元，下午3、4点之后挺多人。附近的很多饭店都带有游泳场。<br />从游泳场出来，直走再转左，步行十多分钟可以到六祖寺。六祖寺挺大的。当时快6点了，游客少，可算是安静肃穆。6点之后，大部分“殿”都关门了，只能在外面看看，上柱香。以下是部分照片。</p>
	  <p><img src="${pageContext.request.contextPath}/client/img/stra9.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
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