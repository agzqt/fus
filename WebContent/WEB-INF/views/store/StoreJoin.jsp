<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사장님회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="./resources/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="./resources/css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="./resources/css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons --> 
<!-- 타임피커 -->
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js" type="text/javascript" ></script>
<script src=" https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js" type="text/javascript" ></script>
<script language="JavaScript" src="/common/js/jquery-ui-timepicker-addon.js"></script><!-- 타임피커 -->
<!-- //Custom Theme files --> 
<!-- js -->
<script src="./resources/js/jquery-2.2.3.min.js"></script>  
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
    
    $('#storeInfoTime').timepicker({
    	 timeFormat: 'HH:mm',
    	 showOn: 'button',
    	 buttonImage: '/common/img/btn_calendar.gif',
    	 buttonImageOnly: true
    	});

    	
</script>
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>
	
	<!-- sign up-page -->
		<div class="login-page about">
		<img class="login-w3img" src="./resources/images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Sign Up to your account</h3>  
			<div class="login-agileinfo"> 
				<form method="post" action="./storejoinaction.sto">
					
					<input class="agile-ltext" type="text" name="storeInfoId" placeholder="ID를 입력해주세요." required="required" >
					<input class="agile-ltext" type="password" name="storeInfoPassword" placeholder="비밀번호를 입력해주세요." required="required">
					<input class="agile-ltext" type="password" name="Confirm Password" placeholder="비밀번호를 다시 입력해주세요." required="required">
					<input class="agile-ltext" type="text" name="storeInfoName" placeholder="점포명 입력해주세요." required="required">					
					
					<input type="text" id="sample6_postcode" name="storeInfoAddress" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()"  name="storeInfoAddress" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address"  name="storeInfoAddress" placeholder="주소">
					<input type="text" id="sample6_address2"  name="storeInfoAddress" placeholder="상세주소">
					<input class="agile-ltext" type="text" name="storeInfoStorePhone" placeholder="점포전화번호를 입력해주세요." required="required">
					<input class="agile-ltext" type="text" name="storeInfoMobilePhone" placeholder="사장님전화번호를 입력해주세요." required="required">
					
				<div class="agile-ltext">
								<label for="selector1" class="col-sm-2 control-label">점포 분류</label>
								<div class="col-sm-8"><select name="storeInfoCategory" id="selector1" class="form-control1">
									<option>Lorem ipsum dolor sit amet.</option>
									<option>Dolore, ab unde modi est!</option>
									<option>Illum, fuga minus sit eaque.</option>
									<option>Consequatur ducimus maiores voluptatum minima.</option>
								</select></div>
							</div>
					
					<input class="agile-ltext" type="text" name="storeInfoLicense" placeholder="사업자번호를 입력해주세요." required="required">	
					<input type="datetime" name="storeInfoOpen" id="storeInfoTime" value="" size="6" style="text-align:center" placeholder="오픈시간" required="required";">
					<input class="agile-ltext" type="time" name="storeInfoOpen" placeholder="오픈시간" required="required">
					<input class="agile-ltext" type="time" name="storeInfoClose" placeholder="마감시간" required="required">
					<select class="agile-ltext"
							name="storeInfoMaxSeat">
							<option>최대예약가능인원</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select> 
					<input class="agile-ltext" type="text" name="storeInfoInfo" placeholder="매장정보(간단히)를 입력해주세요." required="required">
					<input type="submit" value="입점신청">
				</form>
			</div>
		</div>
	</div>
	<!-- subscribe -->
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