<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedPayForm.jsp</title>
</head>
<body>
<form:form action="wedPayOk" name="frm" method="post" modelAttribute="wedRvCommand">
<input type="hidden" name="wedRvNo" value="${wedRvList.wedRvNo}" />
<input type="hidden" name="wedPmChar" value="${wedList.wedChar-(0.1*wedList.wedChar)
				+wedRtList.wedRtChar-(0.1*wedRtList.wedRtChar)}" />
<input type="hidden" name="userId" value="${wedRvList.userId}" />
<table border="1">
	<tr>
		<th>고객ID</th>
		<td>
			${wedRvList.userId}
		</td>
	</tr>
	<tr>
		<th>이용 일자</th>
		<td>${wedRvCommand.nYear}년 
			${wedRvCommand.nMonth}월  
			${wedRvCommand.nDay}일
			${wedRvList.wedRvTime}
		</td>
	</tr>
	<tr>
		<th>결제방법</th>
		<td>
			<select name="wedPmMethod">
				<option value="카드 결제">카드결제</option>
				<option value="현금 결제">현금결제</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>선결제금액</th>
		<td>
			${(0.1*wedList.wedChar)+(0.1*wedRtList.wedRtChar)}원
		</td>
	</tr>
	<tr>
		<th>웨딩홀 결제금액</th>
		<td>
			${wedList.wedChar - (0.1*wedList.wedChar)}원
		</td>
	</tr>
	<tr>
		<th>웨딩홀 뷔페 결제금액</th>
		<td>
			${wedRtList.wedRtChar - (0.1*wedRtList.wedRtChar)}원
		</td>
	</tr>
	<tr>
		<th>최종 결제금액</th>
		<td>${wedList.wedChar-(0.1*wedList.wedChar)
				+wedRtList.wedRtChar-(0.1*wedRtList.wedRtChar)}원</td>
	</tr>
</table>
<input type="submit" value="결제하기" />
</form:form>
</body>
</html>