<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getServletContext().getContextPath();
%>
<div class="header">
			<div class="header-grid">
					<div class="container">
				<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
					<ul>
					<li><i class="glyphicon glyphicon-headphones"></i><a href="#">24x7 live support</a></li>
						<li><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:info@example.com">@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>+152-2702-8752</li>
						
					</ul>
				</div>
				<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
				<div class="header-right1 ">
					<ul>
						<c:choose>
							<c:when test="${user != null }">
								<li><i class="glyphicon glyphicon-log-in" ></i><a href="#" title="欢迎">欢迎${user.username }</a></li>
							</c:when>
							<c:otherwise>
								<li><i class="glyphicon glyphicon-log-in" ></i><a href="login.jsp" title="登录">请登录</a></li>
							</c:otherwise>
						</c:choose>
						<li><i class="glyphicon glyphicon-book" ></i><a href="register.jsp" title="注册">注册</a></li>
					</ul>
				</div>
				<div class="header-right2">
					<div class="cart box_1">
						<a href="checkout.jsp">
							<h3> <div class="total">
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
								<img src="images/cart.png" alt="" />
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>	
				</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="container">
			<div class="logo-nav">
				
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						 <div class="navbar-brand logo-nav-left ">
							<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="index.jsp">经典<span>风格</span></a></h1>
						</div>

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="<%=path %>/index.jsp" class="act" tilte="后台">后台</a></li>
							<li class="active"><a href="lastProduct.do" class="act" title="首页">首页</a></li>	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="女装">女装<b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Submenu1</h6>
												
												<li><a href="products.jsp">Accessories</a></li>
												<li><a href="products.jsp">Bags</a></li>
												<li><a href="products.jsp">Caps & Hats</a></li>
												<li><a href="products.jsp">Hoodies & Sweatshirts</a></li>
										
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Submenu2</h6>
												<li><a href="products.jsp">Jackets & Coats</a></li>
												<li><a href="products.jsp">Jeans</a></li>
												<li><a href="products.jsp">Jewellery</a></li>
												<li><a href="products.jsp">Jumpers & Cardigans</a></li>
												<li><a href="products.jsp">Leather Jackets</a></li>
												<li><a href="products.jsp">Long Sleeve T-Shirts</a></li>

											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Submenu3</h6>
												<li><a href="products.jsp">Shirts</a></li>
												<li><a href="products.jsp">Shoes, Boots & Trainers</a></li>
												<li><a href="products.jsp">Sunglasses</a></li>
												<li><a href="products.jsp">Sweatpants</a></li>
												<li><a href="products.jsp">Swimwear</a></li>
												<li><a href="products.jsp">Trousers & Chinos</a></li>

											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="products.jsp"><img src="images/me.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="products.jsp"><img src="images/me1.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="男装">男装<b class="caret"></b></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Submenu1</h6>
												
												<li><a href="products1.jsp">Accessories</a></li>
												<li><a href="products1.jsp">Bags</a></li>
												<li><a href="products1.jsp">Caps & Hats</a></li>
												<li><a href="products1.jsp">Hoodies & Sweatshirts</a></li>
										
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Submenu2</h6>
												<li><a href="products1.jsp">Jackets & Coats</a></li>
												<li><a href="products1.jsp">Jeans</a></li>
												<li><a href="products1.jsp">Jewellery</a></li>
												<li><a href="products1.jsp">Jumpers & Cardigans</a></li>
												<li><a href="products1.jsp">Leather Jackets</a></li>
												<li><a href="products1.jsp">Long Sleeve T-Shirts</a></li>

											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Submenu3</h6>
												<li><a href="products1.jsp">Shirts</a></li>
												<li><a href="products1.jsp">Shoes, Boots & Trainers</a></li>
												<li><a href="products1.jsp">Sunglasses</a></li>
												<li><a href="products1.jsp">Sweatpants</a></li>
												<li><a href="products1.jsp">Swimwear</a></li>
												<li><a href="products1.jsp">Trousers & Chinos</a></li>

											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="products1.jsp"><img src="images/me2.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="products1.jsp"><img src="images/me3.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li><a href="codes.jsp"> Codes</a></li>
							<li><a href="contact.jsp" title="联系我们">联系我们</a></li>
						</ul>
					</div>
					</nav>
				</div>
		</div>
	</div>