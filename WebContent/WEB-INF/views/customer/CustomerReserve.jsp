<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.Date" %>
	<%@page import= "java.text.SimpleDateFormat" %>
	<%@page import="java.util.Calendar" %>
	
	

<%
SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat dfa = new SimpleDateFormat("MM");
SimpleDateFormat dfb = new SimpleDateFormat("dd");
SimpleDateFormat second = new SimpleDateFormat("kk:mm:ss");
Calendar cal = Calendar.getInstance();
cal.setTime(new Date());
String shopid="1";
String userId="1";
Date open = second.parse("11:00:00");
Date close = second.parse("23:30:00");
int maxPerson = 4;
%>
<!DOCTYPE>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
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
<script src="js/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
</head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<script>
$(function() {
    $( "#testDatepicker" ).datepicker({
        nextText: '다음 달',
        prevText: '이전 달',
        minDate: 2, 
        maxDate: "+14D",
        dateFormat: "yy/mm/dd",
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });
});
</script>
<body>
<form action="reserve.cus" method="post" name="reserveForm">
	<!-- 
	스토어 인포에서 필요한 정보
	최대 인원 // 이 정보를 통해서 최대 인원수를 제한건다
	스토어 넘
	오픈타임		// 시간을 가져와서 오픈 전후로 1시간간격의 예약시간정보를 받는다.
	클로즈타임  //만약 오픈타임이 클로즈타임보다 크다면? 클로즈타임은 새벽이라는 얘기, 그에 맞는 로직필요
	필요
	
	고객이 입력해서 넣을 
	예약시간, 예약일자, 요청사항, 예약인원
	컨펌은 입력시 일단 디비단에서 처리
	0 예약 1 예약취소 2 이용완료
	
	세션에서 회원의 정보가 필요하다
	 -->





<div class="login-page about  banner">

		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1" style="color:white">예약신청</h3>  
			<div class="login-agileinfo"> 
			<form action="reserve.cus" method="post" name="reserveForm">
	<input type="text" id="testDatepicker" name="customerReserveDate" placeHolder="날짜를 선택해 주세요.">  
<%-- 	<%for(int i=1; i<=7; i++){ 
		cal.add(Calendar.DATE, 1);
	%>
	<label><span class="btn btn-info"><input type="radio" name="customerReserveDate" value="<%=df.format(cal.getTime())%>"required/><%=dfa.format(cal.getTime())%>월<%=dfb.format(cal.getTime())%>일</span></label>
	<%} %> --%>
<select name="customerReserveTime" class="agile-ltext">
    <option value="">시간을 선택해 주세요</option>
    		<%
		while(true){ 
		open.setHours(open.getHours()+1);
	if(open.getHours()<close.getHours()){%>
    <option value="<%=second.format(open.getTime())%>"><%=open.getHours() %>시</option>
	<%}else{
			 break; 
		}
 }  %>
</select>
					<select name="customerReservePersonnal" class="agile-ltext">
    <option value="">인원을 선택해 주세요</option>
    		<%
		for(int i=1; i<=maxPerson; i++){ 
			%>
<option value="<%=i%>"><%=i%></option>			
	<%
}%>
</select>
<input type="text" name="customerReserveMemo" required placeHolder="요청사항을 남겨주세요."/>
<input type="hidden" value="1" name="customerReserveCode"/><br>
<input type="hidden" value="1" name="customerReserveCustomerNum"/><br>
	<input type="submit" value="예약신청"/>
</form>
			</div>	 
		</div>
	</div>
</body>
</html>