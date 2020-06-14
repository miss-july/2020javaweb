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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/image_2.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
  <div class="container">
	<div class="row intro-text">
	  <div class="col-md-8 col-md-offset-2 text-center">
		<h1 class="probootstrap-heading probootstrap-animate">攻&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;略</h1>
                                <h1 class="probootstrap-heading probootstrap-animate">分享游玩的欢乐</h1>
	  </div>
	</div>
  </div>
</section>

<section class="probootstrap-section probootstrap-bg-light" id="contact" data-section="contact">
  <div class="container">
	<div class="row">
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/strategy_1.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <p class="mb0"><a href="#" onclick="window.location.href = '${pageContext.request.contextPath}/client/stra1.jsp'">广宁竹海大观、四会古法造纸村休闲3日游</a></p>
		  <blockquote>
			<p style="font-size:13px">出发日期：2007/12/10<br/>天数：3天<br/>人均费用：300元<br/>人物：独自一人 </p>
		  </blockquote>
		  <p class="mb0" style="font-size:12px">&mdash; 作者说：竹林也青翠茂密，一条清江流过景区，安宁幽静，空气清新，还混合着竹子的清香，风景不错。</p>
		</div>
	  </div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/strategy_2.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <p class="mb0"><a href="#" onclick="window.location.href = '${pageContext.request.contextPath}/client/stra2.jsp'">七星岩—鼎湖山—七星岩牌坊—紫云谷—四会瀑布奇石景</a></p>
		  <blockquote>
			<p style="font-size:13px">出发日期：2019/10/01<br/>天数：3天<br/>人均费用：800元<br/>人物：闺蜜<br/>玩法：自驾 徒步 国庆 </p>
		  </blockquote>
		  <p class="mb0" style="font-size:12px">&mdash; 作者说：十分愉快！</p>
		</div>
	  </div>
	  <div class="clearfix visible-sm-block"></div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/strategy_3.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		 <p class="mb0"><a href="#" onclick="window.location.href = '${pageContext.request.contextPath}/client/stra3.jsp'">在四会游山水，逛六祖寺</a></p>
		  <blockquote>
			<p style="font-size:13px">出发日期：2016/08/06<br/>天数：1天<br/>人均费用：100元<br/>人物：家庭<br/>玩法：自驾 美食 短途周末 </p>
		  </blockquote>
		  <p class="mb0" style="font-size:12px">&mdash; 作者说：夏天，就是想泡在水中。听说四会鸿宾山庄不错，附近的游泳池引的山水很清凉，于是周六慕名前往，朝至夕返。</p>
		</div>
	  </div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/strategy_4.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star-outlined"></i>
		  </p>
		  <p class="mb0"><a href="#" onclick="window.location.href = '${pageContext.request.contextPath}/client/stra4.jsp'">奇石河游</a></p>
		  <blockquote>
			<p style="font-size:13px">出发日期：2016/08/21<br/>天数：2天<br/>人均费用：60元<br/>人物：闺蜜<br/>玩法：短途周末 美食 购物 </p>
		  </blockquote>
		  <p class="mb0" style="font-size:12px">&mdash; 作者说：旅行非常的成功，瀑布真的真的很漂亮哦！</p>
		</div>
	  </div>
	  <div class="clearfix visible-sm-block"></div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/strategy_5.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		  <p class="mb0"><a href="#" onclick="window.location.href = '${pageContext.request.contextPath}/client/stra5.jsp'">四会记</a></p>
		  <blockquote>
			<p style="font-size:13px">出发日期：2015-09-10<br/>天数：1天<br/>人均费用：50元<br/>人物：一个人<br/>玩法：自由行 </p>
		  </blockquote>
		  <p class="mb0" style="font-size:12px">&mdash; 作者说：外面的车声轰隆隆的，响个不停，白天好不容易静下来的思绪，轰然跃于脑上。</p>
		</div>
	  </div>
	  <div class="col-md-4 col-sm-6 col-xs-12">
		<div class="probootstrap-testimonial">
		  <p><img src="img/strategy_6.jpg" class="img-responsive img-circle probootstrap-author-photo" alt=""></p>
		  <p class="mb10 probootstrap-rate">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		  </p>
		   <p class="mb0"><a href="#" onclick="window.location.href = '${pageContext.request.contextPath}/client/stra6.jsp'">大斑石雄伟、十里画廊迷人、燕山原生态、贞山清静。封开怀集四会2天自驾游</a></p>
		  <blockquote>
			<p style="font-size:13px">出发日期：2017/10/05<br/>天数：2天<br/>人均费用：300元<br/>人物：家庭<br/>玩法：自驾 美食 </p>
		  </blockquote>
		  <p class="mb0" style="font-size:12px">&mdash; 作者说：简单游玩，享受美食，要求不要太高，就会有意外惊喜。</p>
		</div>
	  </div>
	</div>
	<div class="row">
	  <h4 align="center">共5页 
      <input type="text" value="1" name="pageNos" size="1">页
      <input type="submit" value="go">
    </div>
    <div class="row">
    <p><br /></p>
    </div>
    <div class="row">
    <p><br /></p>
    </div>
	<div class="row">
	  <div class="col-md-6">
		<form action="" class="probootstrap-form">
		  <h2 class="text-black mt0">问答</h2>
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
		  <li><input name="matter" id="1" type="checkbox" >Tue Jun 25 2019 23:20:26 GMT+0800 (中国标准时间) , user 122 left a message: 请问四会最好吃的茶油鸡在哪？</li>
		  <li><input name="matter" id="2" type="checkbox" >Tue Jun 25 2019 23:25:36 GMT+0800 (中国标准时间) , user 123 left a message: 回答楼上122的，江陆茶油鸡最爱！</li>
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