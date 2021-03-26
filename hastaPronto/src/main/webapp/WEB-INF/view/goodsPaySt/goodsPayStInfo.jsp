<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsPayStInfo.jsp</title>
</head>
<body>
<table border="1">
	<tr><th>업체번호</th>
		<td>${gps.osNo}</td></tr>
	<tr><th>업체이름</th>
		<td>${osList.osName}</td></tr>
	<tr>
		<th>대금지급날짜</th>
		<td>
			<fmt:formatDate value="${gps.paymentDate}" type="date"
				pattern = "yyyy-MM-dd" />
		</td>
	</tr>
	<tr><th>품목이름</th>
		<td>${gps.orderContent}</td></tr>
	<tr><th>상세내용</th>
		<td>${fn:replace(gps.detContent,cn,br)}</td></tr>
	<tr><th>지급총금액</th>
		<td>${gps.allPayment}원</td></tr>	
</table>
	<a href="../goodsPayStModify?goodsPayNo=${gps.goodsPayNo}">수정</a>
	<a href="../goodsPayStDelete?goodsPayNo=${gps.goodsPayNo}">삭제</a>	
</body>
</html>