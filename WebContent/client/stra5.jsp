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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/strategy_5.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
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
		<p class="mb30 text-black probootstrap-heading" style="font-size:36px">四会记</p>
		<p>出发日期：2015-09-10<br/>天数：1天<br/>人均费用：50元<br/>人物：一个人<br/>玩法：自由行</p>
	    <p align="left"><strong>前言</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">外面的车声轰隆隆的，响个不停，白天好不容易静下来的思绪，轰然跃于脑上。</p>
	   <p align="left"><strong>第一天</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">外面的车声轰隆隆的，响个不停，白天好不容易静下来的思绪，轰然跃于脑上。不得已，起来提笔书写。倒也是些无聊的琐事，不足繁记！<br />下午六点多到的四会，找好住处，清洗掉疲劳已然七点多八点，下到楼去，想寻些吃的，只是整个街道静悄悄的，像是睡着了似的！几经周折，终于寻至一处小卖铺，买些零碎的吃食，填补饥饿。<br />晚间无聊，想写些故事，打发寂寞，终无所获，搁笔而歇。直至睡意未解，外头又轰隆隆的吵成一片，终抵不过，记下些许杂事。2015年9月10日 四会记</p>
	  <p><img src="${pageContext.request.contextPath}/client/img/stra6.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
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