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

	<div class="admin-content">
	<%@include file="../daohang.jsp" %>
	<!-- 经常改变的地方 -->
	<div class="admin-biaogelist" >
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on">添加子类别</ul>
    </div>
    <form class="am-form am-g" method="post" action="insertChild.do">
    	<input type="hidden" name="pid" value="${category.id }">
    	<div>
    		<label>类别名称</label>
    		<input type="text" name="name" placeholder="请输入子类别" style="height:28px;width:350px">
    	</div>
    	
    	<div>
    		<label>类别描述</label>
    		<div>
    			<textarea rows="5" name="descr" style="width:350px"></textarea>
    		</div>
    	</div>
    	<div style="margin-top:10px">
    		<label>所属类别</label>
    		<input type="text" name="pname" value="${category.name }" style="height:28px;width:350px" readonly="readonly">
    	</div>
    	<div style="margin-left:235px;margin-top:10px">
    		<a href="categories.jsp" class="am-btn am-btn-danger am-btn-xs">关闭</a>&nbsp;&nbsp;&nbsp;
    		<input type="submit" value="添加" class="am-btn am-btn-success am-btn-xs">
    	</div>
      </form>
	</div>
	</div>
</div>
</body>
</html>