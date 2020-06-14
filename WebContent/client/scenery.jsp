<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; ">  

<title>Scenery</title>

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

<section class="probootstrap-hero prohttp://localhost/probootstrap/frame/#featuresbootstrap-slant" style="background-image: url(img/image_3.jpg);" id="home" data-section="home" data-stellar-background-ratio="0.5">
  <div class="container">
	<div class="row intro-text">
	  <div class="col-md-8 col-md-offset-2 text-center">
		<h1 class="probootstrap-heading probootstrap-animate">四会的风土人情</h1>
                                <h1 class="probootstrap-heading probootstrap-animate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总是会令我着迷</h1>
	  </div>
	</div>
  </div>
</section>

<section class="probootstrap-section" id="scenery" data-section="scenery">
  <div class="container">
<div class="row text-center mb100">
	  <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
		<h2 class="mb30 text-black probootstrap-heading">风土人情 </h2>
		<p>四会也拥有着众多令人念念不忘的美丽景点，既有风光秀丽的贞山风景区，又有充满刺激的奇石河景区，更有历经百年时光传承古法造纸的扶利村等。在这里，我们不仅能体会到风景如画的山村景色，更有传承历史的文化古迹，吸引着不少国内外游客前来游览。</p>
	  </div>
	</div>
	<!-- END row -->
	<div class="row">
	  <div class="col-md-8 col-md-offset-2">
		<div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
		 <div class="gallery">
    <div class="gallery-cell">
        <img src="img/scenery_1.jpg" alt="" />
        <figcaption class="mask">
            <h3>贞山</h3>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贞山位于广东肇庆四会的西南面3公里处，海拔649米，山座南向北，冈献层叠，曲涧澄潭，翠色岚光，蔚然深秀。当雨过天晴，遍山春翠欲滴，景色迷人。明朝已赋予“贞山雨雾”雅称。贞山溪涧有平尾仙螺，俗称“无笃石螺”；有半边褐色仙鱼，俗称“煎鲫鱼”。山上有麻蓝、水碗、梳妆镜等幻形石，亦传为仙迹。 </p>
        </figcaption>
    </div>
    <div class="gallery-cell">
        <img src="img/scenery_2.jpg" alt="" />
        <figcaption class="mask">
        <h3>六祖寺</h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四会六祖寺座落在贞山区内，建筑群颇具气势。每年的水利法会吸引成千上万的信众。我国佛教禅宗六祖惠能（公元638年—713年）曾因避难藏身于四会龙甫镇营脚村扶卢山达15年之久，六祖姓卢，当地村民为纪念他，故以山为“扶卢”名，山上有“六祖池”，山下建有“六祖庵”，该庵为唐代所建，清嘉庆十四年重修，改为六祖寺。</p>
        </figcaption>
    </div>	
 <div class="gallery-cell">
        <img src="img/scenery_3.jpg" alt="" />
        <figcaption class="mask">
        <h3>扶利村</h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贞山街道白龙村委扶利村是中国民间古法造纸第一村，扶利村人依然沿用着1900多年前蔡伦发明的造纸手法，村中男女老少都是造纸能手。如今，自推进乡风文明建设以来，扶利村充分发挥其优势，以古法造纸为载体，努力打造该村成为古法造纸主题文化古村，传承和弘扬工匠精神的同时亦吸引着不少游客前来参观。</p>
        </figcaption>
    </div>		
<div class="gallery-cell">
        <img src="img/scenery_4.jpg" alt="" />
        <figcaption class="mask">
        <h3>奇石河</h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里有着广东省内最大最具特色的天然瀑布——银龙大瀑布。穿过隧道，溯溪而上，沿着曲径通函的石级路，清爽的空气扑面而来，让你完全没有感觉爬山疲倦，坐在听泉亭其中，只听水响不见水。站在观瀑桥，一幅巨大的天纱帐便映入眼帘，雄伟壮观，让人惊叹不止。你完全有理由怀疑李白诗句“飞流直下三千尺，疑是银河落九天”是出自此情此景。</p>
        </figcaption>
    </div>	
<div class="gallery-cell">
        <img src="img/scenery_5.jpg" alt="" />
        <figcaption class="mask">
        <h3>绿海生态园</h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;绿海生态园位于四会市下茆镇，其占地面积达到1800亩，环境优美，内有大面积七彩花田，种植的花卉品种包括格桑花、一品红、桃花等，观赏性极佳，让游客切身感受到美丽的田园风光、体验淳朴的农村生活、亲近大自然，享受健康的生活。  </p>
        </figcaption>
    </div>			  
                     </div>
	  </div>
                </div>
            </div>
  </div>
</section>

<script src="${pageContext.request.contextPath}/client/js/scripts.min.js"></script>
<script src="${pageContext.request.contextPath}/client/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/client/js/scenery.js"></script>
<script src='${pageContext.request.contextPath}/client/js/flickity.pkgd.js'></script>
<script src="${pageContext.request.contextPath}/client/js/style.js"></script>

</body>
</html>