<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/adminjsps/admin/css/category/list.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/css.css'/>">
  </head>
  
  <body>
  	<div style="text-align: center;"><span style="text-align: center;color:red;">${msg }</span></div>
    <h2 style="text-align: center;">用户列表</h2>
     <table align="center" border="1" cellpadding="0" cellspacing="0">
       <tr class="trTitle">
            <th>用户id</th>
            <th>姓名</th>
            <th>密码</th>
            <th>邮箱</th>
            <th>登录时间</th>
            <th>退出时间</th>
            <th>ip</th>
            <th>停留时长（秒）</th>
        </tr>
        <c:forEach items="${userList}" var="userList">
           <tr class="trOneLevel">
                <td>${userList.id}</td>
                <td>${userList.name}</td>
                <td>${userList.pwd}</td>
                <td>${userList.email}</td>
                <td>${userList.logintime}</td>
                <td>${userList.exittime}</td>
                <td>${userList.ip}</td>
                <td>${userList.staytime}</td>
            </tr>
        </c:forEach>

    </table>
  </body>
</html>