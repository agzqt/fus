<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>POS MAIN</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
th, td {
	padding: 15px;
}

table {
	border-spacing: 10px;
}

/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">POS MAIN</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							<c:if test="${id!=null}">
		${id} 사장님 부자되세요.
		<button onclick="location.href='./logout.pos'">로그아웃</button>
							</c:if></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-9 text-left">

				<table width=100% height=100% border="1">
					<tr>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
					</tr>
					<tr>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
					</tr>
					<tr>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
					</tr>
					<tr>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
					</tr>
					<tr>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
					</tr>
				</table>
			</div>
			<div class="col-sm-3 sidenav">
				날짜 및 시간 나오게 하긩
				<div class="well">
				<table width=100% height=100% border="1">
				<tr>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
						<th>테이블</th>
					</tr>
					</table>
					<p>오늘 예약</p>
					<c:forEach items="${reserveList}" var="bean">
	${bean.customerReserveNum}
	${bean.customerReserveCustomerNum}
	${bean.customerReservePersonnal}
	${bean.customerReserveTime}
	${bean.customerReserveMemo}
	<br>
					</c:forEach>
				</div>
				<div class="well">
					<p>내일 예약</p>
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>
