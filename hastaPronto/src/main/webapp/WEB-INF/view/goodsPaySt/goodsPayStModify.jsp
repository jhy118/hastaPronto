<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsPayStModify.jsp</title>
</head>
<body>
<form action="goodsPayStModOk" name="frm" method="post">
<input type="hidden" name="goodsPayNo" value="${gps.goodsPayNo}"/>
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
		<td><input type="text" name="orderContent" value="${gps.orderContent}"></td></tr>
	<tr><th>상세내용</th>
		<td><textarea rows="30" cols="50" name="detContent">${gps.detContent}</textarea>
		</td></tr>
	<tr><th>지급총금액</th>
		<td><input type="text" name="allPayment" value="${gps.allPayment}">원</td></tr>	
</table>
<input type="submit" value="수정완료" />
<input type="button" value="취소" onclick="javascript:history.back();"/>
</form>
</body>
</html>