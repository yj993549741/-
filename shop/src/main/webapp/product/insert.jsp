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
<script type="text/javascript">
	$(document).ready(function(){
		$("#normalprice").blur(function(){
			$("#memberprice").val(Math.round($("#normalprice").val() * .8 * 100.00)/100.00);
		});
	});
	
	$.ajax({
		url:"/shop/category/findThree.do",
		success:function(data){
			for(let i=0;i<data.length;i++){
				$("#categories").append("<option value="+data[i].id+">"+data[i].name+"</option>");
			}
		}
	});
</script>
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
<div class="admin-biaogelist" >
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on">添加新品</ul>
    </div>
    <form class="am-form am-g" method="post" action="insert.do" enctype="multipart/form-data">
    	<table border=0 width="100%">
    	<div>
    		<label>商品名称</label>
    		<div><input type="text" name="name" placeholder="请输入商品名称"style="height:28px;width:350px"></div>
    	</div>
    	
    	<div>
    		<label>商品描述</label>
    		<input type="text" name="descr" placeholder="请输入商品描述" style="height:28px;width:350px">
    	</div>
    	<div>
    		<label>普通价格</label>
    		<input id="normalprice" type="text" name="normalprice"  placeholder="普通价格"style="height:28px;width:350px">
    	</div>
    	<div>
    		<label>会员价格</label>
    		<input id="memberprice" type="text" name="memberprice" placeholder="会员价格" readonly="readonly" style="height:28px;width:350px">
    	</div>
    	<div>
    		<label>图片上传</label>
    		<input id="img" type="file" name="file"  style="height:28px;width:180px">
    	</div>
    	<div>
    		<label>商品类别</label>
    		<select id="categories" name="categoryid" style="height:30px;width:350px;font-size:12px">
    			<option value="-1">---商品类别---</option>
    		</select>
    	</div>
    	<div style="margin-left:235px;margin-top:10px">
    		<a href="findAll.do" class="am-btn am-btn-danger am-btn-xs">返回</a>&nbsp;&nbsp;&nbsp;
    		<input type="submit" value="添加" class="am-btn am-btn-success am-btn-xs">
    	</div>
    	</table>
      </form>
</div>
</div>
</div>
</body>
</html>