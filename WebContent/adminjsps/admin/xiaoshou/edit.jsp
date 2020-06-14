<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>重置登录口令</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/input.js'></c:url>"></script>
	<script type="text/javascript">
	function checkForm() {
		if(!$("#adminpwd").val()) {
			alert("旧密码不能为空！");
			return false;
		}
		if(!$("#adminpwd2").val()) {
			alert("新密码不能为空！");
			return false;
		}
		return true;
	}
	</script>
<style type="text/css">
	body {background: rgb(254,238,189);}
</style>
  </head>
  
  <body>
    <h3>重置销售人员登录口令</h3>
    <h1></h1>
    <p style="font-weight: 900; color: red">${msg }</p>
    <form action="<c:url value='/AdminServlet'/>" method="post" onsubmit="return checkForm()">
    	<input type="hidden" name="oper" value="resetxiaoshou"/>
    	id:<input type="text" name="id" id="id"/><br/>
    	用户名：<input type="text" name="adminname" id="adminname"/><br/>
    	旧密码：<input type="text" name="adminpwd" id="adminpwd"/><br/>
                        新密码：<input type="text" name="adminpwd2" id="adminpwd2"/><br/>
    	<input type="submit" value="重置"/>
    	<input type="button" value="返回" onclick="history.go(-1)"/>
    </form>
  </body>
</html>
