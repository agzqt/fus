<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUS 관리자</title>
</head>
<body>
	하하호호재밌는얘기<h1>로그인</h1>
	<c:if test="${id==null}">
		<form action="./login.super">
			<input type="text" name="superid" placeholder="name" required="required">
			<input type="password" name="superpw" placeholder="pass" required="required">
			<input type="password" name="superpw2" placeholder="pass2" required="required">
			
			<input type="submit" value="로그인">
		</form>
	</c:if>
	<c:if test="${id!=null}">
		${id}
		<button onclick="location.href='./logout.super';">로그아웃</button>
	</c:if>
	
</body>
</html>