<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; ">  

<title>Map</title>

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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/image_5.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
  <div class="container">
	<div class="row intro-text">
	  <div class="col-md-8 col-md-offset-2 text-center">
		<h1 class="probootstrap-heading probootstrap-animate">四会</h1>
                                <h1 class="probootstrap-heading probootstrap-animate">就在四水会流之处</h1>
	  </div>
	</div>
  </div>
</section>

<section class="probootstrap-section" id="map" data-section="map">
<div class="container">
	<div class="row text-center mb100">
	  <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
		<h2 class="mb30 text-black probootstrap-heading">位置</h2>
		<p>四会市因境内四水（西江、北江、绥江和龙江）会流之地，故名“四会”。位于广东省中部、肇庆以东，珠江三角洲西北边缘，地处西、北、绥三江下游，北回归线将全境南北一分为二。东与佛山市三水区交界，南与肇庆市鼎湖区相连，西北与广宁县接壤，东北与清远市清新区毗邻，属珠江三角洲经济区范围。</p>
	  </div>
	</div>
                <div class="row">
                   <div class="col-md-8 col-md-offset-2">
             <div id="baiduMap" style="width:100%;height:500px"></div>
</div></div></div>
</section>
<!-- END section -->

<script src="${pageContext.request.contextPath}/client/js/scripts.min.js"></script>
<script src="${pageContext.request.contextPath}/client/js/custom.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script src="${pageContext.request.contextPath}/client/js/baidumap.js"></script>
<script src="${pageContext.request.contextPath}/client/js/style.js"></script>

</body>
</html>