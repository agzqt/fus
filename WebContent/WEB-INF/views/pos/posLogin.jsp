<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POS LOGIN</title>
</head>
<body>
	<h1>POS LOGIN</h1>
	<c:if test="${id==null}">
		<form action="./main.pos" method="post">
			<input type="text" name="StoreInfoId" placeholder="name" required="required"> 
			<input type="password" name="StoreInfoPassword" placeholder="pass" required="required"> 
			<input type="submit" value="로그인" /> 
			<input type=button value="창닫기" onclick="self.close()">
		</form>
	</c:if>
	<c:if test="${id!=null}">
		${id}
		<button onclick="location.href='./logout.pos'">로그아웃</button>
	</c:if>
</body>
</html>