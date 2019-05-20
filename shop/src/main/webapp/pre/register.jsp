<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>用户注册</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- 城市三级下拉菜单 -->
<script>
	<%@include file="city.jsp" %>
</script>
<script>
//判断前后两次输入的密码是否一致，如果不一致即false则表单不提交
function confirmPwd(){
	var apwd = $("#password").val();
	var confirmpwd = $("#confirmpwd").val();
	if(apwd==confirmpwd){
		return true;
	}
	return false;
}

</script>
<!-- //animation-effect -->
<link href='https://fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'></head>
	
<body>
<!-- header -->
	<%@include file="header.jsp" %>
<!-- //header --><!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">注册</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.jsp">首页</a><label>/</label>注册</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->
	
	<div class="login">
		<div class="container">
		<form action="register.do" method="post" onsubmit="return confirmPwd()">
			<div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
				<div class="login-mail">
					<input type="text" name="username" placeholder="请输入用户名" required="">
					<i class="glyphicon glyphicon-envelope"></i>
				</div>
				<div class="login-mail">
					<input type="password" name="password" placeholder="请输入密码" required="">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				<div class="login-mail">
					<input type="password" name="cpwd" placeholder="请再次确认密码" required="">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				   <div class="login-mail">
						省：
						<select id="province" name="province"
								onchange="doProvAndCityRelation();">
							<option id="choosePro">请选择省份</option>
						</select>
						市：
						<select id="citys" name="city"
								onchange="doCityAndCountyRelation();">
							<option id='chooseCity' >请选择城市</option>
						</select>
						区/县：
						<select id="county" name="county">
							<option id='chooseCounty' >请选择区/县</option>
						</select>
				</div>
					<textarea style="width: 540px" rows="5" cols="20" name="addr" id="addr"></textarea>
					<div class="clear"></div>
					<span style="color:red;font-size:12px">请填写您的详细收货地址，以便给您送货！</span>
				</div>
			<div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
					<input type="submit" value="注册">
					</label>
					<p>已经注册，请您先登录。</p>
				<a href="login.jsp" class="hvr-sweep-to-top">登录</a>
			</div>
			<div class="clearfix"> </div>
			</form>
		</div>


	</div>
	
<div class="social animated wow fadeInUp" data-wow-delay=".1s">
	<div class="container">
		<div class="col-sm-3 social-ic">
			<a href="#">FACEBOOK</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">TWITTER</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">GOOGLE+</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">PINTEREST</a>
		</div>
	<div class="clearfix"></div>
	</div>
</div>

<!-- footer -->
	<%@include file="footer.jsp" %>
<!-- //footer -->
</body>
</html>