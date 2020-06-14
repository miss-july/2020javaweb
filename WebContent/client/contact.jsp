<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;">  
<meta name="description" content="">
<meta name="keywords" content="">

<title>Contact</title>

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
		<li><a href="${pageContext.request.contextPath}/client/contact.jsp" onclick="window.location.href='${pageContext.request.contextPath}/client/contact.jsp'">论坛</a></li>
		<li><a href="${pageContext.request.contextPath}/jsps/main.jsp" onclick="window.location.href='${pageContext.request.contextPath}/jsps/main.jsp'">商城</a></li>
	  </ul>
	</div>
  </div>
</nav>

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/image_2.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
  <div class="container">
	<div class="row intro-text">
	  <div class="col-md-8 col-md-offset-2 text-center">
		<h1 class="probootstrap-heading probootstrap-animate">论&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;坛</h1>
                                <h1 class="probootstrap-heading probootstrap-animate">请留下你想对四会说的话吧</h1>
	  </div>
	</div>
  </div>
</section>

<section class="probootstrap-section probootstrap-bg-light" id="contact" data-section="contact">
  <div class="container">
	<div class="row">
	  <div class="col-md-6">
		<form action="" class="probootstrap-form">
		  <h2 class="text-black mt0">论坛</h2>
                                  <div class="form-group">
			<textarea id="user" class="form-control" placeholder="Write Your Name"></textarea>
                                                <br/>
			<textarea id="addThing" class="form-control" cols="30" rows="10" placeholder="Write a Message"></textarea>
		  </div>
		  <div class="form-group">
			<input id="addButton" type="button" class="btn btn-primary" value="add" onclick="addtolist()">
                                                <input id="selectButton" type="button" class="btn btn-primary" value="select all" onclick="selectall()">
                                   </div>
                                   <div class="form-group">
                                                <input id="deselectButton" type="button" class="btn btn-primary" value="deselect all" onclick="deselect()">
                                                <input id="removeButton" type="button" class="btn btn-primary" value="remove" onclick="remove()">
		  </div>
		</form>
	  </div>
	  <div class="col-md-3 col-md-push-1">
		<ul  id="ullist" class="probootstrap-contact-details">
		  <li><input name="matter" id="1" type="checkbox" >Tue Jun 25 2019 23:20:26 GMT+0800 (中国标准时间) , user 122 left a message: 2333</li>
		  <li><input name="matter" id="2" type="checkbox" >Tue Jun 25 2019 23:25:36 GMT+0800 (中国标准时间) , user 123 left a message: 哈哈哈</li>
		</ul>
	  </div>
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