<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="resources/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="resources/css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="resources/css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
<link rel="stylesheet" href="resources/css/owl.carousel.css" type="text/css" media="all"/> <!-- Owl-Carousel-CSS -->
<!-- //Custom Theme files --> 
<!-- js -->
<script src="resources/js/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="http://fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="http://fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="banner">
		<!-- header -->
		<div class="header">
			<!-- <div class="w3ls-header">header-one  -->
				<div class="container">
					<div class="clearfix"> </div> 
				</div>
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
							<h1><a href="index.html">FUS<span>Find Us Seat</span></a></h1>
						</div> 
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav navbar-right"> 
							<li class="head-dpdn">
								<a href="./storelogin.sto"><i class="fa fa-user-plus" aria-hidden="true"></i> 사장님 사이트</a>
							</li> 
							
							<c:if test="${empty sessionScope.id}">
							<li class="head-dpdn">
								<a href="./loginform.cus"><i class="fa fa-sign-in" aria-hidden="true"></i> 로그인</a>
							</li> 
							<li class="head-dpdn">
								<a href="./CustomerInfoJoin.cus"><i class="fa fa-user-plus" aria-hidden="true"></i> 회원가입</a>
							</li> 
							</c:if>
							<c:if test="${not empty sessionScope.id}">
							<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="icons.html">Web Icons</a></li>
										<li><a href="codes.html">Short Codes</a></li>     
									</ul>
								</li>
							<li class="head-dpdn">
								<a href="./logout.cus"><i class="fa fa-sign-in" aria-hidden="true"></i> 로그아웃</a>
							</li> 
							</c:if>
							<li class="head-dpdn">
								<a href="help.html"><i class="fa fa-question-circle" aria-hidden="true"></i> Help</a>
							</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
					<!-- banner-text -->
		<div class="banner-text">	
			<div class="container">
				<div class="agileits_search">
					<form action="#" method="post">
						<input name="Search" type="text" placeholder="위치/가게 검색해주세요">
						<select id="agileinfo_search" name="agileinfo_search">
							<option value="">Popular Cities</option>
							<option value="navs">New York</option>
							<option value="quotes">Los Angeles</option>
							<option value="videos">Chicago</option>
							<option value="news">Phoenix</option>
							<option value="notices">Fort Worth</option>
							<option value="all">Other</option>
						</select>
						<input type="submit" value="Search">
					</form>
				</div> 
			</div>
		</div>
	</div>
	</div>
	<!-- //banner -->   
</body>
</html>