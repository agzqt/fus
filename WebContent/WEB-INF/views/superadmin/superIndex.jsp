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
	하하호호재밌는얘기<h1>인덱스</h1>
	
	<c:if test="${id!=null}">
		${id}
		<button onclick="location.href='./logout.super'">로그아웃</button>
	</c:if>
	<button onclick="location.href='./loginform.super';">로그인하러가기</button>
</body>
</html>