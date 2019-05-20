<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>结算</title>
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
<!-- //animation-effect -->
<link href='https://fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'></head>
	
<body>
<!-- header -->
	<%@include file="header.jsp" %>
<!-- //header -->
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">结账</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="lastProduct.do">首页</a><label>/</label>结账</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->
		<div class="check-out">	 
		<div class="container">	 
	 
				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cross').fadeOut('slow', function(c){
							$('.cross').remove();
						});
						});	  
					});
			   </script>
			<script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
						$('.cross1').fadeOut('slow', function(c){
							$('.cross1').remove();
						});
						});	  
					});
			   </script>	
			   <script>$(document).ready(function(c) {
					$('.close3').on('click', function(c){
						$('.cross2').fadeOut('slow', function(c){
							$('.cross2').remove();
						});
						});	  
					});
			   </script>	
 <table class="table animated wow fadeInLeft" data-wow-delay=".5s" border=1>
		  <tr>
			<th class="t-head head-it ">物品</th>
			<th class="t-head">价格</th>
			<th class="t-head">数量</th>
			<th class="t-head">总计</th>
		  </tr>
		  <c:forEach items="${items }" var="ci">
		  <tr class="cross">
			<td class="ring-in t-data">
				<a href="single.jsp" class="at-in">
					<img src="<%=path %>${ci.imgPath}" class="img-responsive" alt="">
				</a>
			<div class="sed">
				<h5>Sed ut perspiciatis unde</h5>
			</div>
				<div class="clearfix"> </div>
				<div class="close1"> </div>
			 </td>
			<td class="t-data">￥${ci.unitprice }</td>
			<td class="t-data"><div class="quantity"> 
								<div class="quantity-select">            
									<div class="entry value-minus">&nbsp;</div>
										<div class="entry value"><span class="span-1">${ci.pcount }</span></div>									
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
			
			</td>
			<td class="t-data">${ci.unitprice}</td>
		  </tr>
		  </c:forEach>
		  <!-- <tr class="cross1">
		  <td class="t-data ring-in"><a href="single.jsp" class="at-in"><img src="images/pcc2.jpg" class="img-responsive" alt=""></a>
			<div class="sed">
				<h5>Sed ut perspiciatis unde</h5>
			</div>
			<div class="clearfix"> </div>
			<div class="close2"> </div></td>
			<td class="t-data">$200.00</td>
			<td class="t-data"><div class="quantity"> 
								<div class="quantity-select">            
									<div class="entry value-minus">&nbsp;</div>
										<div class="entry value"><span class="span-1">1</span></div>									
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
							quantity
		
			</td>
			<td class="t-data">$200.00</td>
			
		  </tr>
		  <tr class="cross2">
		  <td class="t-data ring-in"><a href="single.jsp" class="at-in"><img src="images/pcc1.jpg" class="img-responsive" alt=""></a>
			<div class="sed">
				<h5>Sed ut perspiciatis unde</h5>
			</div>
			<div class="clearfix"> </div>
			<div class="close3"> </div></td>
			<td class="t-data">$150.00</td>
			<td class="t-data">
				<div class="quantity"> 
								<div class="quantity-select">            
									<div class="entry value-minus">&nbsp;</div>
										<div class="entry value"><span class="span-1">1</span></div>									
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
						
			</td>
			<td class="t-data">$150.00</td>
		  </tr> -->
	</table>
				<div class=" cart-total">
			
			 <h5 class="continue" >总计</h5>
			 <div class="price-details">
				 <h3>价格详情</h3>
				 <span>小计</span>
				 <span class="total1">6200.00</span>
				 <span>折扣</span>
				 <span class="total1">---</span>
				 <span>运费</span>
				 <span class="total1">150.00</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>总计</h4></li>	
			   <li class="last_price"><span>6350.00</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 <a href="single.jsp">立即支付</a>
			 
			</div>
			
		
		 </div>
		 </div>
		 				<!--quantity-->
			<script>
			$('.value-plus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
				divUpd.text(newVal);
			});

			$('.value-minus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
				if(newVal>=1) divUpd.text(newVal);
			});
			</script>
			<!--quantity-->
			
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