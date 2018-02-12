<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
좋아좋아신나는친구<h1>로그인</h1>
	<c:if test="${id==null}">
		<form action="./login.cus">
			<input type="text" name="cusid" placeholder="name" required="required">
			<input type="password" name="cuspw" placeholder="pass" required="required">
			<input type="submit" value="로그인">
		</form>
	</c:if>
	<c:if test="${id!=null}">
		${id}
		<button onclick="location.href='./logout.cus';">로그아웃</button>
	</c:if>
</body>
</html>