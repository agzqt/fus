<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
<div align="center">
	<h1>메뉴신청</h1>
	<form method="post" action="stomystoreupdate.sto">
	<input type="hidden" name="id" value="${dto.id }"/>

		<div>
			<label >패스워드</label>
			<!-- BoardDto 클래스의 필드랑 맵핑하기위해 name을 필드랑 동일하게작성 -->
			<label><input type="password" name="pwd"/></label>
		</div>
		<div>
			<label >이름</label>
			<label><input type="text" name="name"  value="${dto.name}"/></label>
		</div>
		<div>
			<label >이메일</label>
			<label><input type="text" name="email"  value="${dto.email}"/></label>
		</div>
		
		<div>
			<label >
				<input type="submit" value="수정">
				<c:choose>
				<c:when test="${sessionScope.ID == 'admin' }">
					<input type="button" value="회원 목록" onclick="location.href='member_list.do'"/>
				</c:when>
				<c:otherwise>
					<input type="button" value="인덱스" onclick="location.href='index.jsp'"/>		
				</c:otherwise>
				</c:choose>
			</label>
		</div>

	</form>
</div>
</body>
</html>