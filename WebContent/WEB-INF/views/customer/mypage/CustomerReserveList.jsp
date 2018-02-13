<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${reserveList}" var="bean">
	${bean.customerReserveNum}
	${bean.customerReserveCode}
	${bean.customerReserveCustomerNum}
	${bean.customerReservePersonnal}
	${bean.customerReserveDate}
	${bean.customerReserveTime}
	${bean.customerReserveMemo}
	${bean.customerReserveConfirm}
	<br>
	</c:forEach>
</body>
</html>