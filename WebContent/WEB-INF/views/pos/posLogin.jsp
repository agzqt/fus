<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POS LOGIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Custom Theme files -->
<link href="resources/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="resources/css/style.css" type="text/css" rel="stylesheet"
	media="all">
<link href="resources/css/font-awesome.css" rel="stylesheet">
<!-- font-awesome icons -->
<!-- //Custom Theme files -->
<!-- js -->
<script src="resources/js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900"
	rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>

	<!-- login-page -->
	<div class="login-page about">
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">WELCOME POS LOGIN</h3>
			<div class="login-agileinfo">
			<c:if test="${id==null}">
					<form action="./main.pos" method="post">
						<input class="agile-ltext" type="text" name="StoreInfoId"
							placeholder="name" required="required"> <input
							class="agile-ltext" type="password" name="StoreInfoPassword"
							placeholder="pass" required="required">
						<div class="wthreelogin-text">
							<ul>
								<li><label class="checkbox"><input type="checkbox"
										name="checkbox"><i></i> <span> Remember me ?</span> </label></li>
								<li><a href="#">Forgot password?</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="LOGIN">
					</form>
				</c:if>
				<c:if test="${id!=null}">
				
				<input type=submit value="LOGOUT" onclick="location.href='./logout.pos'">
					<!-- <button onclick="location.href='./logout.pos'">로그아웃</button> -->
				</c:if>
			</div>
		</div>
	</div>
	<!-- //login-page -->
		<script src="./resources/js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->	
	<!-- start-smooth-scrolling -->
	<script src="resources/js/SmoothScroll.min.js"></script>  
	<script type="text/javascript" src="./resources/js/move-top.js"></script>
	<script type="text/javascript" src="./resources/js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	  
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/bootstrap.js"></script>
		
</body>
</html>