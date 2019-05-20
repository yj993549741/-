<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>欢迎进入前台首页</title>
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
<link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:"lastProduct.do",
			success:function(data){
				
			},
			
		});
	});
</script>

</head>
	
<body>
<!-- header -->
	<%@include file="header.jsp" %>
<!-- //header -->


<!-- banner -->
	<div class="banner">
	<div class="banner-right">
					<ul id="flexiselDemo2">	
					 <c:forEach items="${lastProduct1}" var="p1">		
						<li><div class="banner-grid">
						<h2>最新商品</h2>
						<div class="wome">
								<img class="img-responsive" src="<%=path %>${p1.imgPath}"  alt="${p1.name}" />
								
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="images/ll.png"></a>
									<h6 >${p1.name }</h6>
									<p class="ba-price"><del>￥${p1.normalprice }</del><em class="item_price">￥${p1.memberprice }</em></p>
									<a href="addToCart.do?productid=${p1.id }&userid=${user.id}&pcount=1&unitprice=${p1.memberprice}" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>							
								</div>							
							</div></li>
							 </c:forEach>
							 <!-- 第2页 -->
						 <c:forEach items="${lastProduct2}" var="p2">
						<li><div class="banner-grid">
						<h2>最新商品</h2>
						<div class="wome">
								<img class="img-responsive" src="<%=path %>${p2.imgPath}" alt="${p2.name }" />
								
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6 ><a href="single.jsp">${p2.name }</a></h6>
									<p class="ba-price"><del>￥${p2.normalprice }</del><em class="item_price">￥${p2.memberprice }</em></p>
									<a href="addToCart.do?productid=${p2.id }&userid=${user.id}&pcount=1&unitprice=${p2.memberprice}" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>						
								</div>						
							</div></li>
						 </c:forEach>
						<!-- 第3页 -->
						 <c:forEach items="${lastProduct3}" var="p3">
						<li><div class="banner-grid">
						<h2>最新商品</h2>
						<div class="wome">
								<a href="single.jsp" ><img class="img-responsive" src="<%=path %>${p3.imgPath}" alt="${p3.name }" />
								</a>	
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6>${p3.name }</h6>
									<p class="ba-price"><del>￥${p3.normalprice }</del><em class="item_price">￥${p3.memberprice }</em></p>
									<a href="addToCart.do?productid=${p3.id }&userid=${user.id}&pcount=1&unitprice=${p3.memberprice}"" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>						
								</div>						
							</div></li>
						 </c:forEach>
					
					</ul>
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 5000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 1
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 1
		    		}
		    	}
		    });
		    
		});
	</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>

	</div>
</div>

<!-- //banner -->
<!--content-->
		<div class="content">
		<div class="content-head">
					
					<div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="single.jsp"><img src="images/pi3.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5>所有收藏</h5>
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
								praesentium voluptatum deleniti atque</p>
								<a href="single.jsp" class="shop" data-hover="马上购物">马上购物</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>所有收藏</h5>
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
								praesentium voluptatum deleniti atque</p>
								<a href="single.jsp" class="shop" data-hover="马上购物">马上购物</a>
							</div>
						<div class="col-md-6 col-2">
							<a href="single.jsp"><img src="images/pi.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
						</div>
					
					<div class="col-md-6 col-m2 animated wow fadeInRight" data-wow-delay=".1s">
					
						<!---->
						 <!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
									    $(document).ready(function() {
									      $("#owl-demo").owlCarousel({
									        items : 2,
									        lazyLoad : false,
									        autoPlay : true,
									        navigation : true,
									        navigationText :  true,
									        pagination : false,
									      });
									    });
									  </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
					                <div class="item">					                	 
										  
											<a href="single.jsp"><img class="img-responsive" src="images/bd4.jpg" alt="" style="width:175px;height:274px;margin-top:35px;margin-bottom:25px"/></a>  
											<a href="single.jsp" class="shop-2" >立即购买</a>
								
					                </div>
									<div class="item">					                	  
										
											<a href="single.jsp"><img class="img-responsive" src="images/bd2.jpg" alt="" style="width:175px;height:274px;margin-top:35px;margin-bottom:25px" /></a>  
											<a href="single.jsp" class="shop-2">立即购买</a>									
																		
					                </div>
									
									<div class="item">					                	 
									
											<a href="single.jsp"><img class="img-responsive" src="images/bd3.jpg" alt="" style="width:175px;height:274px;margin-top:35px;margin-bottom:25px"/> </a> 
											<a href="single.jsp" class="shop-2">立即购买</a>									
																			
					                </div>
									<div class="item">					                	  
										
											<a href="single.jsp"><img class="img-responsive" src="images/bd1.jpg" alt="" style="width:175px;height:274px;margin-top:35px;margin-bottom:25px"/></a>  
											<a href="single.jsp" class="shop-2">立即购买</a>									
																		
					                </div>
							</div>
					   </div>
					   <div class="clearfix"></div>
				</div>	
			</div>
				
			<!---->
			
				<div class="content-top">
					<div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-3">
							<a href="single.jsp"><img src="images/pi1.jpg" class="img-responsive " alt="">
							<div class="col-pic">	
								<h5>时尚女装</h5>
								<p>请点这里</p>
							</div></a>
						</div>
						
					</div>
					<div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp">
											<div class="grid-img">
												<img  src="images/ntb2.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/ntb1.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp">推荐商品</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>
							</div>
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp">
											<div class="grid-img">
												<img  src="images/ntz2.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/ntz1.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp">推荐商品</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp">
											<div class="grid-img">
												<img  src="images/nth2.jpg" class="img-responsive" alt="男T">
											</div>
											<div class="grid-img">
												<img  src="images/nth1.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp">推荐商品</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!----->
				<!---->
				<div class="content-top">
					
					<div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp">
											<div class="grid-img">
												<img  src="images/nh2.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/nh1.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.html">推荐商品</a></h6>
									<p ><del>￥125.00</del><em class="item_price">￥100.00</em></p>
									<a href="#" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>
							</div>
							
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="images/nbai2.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/nbai1.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp">推荐商品</a></h6>
									<p ><del>￥120.00</del><em class="item_price">￥96.00</em></p>
									<a href="#" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp">
											<div class="grid-img">
												<img  src="images/nlv2.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/nlv1.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp">推荐商品</a></h6>
									<p ><del>￥132.00</del><em class="item_price">￥105.60</em></p>
									<a href="#" data-text="添加购物车" class="but-hover1 item_add">添加购物车</a>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-3">
							<a href="single.jsp"><img src="images/pi2.jpg" class="img-responsive " alt="">
							<div class="col-pic">
								<h5>时尚男装</h5>
								<p>At vero eos et accusamus et</p>
							</div></a>
						</div>
						
					</div>
					<div class="clearfix"></div>
				</div>
			
			
				<!--products-->
<div class="social animated wow fadeInDown" data-wow-delay=".1s">
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