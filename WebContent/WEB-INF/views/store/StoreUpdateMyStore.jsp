<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사장님내점포디테일</title>
</head>
<body>
<div align="center">
	<h1>점포 정보</h1>
<form method="post" action="stomystore.sto">
	<div>
		<label >아이디</label><label>${member.id }</label>
	</div>
	<div>
		<label >이름</label><label>${member.name }</label>
	</div>
	<div>
		<label >이메일</label><label>${member.email }</label>
	</div>
	<div>
		<label >가입일</label><label>${member.regdate }</label>
	</div>
	<div>
		<label >
			<a href="member_update.do?id=${member.id }">수정</a>
			<a href="member_delete.do?id=${member.id }">삭제</a>
			<c:choose>
				<c:when test="${sessionScope.ID == 'admin' }">
					<a href="member_list.do">회원 목록</a>
				</c:when>
				<c:otherwise>
					<a href="index.jsp">인덱스</a>		
				</c:otherwise>
			</c:choose>
		</label>
	</div>

</form>
</div>
</body>
</html>