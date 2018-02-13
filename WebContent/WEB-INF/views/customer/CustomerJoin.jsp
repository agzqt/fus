<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="./resources/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="./resources/css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="./resources/css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons --> 
<!-- //Custom Theme files --> 
<!-- js -->
<script src="./resources/js/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
</head>

<script type="text/javascript">

function duplCheck() {	
	var m_id = $('#customerInfoId').val();
	if(m_id == "" || m_id == null) {
		alert("아이디를 입력하세요");
		return;
	} else {
		var idExp = /^[a-z0-9]{4,}@[a-z0-9]{3,}\.[a-z]{2,4}$/;
		if (!idExp.test(m_id)){
			$('#m_id').val("");
			$('#m_id').focus();
			$('#idCheckMsg').html('올바른 이메일 형식이 아닙니다.').css('color', 'red');
            return false;
		} else {
		 $.ajax({ 
                type : 'post',
                url  : 'DuplCheck.cus',
                data : { m_id : m_id },
                success : function(result) {
                	if (result == '1'){
                		$('#idCheckMsg').html('이미 존재하는 아이디 입니다.').css('color', 'red');
                	} else {
                		$('#idCheckMsg').html('사용할 수 있는 아이디 입니다.').css('color', 'blue');
                	}
                },
                error : function() { alert('시스템 문제발생'); }
           }); 
		}
	}
}


function pwdCheck() {
			var m_pwd = $('#customerInfoPassword').val();
			var m_pwdCheck = $('#confirmPassword').val();
			$('#pwdCheckMsg').html('비밀번호는 영문, 숫자 혼합 8자이상  20자 이하로 작성해주세요.').css('color', 'red');
			if (m_pwd != m_pwdCheck) {
				$('#pwdCheckMsg')	.html('비밀번호가 일치하지 않습니다.').css('color', 'red');
			} else {
				$('#pwdCheckMsg').html('비밀번호가 일치합니다.').css('color', 'blue');
			}
		}
</script>
<body>
	<!-- banner -->
	<div class="banner about-w3bnr">
		<!-- header -->
		<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
				<div class="container">
					<div class="w3ls-header-left">
						<p>Free home delivery at your doorstep For Above $30</p>
					</div>
					<div class="w3ls-header-right">
						<ul> 
							<li class="head-dpdn">
								<i class="fa fa-phone" aria-hidden="true"></i> Call us: +01 222 33345 
							</li> 
							<li class="head-dpdn">
								<a href="login.html"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
							</li> 
							<li class="head-dpdn">
								<a href="signup.html"><i class="fa fa-user-plus" aria-hidden="true"></i> Signup</a>
							</li> 
							<li class="head-dpdn">
								<a href="offers.html"><i class="fa fa-gift" aria-hidden="true"></i> Offers</a>
							</li> 
							<li class="head-dpdn">
								<a href="help.html"><i class="fa fa-question-circle" aria-hidden="true"></i> Help</a>
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
				</div>
			</div>
			<!-- //header-one -->    
			<!-- navigation -->
			<div class="navigation agiletop-nav">
				<div class="container">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header w3l_logo">
							<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>  
							<h1><a href="index.html">Staple<span>Best Food Collection</span></a></h1>
						</div> 
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="index.html">Home</a></li>	
								<!-- Mega Menu -->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="row">
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>Food type</h6>  
													<li><a href="menu.html">Breakfast</a></li> 
													<li><a href="menu.html">Lunch</a></li> 
													<li><a href="menu.html">Dinner</a></li> 
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>Cuisine</h6> 
													<li><a href="menu.html">Indian Recipes</a></li> 
													<li><a href="menu.html">American Recipes</a></li> 
													<li><a href="menu.html">French Recipes</a></li> 
													<li><a href="menu.html">Italian Recipes</a></li> 
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>Box type</h6> 
													<li><a href="menu.html">Diet</a></li> 
													<li><a href="menu.html">Mini</a></li> 
													<li><a href="menu.html">Regular</a></li> 
													<li><a href="menu.html">Special</a></li> 
												</ul>
											</div> 
											<div class="clearfix"></div>
										</div>
									</ul>
								</li>
								<li><a href="about.html">About</a></li> 
								<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="icons.html">Web Icons</a></li>
										<li><a href="codes.html">Short Codes</a></li>     
									</ul>
								</li>  
								<li><a href="contact.html">Contact Us</a></li>
							</ul>
						</div>
						<div class="cart cart box_1"> 
							<form action="#" method="post" class="last"> 
								<input type="hidden" name="cmd" value="_cart" />
								<input type="hidden" name="display" value="1" />
								<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
							</form>   
						</div> 
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
		</div>
		<!-- //header-end --> 
	<!-- sign up-page -->
		<div class="login-page about">
		<img class="login-w3img" src="./resources/images/img3.jpg" alt="">
		
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Sign Up to your account</h3>  
			<div class="login-agileinfo"> 
				<form method="post" action="./write.cus">
					
					<input class="agile-ltext" type="text" name="customerInfoId" placeholder="ID를 입력해주세요." required="required" onkeyup="duplCheck();">
					<div id="duplCheckMsg"></div>
					<input class="agile-ltext" type="password" id="customerInfoPassword" name="customerInfoPassword" placeholder="비밀번호를 입력해주세요." required="required" onkeyup="pwdCheck();">
					<input class="agile-ltext" type="password" id="confirmPassword" name="confirmPassword" placeholder="비밀번호를 다시 입력해주세요." required="required" onkeyup="pwdCheck();">
					<div id="pwdCheckMsg"></div>
	
					<input class="agile-ltext" type="text" name="customerInfoName" placeholder="이름을 입력해주세요." required="required">					

					<input class="agile-ltext" type="text" name="customerInfoPhone" placeholder="핸드폰번호를 입력해주세요." required="required">
					<input class="agile-ltext" type="text" name="customerInfoEmail" placeholder="이메일 주소를 입력해주세요." required="required">
					
					<input type="submit" value="가입 완료">
				</form>
			</div>
			
		</div>
	</div>
	<!-- subscribe -->
	<div class="subscribe agileits-w3layouts"> 
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
				<h4>Keep in touch</h4>  
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
				</ul> 
				<ul class="apps"> 
					<li><h4>Download Our app : </h4> </li>
					<li><a href="#" class="fa fa-apple"></a></li>
					<li><a href="#" class="fa fa-windows"></a></li>
					<li><a href="#" class="fa fa-android"></a></li>
				</ul> 
			</div> 
			<div class="col-md-6 subscribe-right">
				<h3 class="w3ls-title">Subscribe to Our <br><span>Newsletter</span></h3>  
				<form action="#" method="post"> 
					<input type="email" name="email" placeholder="Enter your Email..." required="">
					<input type="submit" value="Subscribe">
					<div class="clearfix"> </div> 
				</form> 
				<img src="./resources/images/i1.png" class="sub-w3lsimg" alt=""/>
			</div>
			<div class="clearfix"> </div> 
		</div>
	</div>
	<!-- //subscribe --> 
	<!-- footer -->
	<div class="footer agileits-w3layouts">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>company</h3>
					<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Contact Us</a></li>  
						<li><a href="careers.html">Careers</a></li>  
						<li><a href="help.html">Partner With Us</a></li>   
					</ul>
				</div> 
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>help</h3>
					<ul>
						<li><a href="faq.html">FAQ</a></li> 
						<li><a href="login.html">Returns</a></li>   
						<li><a href="login.html">Order Status</a></li> 
						<li><a href="offers.html">Offers</a></li> 
					</ul>  
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>policy info</h3>
					<ul>  
						<li><a href="terms.html">Terms & Conditions</a></li>  
						<li><a href="privacy.html">Privacy Policy</a></li>
						<li><a href="login.html">Return Policy</a></li> 
					</ul>    
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>Menu</h3> 
					<ul>
						<li><a href="menu.html">All Day Menu</a></li> 
						<li><a href="menu.html">Lunch</a></li>
						<li><a href="menu.html">Dinner</a></li>
						<li><a href="menu.html">Flavours</a></li> 
					</ul>  
				</div> 
				<div class="clearfix"> </div>
			</div>
		</div> 
	</div>
	<div class="copyw3-agile"> 
		<div class="container">
			<p>&copy; 2017 Staple Food. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	</div>
	<!-- //footer -->
	<!-- cart-js -->
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
	<script src="./resources/js/SmoothScroll.min.js"></script>  
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
    <script src="./resources/js/bootstrap.js"></script>
</body>
</html>