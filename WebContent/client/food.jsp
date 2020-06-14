<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; ">  

<title>Food</title>

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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/image_4.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
  <div class="container">
	<div class="row intro-text">
	  <div class="col-md-8 col-md-offset-2 text-center">
		<h1 class="probootstrap-heading probootstrap-animate">四会的美食，</h1>
                                <h1 class="probootstrap-heading probootstrap-animate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你爱上了吗？</h1>
	  </div>
	</div>
  </div>
</section>

 <section class="probootstrap-section probootstrap-bg-light" id="food" data-section="food">
  <div class="container">
	<div class="row text-center mb100">
	  <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
		<h2 class="mb30 text-black probootstrap-heading">美食</h2>
		<p>每个城市都有它的特色美食，这些美食都是来自平凡之手，它是这个城市的一种文化、记忆。四会也不例外。四会面积广阔，几乎每个镇街、每一条村落都有自己的代表美食，而且更伴随着岁月留存下来各种独特美食。这些美食都是百吃不腻，吃了还想吃。有人如此说：爱四会，从美食开始。</p>
	  </div>
	</div>
	<!-- END row -->
	<div class="row">
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/food_1.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <blockquote>
			<p style="font-size:13px">到了四会不可不试的美食就是是茶油鸡 ,茶油鸡是鸡中上品, 野山茶油是中国特有的珍稀食用油,具有特殊的油香。它产量极少，是茶油中的珍品。用茶油烹饪的茶油鸡具有鲜香、嫩滑、无腥味的特点是四会的一大名吃。</p>
		  </blockquote>
		  <p class="mb0">&mdash; 茶油鸡</p>
		</div>
	  </div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/food_2.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <blockquote>
			<p style="font-size:13px">说起云吞面，它是广东省汉族特色小吃，属于粤菜系。而在四会威整镇，云吞面的味道也是一流的，可谓是众多地区中云吞面的佼佼者。富有嚼劲的竹升面，超薄超滑的云吞皮包裹着新鲜的猪肉和小虾米，一口一颗，最后喝上一口香浓的骨头汤，简直是完美啊！ </p>
		  </blockquote>
		  <p class="mb0">&mdash; 威井云吞面</p>
		</div>
	  </div>
	  <div class="clearfix visible-sm-block"></div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/food_3.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <blockquote>
			<p style="font-size:13px">江谷窝粉的名称是由它的制作工具窝篮而来。制作方法是将米浆浇在窝篮上，拿起窝篮逆时针转上两圈，将米浆平铺开来，再放入蒸炉里快速蒸熟。吃时可先将其晾凉、切碎，加入自己喜欢的调料。其特点是米香味浓郁，吃起来爽口弹牙，一点都不粘牙，柔韧性十足而又嫩滑。</p>
		  </blockquote>
		  <p class="mb0">&mdash; 江谷窝粉</p>
		</div>
	  </div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/food_4.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star-outlined"></i>
		  </p>
		  <blockquote>
			<p style="font-size:13px">脆皮烧肉是广东传统名菜，是经典的广东烧腊之一，以其肉松化、香脆，其口感富有层次感，被称为一绝，而我们四会龙湾烧肉远近驰名。正宗的龙湾烧肉都经过选取上等好猪采用传统的火炉烧制约三小时方可出炉。美味的龙湾烧肉不仅吸引本地消费者购买，就连广州、佛山、东莞等地的食客也经常到当地预订。</p>
		  </blockquote>
		  <p class="mb0">&mdash; 龙湾烧肉</p>
		</div>
	  </div>
	  <div class="clearfix visible-sm-block"></div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/food_5.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <blockquote>
			<p style="font-size:13px">无笃石螺又称“仙螺”，外形似普通石螺，但较细长，颜色青灰较普通石螺为深，最大特点是螺壳尖端像是被人铰去后用水泥堵上，以其口感韧肖、肉味鲜美而为各地食客所称道，有“不尝仙螺不算到了四会”之说。</p>
		  </blockquote>
		  <p class="mb0">&mdash; 无笃石螺</p>
		</div>
	  </div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/food_6.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <blockquote>
			<p style="font-size:13px">四会濑粉，俗称粉仔，起源于清塘街，四会人喜爱的早餐。一般做法是先用粘米粉加清水搅拌成糊状，然后用特制的濑粉钵盛上，通过钵底几个小孔拉成面条状落入开水锅里，煮熟后用筛子捞起泡入冷水即可。食用时，用猛火起锅，加入适量上汤，再放濑粉，最后配以各种佐料，鲜香美味的濑粉即可出锅。 </p>
		  </blockquote>
		  <p class="mb0">&mdash; 四会濑粉</p>
		</div>
	  </div>

	</div>
  </div>
</section>

<script src="${pageContext.request.contextPath}/client/js/scripts.min.js"></script>
<script src="${pageContext.request.contextPath}/client/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/client/js/style.js"></script>

</body>
</html>