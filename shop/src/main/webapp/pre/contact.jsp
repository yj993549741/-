<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
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
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Contact</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.jsp">Home</a><label>/</label>Contact</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->
	<div class="contact">
		<div class="container">
		
			
			<div class="col-md-8 contact-grids1 animated wow fadeInRight" data-wow-delay=".5s">
				<form>
						<div class="contact-form2">
							<h4>Name</h4>
							
								<input type="text" placeholder="" required="">
							
						</div>
						<div class="contact-form2">
							<h4>Website</h4>
							
								<input type="text" placeholder="" required="">
						
						</div>
				
						<div class="contact-form2">
							<h4>Email</h4>
						
								<input type="email" placeholder="" required="">
						
						</div>
						<div class="contact-form2">
							<h4>Subject</h4>
						
								<input type="text" placeholder="" required="">
						
						</div>
					
			
				<div class="contact-me ">
					<h4>Message</h4>
				
						<textarea type="text"  placeholder="" required=""> </textarea>
						</div>
						<input type="submit" value="Submit" >
				</form>
				
			</div>
			
			<div class="col-md-4 contact-grids">
				<div class=" contact-grid animated wow fadeInLeft" data-wow-delay=".5s">
					<div class="contact-grid1">
						<div class="contact-grid2 ">
							<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
						</div>
						<div class="contact-grid3">
							<h4>Address</h4>
							<p>12K Street, 45 Building Road <span>New York City.</span></p>
						</div>
					</div>
				</div>
				<div class=" contact-grid animated wow fadeInUp" data-wow-delay=".5s">
					<div class="contact-grid1">
						<div class="contact-grid2 contact-grid4">
							<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
						</div>
						<div class="contact-grid3">
							<h4>Call Us</h4>
							<p>+1234 758 839<span>+1273 748 730</span></p>
						</div>
					</div>
				</div>
				<div class=" contact-grid animated wow fadeInRight" data-wow-delay=".5s">
					<div class="contact-grid1">
						<div class="contact-grid2 contact-grid5">
							<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
						</div>
						<div class="contact-grid3">
							<h4>Email</h4>
							<p><a href="contactto:info@example.com">info@example1.com</a><span><a href="contactto:info@example.com">info@example2.com</a></span></p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div class="map">
		<iframe class="animated wow fadeInLeft" data-wow-delay=".5s" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3019.9579945977393!2d-73.87657738464283!3d40.806916839740346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f510a78ff341%3A0xe5b1e682c2e91238!2sNYS+Agriculture+%26+Markets!5e0!3m2!1sen!2sin!4v1456403781501" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div >
<!-- //contact -->
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