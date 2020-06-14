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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/strategy_4.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
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
		<p class="mb30 text-black probootstrap-heading" style="font-size:36px">奇石河游</p>
		<p>出发日期：2016/08/21<br/>天数：2天<br/>人均费用：60元<br/>人物：闺蜜<br/>玩法：短途周末 美食 购物 </p>
	    <p align="left"><strong>前言</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">说说这次旅行,旅行前在网上搜的：奇石河风景区，位于四会市北部的威整镇，地处四会、广宁、清远三地交界处，全景区总面积约8平方公里，享受有“广东九寨沟”之美誉。景区以独特的自然景观和优雅的生态环境而著称，而景区内森林繁茂、瀑布飞流、奇石遍布。集休闲度假、观光旅游、乡村风情体验、农家风味佳肴于一体，被誉为省内最具特色的生态旅游度假区。旅行非常的成功，瀑布真的真的很漂亮哦！我之前去过几次海边，但是相比之下我还是更喜欢瀑布，因为海水是咸的嘛！来到奇石河就像与大自然容为一体，可以看到银龙大瀑布，还有可以感受到农家风味的菜式，简直太棒了👏👏</p>
	   <p align="left"><strong>第一天</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">走了许久，终于见到银龙大瀑布了，瀑布非常的壮观。在离瀑布十米远的地方也有水花飞过来。瀑布扑面而来，让我感觉很梦幻，而且那些水花在飘着，很快浇湿了我们的衣服，此时此景让我有了一个幻想，在这里求婚一定会答应的！瀑布下面有游泳池，较深的泳池里有许多游客在冲水，因为上面有瀑布冲下来，那的水流非常的急和非常的冷，下面的泳池是大瀑布水慢慢留下来的，里面有好多小朋友在玩水，因为那里的水很浅。也有一些女的在哪里玩乐。</p>
	  <p><img src="${pageContext.request.contextPath}/client/img/stra7.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
	  <br />
	   <p align="left"><strong>第二天</strong></p>
	  <hr style="height:1px;" color="#333366"/>
	  <p align="left">风景美丽，像是回归大自然。享受农家乐。</p>
	  <p><img src="${pageContext.request.contextPath}/client/img/stra8.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
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