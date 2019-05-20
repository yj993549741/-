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
<!-- 日历的js -->
<script src=""></script>
<script>
	function calMemberPrice(){
		var normalprice = document.getElementById("normalprice").value;//1000.00
		//给用户显示80%的价格，并不会传入服务器端，也不允许用户输入
		document.getElementById("memberprice").value = normalprice * .8;
	}
	function checkForm(frm){
		var lowPrice = $("#lowPrice").val();
		var highPrice = document.getElementById("highPrice").val();
		if(lowPrice == "" || isNaN(lowPrice)){
			$("#lowPrice").val(0);
		}
		if(highPrice == "" || isNaN(highPrice)){
			$("#highPrice").val(0);
		}
		return true;
	}
</script>
<script type="text/javascript">
	//执行一个laydate实例
	laydate.render({
		elem:"startDate"//指定元素
	});
	laydate.render({
		elem:"endDate"//指定元素
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

<div class=" admin-content">
	<%@include file="../daohang.jsp" %>
<div class="admin-biaogelist">
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on">搜索商品</ul>
    </div>
    <form class="am-form am-g" method="post" action="findByCondition.do" onsubmit="return checkForm(this)">
          <table border=0 width="100%" height="500px"cellspacing=0 cellpadding=0 style="margin-bottom:15px">
          	<tr>
          		
          		<td><label>商品类别</label></td>
          		<td>
          			<select name="categoryid" style="width:140px;height:30px;font-size:12px">
          				<option>---所有类别---</option>
          				<option>食品</option>
          				<option>服饰</option>
          			</select>
          		</td>
          	</tr>
          	<tr>
          		<td><label>关键字</label></td>
          		<td><input type="text" name="keywords"style="width:140px;height:30px;font-size:12px"></td>
          	</tr>
            <tr>
            	<td><label>普通价格</label></td>
            	<td>
	            	&yen;<select id="lowPrice" name="lowPrice" style="width:140px;height:30px;font-size:12px">
	            		<option>0</option>元~
	            		<option>100</option>
	            		<option>300</option>
	            		<option>600</option>
	            		<option>900</option>
	            	</select>
	            	&yen;<select id="highPrice" name="highPrice"style="width:140px;height:30px;font-size:12px">
	            		<option>100</option>元
	            		<option>10</option>
	            		<option>300</option>
	            		<option>600</option>
	            		<option>900</option>
	            	</select>
	            </td>
            </tr>
            <tr>
            	<th>上架日期</th>
            	<td>
            		从<input id="startDate" type="text" name="startDate"style="width:150px;height:30px;font-size:12px">
            		到<input id="endDate" type="text" name="endDate"style="width:150px;height:30px;font-size:12px">
            	</td>
            </tr>
            <tr>
            	<td></td>
            	<td>
	            	<input type="reset" value="重置" class="am-btn am-radius am-btn-xs am-btn-danger" style="margin-left:170px">&nbsp;&nbsp;&nbsp;
	            	<input type="submit" value="搜索" class="am-btn am-radius am-btn-xs am-btn-success">
            	</td>
            </tr>
          </table>
        </form>
</div>
</div>
</div>
</body>
</html>