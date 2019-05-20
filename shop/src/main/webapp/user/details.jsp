<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>电商平台后台管理系统</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="../assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="../assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="../assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="../assets/css/admin.css">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/app.js"></script>
<script src="../assets/js/amazeui.min.js"></script>

</head>
<body>
</head>
<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="../assets/i/logo.png"></div>
</header>

<div class="am-cf admin-main"> 

	<%@include file="../header.jsp" %>

<div class=" admin-content">
	<%@include file="../daohang.jsp" %>
<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-users">用户详细信息</ul>
      <!--这里打开的是新页面-->
    </div>
    
    <form class="am-form am-g" action="findById.do" method="post">
    	<table border=0 width=80% height=300px cellspacing=0 cellpadding=0>
    		<tr>
    			<th>用户ID</th>
    			<td><input type="text" name="id" value="${user.id}" style="width:30%;height:27px" align="center"readonly="readonly"></td>
    		</tr>
    	    <tr>
    			<th>用户名</th>
    			<td><input type="text" name="username" value="${user.username}" style="width:30%;height:27px" align="center"readonly="readonly"></td>
    		</tr>
    		<tr>
    			<th>手机号码</th>
    			<td><input type="text" name="phone" value="${user.phone}" style="width:30%;height:27px" align="center"readonly="readonly"></td>
    			
    		</tr>
    		<tr>
    			<th>送货地址</th>
    			<td><input type="text" name="addr" value="${user.addr}"style="width:30%;height:27px" align="center"readonly="readonly"></td>
    		</tr>
    		<tr>
    			<th>注册日期</th>
    			<td><input type="text" name="rdate" value="${user.rdate}"style="width:30%;height:27px" align="center"readonly="readonly"></td>
    		</tr>
    		<tr>
    			<th></th>
    			<td>
    				<a href="findAll.do" class="am-btn am-radius am-btn-xs am-btn-success">返回</a>
    			</td>
    		</tr>
    	</table>
        </form>
</div>
</div>
</div>
</body>
</html>