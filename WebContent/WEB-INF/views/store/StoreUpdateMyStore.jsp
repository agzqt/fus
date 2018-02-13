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
<form method="post" action="storeupdatemystore.sto">
	<div>
		<label >사장님 아이디</label><label>${storeinfo.storeInfoId}</label>
	</div>
	<div>
		<label >사장님 주소</label><label>${storeinfo.storeInfoAddress}</label>
	</div>
	<div>
		<label >점포번호</label><label>${storeinfo.storeInfoStorePhone}</label>
	</div>
	<div>
		<label >사장님번호</label><label>${storeinfo.storeInfoMobilePhone}</label>
	</div>
	<div>
		<label >오픈시간</label><label>${storeinfo.storeInfoOpen}</label>
	</div>
	<div>
		<label >마감시간</label><label>${storeinfo.storeInfoClose}</label>
	</div>
	<div>
		<label >예약가능인원</label><label>${storeinfo.storeInfoMaxSeat}</label>
	</div>
	<div>
		<label >점포설명</label><label>${storeinfo.storeInfoInfo}</label>
	</div>
	<div>
		<label >
			<a href="store_update.sto?storeInfoId=${storeinfo.storeInfoId}">수정신청</a>
			<a href="store_delete.sto?storeInfoId=${storeinfo.storeInfoId}">입점취소신청</a>
		</label>
	</div>

</form>
</div>
</body>
</html>