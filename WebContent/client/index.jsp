<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">  
<meta name="description" content="">
<meta name="keywords" content="">

<title>MyHometown-sihui</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/styles-merged.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/slide.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/map.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.css">

</head>
<body>
<!-- Preloader -->
<div class="preloader"></div>


<!-- Fixed navbar -->
<nav class="navbar navbar-default probootstrap-navbar">
  <div class="container">
	<div class="navbar-header">
	  <a class="navbar-brand" href="${pageContext.request.contextPath}/client/index.jsp" title="uiCookies:Frame">四会</a>
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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(${pageContext.request.contextPath}/client/img/image_1.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
  <div class="container">
	<div class="row intro-text">
	  <div class="col-md-8 col-md-offset-2 text-center">
		<h1 class="probootstrap-heading probootstrap-animate">欢迎来到我的家乡</h1>
                                <h1 class="probootstrap-heading probootstrap-animate">四    会</h1>
	  </div>
	</div>
  </div>
</section>

<section class="probootstrap-section" id="sum" data-section="sum">
  <div class="container">
	<div class="row text-center mb100">
	  <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
		<h2 class="mb30 text-black probootstrap-heading">概述</h2>
		<p>四会市位于广东中部，属珠江三角洲经济区范围。因境内四水(西江、北江、绥江和古肆水)会流之地，故名“四会”。近年来，四会在经济、文化教育等多方面发展迅速。</p>
	  </div>
	</div>
	<!-- END row -->
	<div class="row">
	  <div class="col-md-4">
		<div class="probootstrap-pricing">
		  <h2>文化教育</h2>
		  <span class="probootstrap-price"><strong>1/</strong></span>
                                  <span class="timer number count-title"  id="count-number" data-to="89" data-speed="600">0</span>
		  <p class="probootstrap-note">2017年11月14日，四会获“全国文明城市”称号。</p>
		  <ul class="probootstrap-list text-left mb50">
			<li class="probootstrap-check">在第五届89个全国文明城市名单中，四会荣幸地成为其中之一</li>
			<li class="probootstrap-check">四会已创建文化馆、博物馆、图书馆等多家文化机构</li>
			<li class="probootstrap-check">各年龄段入学率逐年上升，多家学校覆盖全市</li>
		  </ul>
		</div>
	  </div>
	  <div class="col-md-4">
		<div class="probootstrap-pricing probootstrap-popular probootstrap-shadow">
		  <h2>经济</h2>
		  <span class="timer number count-title"  id="count-number" data-to="397" data-speed="600">0</span>
                                  <span class="probootstrap-price"><strong>亿元</strong></span>
		  <p class="probootstrap-note">2018年,四会GDP达397.05亿元，居肇庆第三。</p>
		  <ul class="probootstrap-list text-left mb50">
			<li class="probootstrap-check">GDP增速为4.50%，排名肇庆市第十</li>
			<li class="probootstrap-check">2018年10月8日入选“综合实力百强县”、2018年度全国投资潜力百强县市等</li>
			<li class="probootstrap-check">2018年11月，四会被科技部确定为首批创新型县（市）</li>
		  </ul>
		</div>
	  </div>
	  <div class="col-md-4">
		<div class="probootstrap-pricing">
		  <h2>地理环境</h2>
                                  <span class="timer number count-title"  id="count-number" data-to="1260" data-speed="600">0</span>
		  <span class="probootstrap-price"><strong>km²</strong></span>
		  <p class="probootstrap-note">四会市总面积达到1260.02平方千米。</p>
		  <ul class="probootstrap-list text-left mb50">
			<li class="probootstrap-check">四会市位于广东省中西部，为平原与山区结合部，属珠江三角洲经济圈</li>
			<li class="probootstrap-check">处于西江、北江、绥江、龙江四水会流处</li>
			<li class="probootstrap-check">在这个面积上，四会居住人口约达50万人 </li>
		  </ul>
		</div>
	  </div>
	</div>
  </div>
</section>
<!-- END section -->


<section class="probootstrap-section probootstrap-bg-light" id="features" data-section="features">
  <div class="container">
	<div class="row text-center mb100">
	  <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
		<h2 class="mb30 text-black probootstrap-heading">城市名片</h2>
		<p>您好，这里是四会。早在2007年，四会就被评定为中国地名文化遗产——千年古县。据记载，四会是始建于秦代的千年来从未更名的古县，有着悠久的人文历史、独特的景观。这里流传着令人敬佩的文姑娘的故事，这里有着“玉器之乡”、“柑桔之乡”的称号。这是一个因“四水会流”而得名的地方。</p>
	  </div>
	</div>
	<!-- END row -->
	<div class="row mb100">
	  <div class="col-md-8 col-md-pull-2 probootstrap-animate">
		<p><img src="${pageContext.request.contextPath}/client/img/img_showcase_1.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
	  </div>
	  <div class="col-md-4 col-md-pull-1 probootstrap-section-heading">
		<h3 class="text-primary probootstrap-heading-2">柑桔之乡</h3>
		<p><p style="text-indent:2em;">沙糖桔，又名十月桔，因出产于沙糖故名。原产广宁、四会一带，主产地有四会、广宁、云浮、清远、德庆、南盛、郁南，是当地柑桔主栽品种之一。</p></p>
                                <p style="text-indent:2em;">四会沙糖桔在风味上、品质上，与其它地方的沙糖桔有所不同，四会沙糖桔被专家和消费者公认为最正宗、品质最佳的沙糖桔，并被《羊城晚报》誉称“一枝独秀”。这是由于四会具有良好而独特的地理、气候、土壤和水资源等农业生态区域优势，形成了四会沙糖桔最适宜的生产区域，其中沙糖桔尤以四会市黄田镇出产的为正宗，唯其鲜美而极甜，无渣，口感细腻，实为极品！四会也因此被成为“柑桔之乡”。</p>
	  </div>
	</div>
	<!-- END row -->
	<div class="row mb100">
	  <!-- <div class="col-md-8 col-md-pull-2"> -->
	  <div class="col-md-8 col-md-push-5 probootstrap-animate">
		<p><img src="${pageContext.request.contextPath}/client/img/img_showcase_2.jpg" alt="" class="img-responsive probootstrap-shadow"></p>
	  </div>
	  <!-- <div class="col-md-4 col-md-pull-1"> -->
	  <div class="col-md-4 col-md-pull-8 probootstrap-section-heading">
		<h3 class="text-primary probootstrap-heading-2">玉器之乡</h3>
		<p><p style="text-indent:2em;">四会，作为全球最大的集产供销于一体的翡翠玉器加工和销售的集散地，玉器产品畅销国内外，其中翡翠玉器摆件占国内市场份额的70%，玉器挂件和饰件占国内市场份额的60%以上，产品还出口东欧、东南亚各国以及港澳台地区。它拥有将近16万的玉器从业人员，拥有2800多家各具特色的玉器商铺及玉器加工厂等，更拥有集自然价值与艺术价值、东方传统美与时尚艺术美于一体的翡翠臻品。</p></p>
                                <p style="text-indent:2em;">四会始于清末民初的四会玉器产业已是广东四会的一大特色产业，更是促进全国珠宝玉器产业发展壮大的重要一员。2003年，四会市荣获“中国玉器之乡”称号，玉城也就成为了四会市的城市简称。</p>
 	  </div>
	</div>
	<!-- END row -->
  </div>
</section>
<!-- END section -->

<footer class="probootstrap-footer">
  <div class="container text-center">
	<div class="row">
	  <div class="col-md-12">
		<p class="probootstrap-social"><a href="#"><i class="icon-twitter"></i></a> <a href="#"><i class="icon-facebook2"></i></a> <a href="#"><i class="icon-instagram2"></i></a><a href="#"><i class="icon-linkedin"></i></a></p>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-12">点击查看更多：<a href="${pageContext.request.contextPath}/client/scenery.jsp">风土人情</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/client/food.jsp">美食</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/client/map.jsp">位置</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/client/strategy.jsp">攻略</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/jsps/main.jsp">商城</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" data-nav-section="home">点击回到页面顶部</a></div>
	</div>
  </div>
</footer>

<script src="${pageContext.request.contextPath}/client/js/scripts.min.js"></script>
<script src="${pageContext.request.contextPath}/client/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/client/js/preloader.js"></script>
<script src="${pageContext.request.contextPath}/client/js/style.js"></script>

</body>
</html>