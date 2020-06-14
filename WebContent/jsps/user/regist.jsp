<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/regist.css'></c:url>" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/styles-merged.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/slide.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/map.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.css">
<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'></c:url>"></script>
<script type="text/javascript" src="<c:url value='/jsps/js/user/regist.js'></c:url>"></script>
<script type="text/javascript" src="<c:url value='/js/input.js'></c:url>"></script>

</head>
<body>
<!-- Fixed navbar -->
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
	<div id="divMain">
		<div id="divTitle">
			<span id="spanTitle">新用户注册</span>
		</div>
		<div id="divBody">
		<form action="<c:url value='/UserServlet'></c:url>" method="post" id="registForm">
			<input type="hidden" name="oper" value="regist" />
			<table id="tableForm">
			  <tr>
			    <td class="tdText">用户名：</td>
			    <td class="tdInput"><input class="inputClass" type="text" name="loginname" id="loginname" autocomplete="off" value="${form.getName()}"></td>
			    <td class="tdError"><label class="errorClass" id="loginnameError">${errors.loginname}</label></td>
			  </tr>
			  <tr>
			    <td class="tdText">登录密码：</td>
			    <td class="tdInput"><input class="inputClass" type="password" name="loginpwd"  id="loginpwd" value="${form.getPwd()}"/></td>
			    <td class="tdError"><label class="errorClass" id="loginpwdError">${errors.pwd}</label></td>
			  </tr>
			  <tr>
			    <td class="tdText">确认密码：</td>
			    <td class="tdInput"><input class="inputClass" type="password" name="loginpwd2" id="loginpwd2" value="${form.getLoginPwd2()}"/></td>
			    <td class="tdError"><label class="errorClass" id="loginpwd2Error">${errors.pwd2}</label></td>
			  </tr>
			  <tr>
			    <td class="tdText">Email：</td>
			    <td class="tdInput"><input class="inputClass" type="text" name="email" id="email" autocomplete="off" value="${form.getEmail()}" /></td>
			    <td class="tdError"><label class="errorClass" id="emailError">${errors.email}</label></td>
			  </tr>		 
			  <tr>
			    <td class="tdText">验证码：</td>
			    <td class="tdInput"><input class="inputClass" type="text" name="verifyCode" id="verifyCode" autocomplete="off" /></td>
			    <td class="tdError"><label class="errorClass" id="verifyCodeError">${errors.verifyCode}</label></td>
			  </tr>
			  <tr>
			    <td class="tdText"></td>
			    <td class="tdInput"><div  id="divVerifyCode"><img id="imgVerifyCode" alt="验证码" src="<c:url value='/VerifyCodeServlet'></c:url>"></div></td>
			    <td class="tdError"><label><a href="javascript:_hyz()">换一张</a></label></td>
			  </tr>
			  <tr>
			    <td class="tdText"></td>
			    <td class="tdInput"><input type="image" alt="注册" src="<c:url value='/images/regist3.jpg'></c:url>" id="submitBtn" /></td>
			    <td class="tdError"><a href="<c:url value='/jsps/user/login.jsp'></c:url>">已有账号？立马登录！</a></td>
			  </tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>