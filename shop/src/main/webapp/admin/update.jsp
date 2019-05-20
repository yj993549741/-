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

<script>
	var flag=false;
	$(document).ready(function(){
		$("#oldpwd").blur(function(){
			$.ajax({
				url:"registerpwd.do?id=${admin.id}&oldpwd="+$("#oldpwd").val(),
				type:"GET",
				async:true,
				data:{},
				dataType:"json",
				success:function(data){
					$("#rmsg").html(data),
				error:function(){
					window.location.href="error.jsp";
				}
			});		
		});
	});
	//判断前后两次输入的密码是否一致，如果不一致即false则表单不提交
	function confirmPwd(){
		var newpwd = $("#newpwd").val();
		var confirmpwd = $("#confirmpwd").val();
		if(newpwd==confirmpwd){
			return true;
		}
		return false;
	}
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
      <ul class="am-icon-users">修改管理员信息</ul>
      <!--这里打开的是新页面-->
    </div>
    
    <form class="am-form am-g" action="update.do" method="post" onsubmit="return confirmPwd()">
    	<table border=1 width=80% height=300px cellspacing=0 cellpadding=0>
    		<tr>
    			<th>管理员ID</th>
    			<td><input type="text" name="id" value="${admin.id }"style="width:30%;height:27px" align="center" readonly="readonly"></td>
    		</tr>
    	    <tr>
    			<th>管理员账号</th>
    			<td><input type="text" name="aname" value="${admin.aname}"style="width:30%;height:27px" align="center" readonly="readonly"></td>
    		</tr>
    		<tr>
    			<th>原始密码</th>
    			<td><input id="oldpwd" type="password" name="oldpwd" style="width:30%;height:27px" align="center"><span id='rmsg' style="color:red;display:inline-block"></span></td>
    			
    		</tr>
    		<tr>
    			<th>新密码</th>
    			<td><input id="newpwd" type="password" name="apwd"style="width:30%;height:27px" align="center"></td>
    		</tr>
    		<tr>
    			<th>确认新密码</th>
    			<td><input id="confirmpwd" type="password" name="confirmpwd" style="width:30%;height:27px" align="center"></td>
    		</tr>
    		<tr>
    			<th></th>
    			<td>
    				<input type="reset" class="am-btn am-radius am-btn-xs am-btn-danger"  value="重置" style="margin-left:30px">&nbsp;&nbsp;&nbsp;
    				<input type="submit" class="am-btn am-radius am-btn-xs am-btn-success"  value="修改">
    			</td>
    		</tr>
    	</table>
        </form>
</div>
</div>
</div>
</body>
</html>