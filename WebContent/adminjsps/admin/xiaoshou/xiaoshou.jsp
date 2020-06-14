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
    <h2 style="text-align: center;">销售人员列表</h2>
    
     <table align="center" border="1" cellpadding="0" cellspacing="0">
     <caption class="captionAddOneLevel">
    	  <a href="<c:url value='/adminjsps/admin/xiaoshou/add.jsp'/>">添加销售人员</a>
    	</caption>
       <tr class="trTitle">
            <th>销售人员id</th>
            <th>姓名</th>
            <th>密码</th>
            <th>登录时间</th>
            <th>退出时间</th>
            <th>ip</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${adminList}" var="adminList">
           <tr class="trOneLevel">
                <td>${adminList.adminId}</td>
                <td>${adminList.adminName}</td>
                <td>${adminList.adminPwd}</td>
                <td>${adminList.logintime}</td>
                <td>${adminList.exittime}</td>
                <td>${adminList.ip}</td>
                <td width="200px;" align="right">
                      <a href="<c:url value='/AdminServlet?oper=loadxiaoshouByid&id=${adminList.adminId}'/>">修改</a>
		    		  <a onclick="return confirm('您是否真要删除该销售人员信息？')" href="<c:url value='/AdminServlet?oper=deletexiaoshouByid&id=${adminList.adminId}'></c:url>">删除</a>
		    	</td>
            </tr>
        </c:forEach>

    </table>
  </body>
</html>