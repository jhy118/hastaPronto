<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1">
			<tr>
				<td colspan="4"><a>결제완료 페이지</a></td>
			</tr>
			<tr>
				<th>메뉴 이름</th>
				<th>메뉴 수량</th>
				<th>메뉴 금액</th>
			</tr>
			<c:forEach begin="0" end="${count}" var="idx">
				<tr>
					<td>${respay.resmenuDTO[idx].rtMenu}</td>
					<td>${respay.resStDTO[idx].oderSnum}</td>
					<td>${respay.resStDTO[idx].oderSchar}</td>
				</tr>
			</c:forEach>
			<tr>
					<th>총금액</th>
					<th>결제방법</th>
			</tr>
			<tr>
					<td>${respay.rtPmChar}</td>
					<td>${respay.rtPmMethod}</td>
			</tr>
			<tr><td>
				<input type="button" value="결제 취소"
				onclick="javascript:location.href
				='respayDelete?rtRvNo=${respay.rtRvNo}'"/>
		</table>
</body>
</html>