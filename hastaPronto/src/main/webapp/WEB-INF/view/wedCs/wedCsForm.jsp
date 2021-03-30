<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedCsForm.jsp</title>
<style type="text/css">
	.tbl{
		vertical-align: top;
		display: inline-block;
		margin: 15px;
	}
</style>
</head>
<body>
<h1>웨딩 예약 문의</h1>
<h4>
고객님께서 문의하신 내용은 빠른 시간 내에 연락처 또는 이메일로 답변을 드리겠습니다.<br />
궁금하신 점은 02-XXX-XXXX~X 로 문의 주시면 친절히 답변해 드리겠습니다.<br />
</h4>
<form:form action="wedCsRvOk" name="frm" method="post"
		modelAttribute="wedCsCommand">
<input type="hidden" name="nYear" value="${wedCsCommand.nYear}" />
<input type="hidden" name="nMonth" value="${wedCsCommand.nMonth}" />
<input type="hidden" name="nDay" value="${wedCsCommand.nDay}" />
<table>
<caption>
	${wedCsCommand.nYear}년 ${wedCsCommand.nMonth}월 ${wedCsCommand.nDay}일
</caption>
	<c:if test="${authInfo.grade == 'emp'}">	
		<tr><th>아이디</th>
			<td colspan="2"><input type="text" name="userId"></td></tr>
	</c:if>
	<tr><th>성명 *</th>
		<td colspan="2"><form:input path="wedCosName" />
			<form:errors path="wedCosName" /></td></tr>
	<tr><th>이메일 *</th>
		<td colspan="2"><form:input path="wedCosEmail" />
			<form:errors path="wedCosEmail" /></td></tr>
	<tr><th>연락처 *</th>
		<td colspan="2"><form:input path="wedCosPh" />
			<form:errors path="wedCosPh" /></td></tr>
	<tr><th>희망 예식일 </th>
		<td><input type="date" name="wedCosDay" /></td>
		<td><select name="wedCosTime">
				<c:forEach begin="10" end="18" var="num">
					<option value =" ${num}:00:00">${num}:00</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>예상인원</th>
		<td colspan="2"><input type="text" name="wedCosNum" /></td></tr>
	<tr><th>희망예식장</th>
		<td colspan="2">
			<select name="wedNo">
				<c:forEach items="${list}" var="dto">
					<option value="${dto.wedNo}">${dto.wedName}</option>
				</c:forEach>
			</select>
		</td>
	</tr> 
	<tr><th>기타 문의사항</th>
		<td colspan="2"><input type="text" name="wedCosContent"  /></td></tr>
</table> 
<input type="submit" value="상담예약 접수"/>
</form:form>
</body>
</html>