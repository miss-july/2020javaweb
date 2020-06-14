<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/styles-merged.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/slide.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/map.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.css">
<style type="text/css">
	body {
		background: #1a57a5; /*#15B69A  #D6E6F2*/
		margin: 0px;
		color: #ffffff;
	}
	a {
		text-transform:none;
		text-decoration:none;
		color: #ffffff;
		font-weight: 900;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h3 style="text-align: center;">本地购物商城</h3>
<div style="font-size: 8.5pt; line-height: 0px;">
	<c:choose>
		<c:when test="${empty sessionScope.sessionUser}">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">亲，请登录</a> |&nbsp; 
		  	<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">免费注册</a>
		</c:when>
		<c:otherwise>
			欢迎您：${sessionScope.sessionUser.getName()}&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/CartItemServlet?oper=findCartItemByUser'/>" target="body">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/OrderServlet?oper=findOrderByUid'/>" target="body">我的订单</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/jsps/user/pwd.jsp'/>" target="body">修改密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/UserServlet?oper=userQuit'/>" target="_parent">退出</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/jsps/contact.jsp'></c:url>" target="body">联系我们</a>
		</c:otherwise>
	</c:choose>		  
</div>
  </body>
</html>
