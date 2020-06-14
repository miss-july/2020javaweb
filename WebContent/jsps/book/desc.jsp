<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>产品详细</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/pager/pager.css'/>" />
    <script type="text/javascript" src="<c:url value='/jsps/pager/pager.js'/>"></script>
	<script src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/input.js'></c:url>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/book/desc.css'/>">
	<script src="<c:url value='/jsps/js/book/desc.js'/>"></script>
	
  </head>
  
  <body>
  <div class="divBookName">${bookByBid.bname}</div>
  <div>
    <img align="top" src="<c:url value='/${bookByBid.image_w}'/>" class="img_image_w"/>
    <div class="divBookDesc">
	    <ul>
	    	<li>商品编号：${bookByBid.bid}</li>
	    	<li>优惠价：<span class="price_n">&yen;${bookByBid.currPrice}</span></li>
	    	<li>定价：<span class="spanPrice">&yen;${bookByBid.price}</span>　折扣：<span style="color: #c30;">${bookByBid.discount}</span>折</li>
	    </ul>
		<hr class="hr1"/>
		<table>
			<tr>
				<td colspan="3">
					商家：${bookByBid.author }
				</td>
			</tr>
			<tr>
				<td colspan="3">
					商圈：${bookByBid.press }
				</td>
			</tr>
			<tr>
				<td colspan="3">有效期开始时间：${bookByBid.publishtime }</td>
			</tr>
			<tr>
				<td>限购：${bookByBid.edition }</td>
				<td>人均：${bookByBid.pageNum }</td>
				<td>详细地址：${bookByBid.wordNum }</td>
			</tr>
			<tr>
				<td width="180">失效时间：${bookByBid.printtime }</td>
				<td>使用时间：${bookByBid.booksize }</td>
				<td>联系方式：${bookByBid.paper }</td>
			</tr>
		</table>
		<div class="divForm">
			<form id="form1" action="<c:url value='/CartItemServlet'/>" method="post">
				<input type="hidden" name="oper" value="addCartItemByUidAndBid"/>
				<input type="hidden" name="bid" value="${bookByBid.bid }"/>
				我要买：<input id="cnt" style="width: 40px;text-align: center;" type="text" name="quantity" value="1"/>件<span>	|	库存：${bookByBid.number}</span>
  			</form>
  			<a id="btn" href="javascript:$('#form1').submit();"></a>
  		</div>	
	</div>
  </div>
  </body>
</html>
