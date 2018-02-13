<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사장님인덱스</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="./resources/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="./resources/css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="./resources/css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons --> 
<link rel="stylesheet" href="./resources/css/owl.carousel.css" type="text/css" media="all"/> <!-- Owl-Carousel-CSS -->
<!-- //Custom Theme files --> 
<!-- js -->
<script src="./resources/js/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body> 
	<!-- banner -->
	<div class="banner about-w3bnr">
		
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
							<h1><a href=#">FUS<span>Find Ur Seat</span></a></h1>
						</div> 
							<div class="w3ls-header-right">
						<ul> 
							<li class="head-dpdn">
								<a href="./storeLogout.sto"><i class="fa fa-sign-in" aria-hidden="true"></i>Logout</a>
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
		</div>
		<!-- //header-end --> 
		
	</div>
	<!-- products -->
	<div class="products">	 
		<div class="container">
			<div class="col-md-9 product-w3ls-right"> 
				<div class="product-top">
					<h4>예약신청목록</h4>
					<div class="clearfix"> </div>
				</div>
				<jsp:include page= "StoreReserveRequest.jsp" flush="true"/> 
			</div>
			<div class="col-md-3 rsidebar">
				<div class="rsidebar-top">
					<div class="sidebar-row">
						<h4>예약</h4>            
						<ul class="faq">
							<li class="item1"><a href="./storeindex.sto">예약신청목록</a></li>
							<li class="item2"><a href="./storepreserve.sto">지난예약</a></li>
						</ul>
					</div>
					<div class="sidebar-row">
						<h4>정보수정욧청</h4>
							<ul class="faq">
							<li class="item1"><a href="./storeseat.sto">좌석</a></li>
							<li class="item2"><a href="./storeinfo.sto">내점포</a></li>
						</ul>
						<div class="clearfix"> </div> 
					</div>
					<div class="sidebar-row">
						<a href="./storehelp.sto"><h4>고객센터</h4></a>
					</div>
					<div class="sidebar-row">
						<a href="./storeevet.sto"><h4>이벤트</h4></a>
					</div>		
					<div class="sidebar-row">
					<a href="./storereview.sto"><h4>리뷰</h4></a>
					</div>		 
				</div>
				
			</div>
			<div class="clearfix"> </div> 
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./resources/js/bootstrap.js"></script>
</body>
</html>