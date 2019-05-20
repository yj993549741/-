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
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->

</head>
<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="../assets/i/logo.png"></div>
</header>

<div class="am-cf admin-main"> 

	<%@include file="../header.jsp" %>
<div class="admin-content">
	<%@include file="../daohang.jsp" %>
<div class="admin-biaogelist" >
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on">添加根类别</ul>
    </div>
    <form class="am-form am-g" method="post" action="insert.do">
    	
    	<div>
    		<label>类别名称</label>
    		<div><input type="text" name="name" placeholder="请输入根类别" style="height:28px;width:350px"></div>
    	</div>
    	
    	<div>
    		<label>类别描述</label>
    		<div>
    			<textarea rows="5" name="descr" style="width:350px"></textarea>
    		</div>
    	</div>
    	<div style="margin-left:235px;margin-top:10px">
    		<a href="findAll.do" class="am-btn am-btn-danger am-btn-xs">返回</a>&nbsp;&nbsp;&nbsp;
    		<input type="submit" value="添加" class="am-btn am-btn-success am-btn-xs">
    	</div>
      </form>
</div>
</div>
</div>
</body>
</html>