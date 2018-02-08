<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사장님회원가입</title>
</head>
<body>
	<div align="center">
		<h1>회원 가입</h1>
		<form method="post" action="stojoin.sto">


			<div class="form-group">
				<label for="code">업소코드</label> <select class="form-control"
					id="code">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</div>
			<div class="form-group">
				<label>아이디</label>
				<!-- BoardDto 클래스의 필드랑 맵핑하기위해 name을 필드랑 동일하게작성 -->
				<label><input type="text" name="StoreInfoId" /></label>
			</div>
			<div class="form-group">
				<label>패스워드</label> <label><input type="password" name="pwd" /></label>
			</div>
			<div class="form-group">
				<label>업소 명</label> <label><input type="text" name="name" /></label>
			</div>
			<div class="form-group">
				<label>업소 주소</label> <label><input type="text" name="addr" /></label>
			</div>
			<div class="form-group">
				<label>업소 전화번호</label> <label><input type="text"
					name="phone" /></label>
			</div>
			<div class="form-group">
				<label>사장님 전화번호</label> <label><input type="text"
					name="mobile" /></label>
			</div>
			<div class="form-group">
				<label for="cate">분류</label> <select class="form-control"
					id="cate">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</div>
			<div class="form-group">
				<label>사업자번호</label> <label><input type="text"
					name="license" /></label>
			</div>
			<div class="form-group">
				<label for="open">오픈시간</label> <select class="form-control"
					id="open">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</div>
			<div class="form-group">
				<label for="close">마감시간</label> <select class="form-control"
					id="close">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</div>
			<div class="form-group">
				<label>분위기</label> <label class="checkbox-inline"><input
					type="checkbox" value="">Option 1</label> <label
					class="checkbox-inline"><input type="checkbox" value="">Option
					2</label> <label class="checkbox-inline"><input type="checkbox"
					value="">Option 3</label>
			</div>


			<div class="form-group">
				<label for="max">최대예약가능인원</label> <select class="form-control"
					id="max">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</div>


			<div class="form-group">
				<label for="info">매장정보(간단히)</label>
				<textarea class="form-control" rows="5" id="info"></textarea>
			</div>
			<div class="form-group">
				<label> <input type="submit" value="입점신청"> <input
					type="button" value="인덱스"
					onclick="location.href='Storeindex.jsp'" />
				</label>
			</div>

		</form>
	</div>
</body>
</html>