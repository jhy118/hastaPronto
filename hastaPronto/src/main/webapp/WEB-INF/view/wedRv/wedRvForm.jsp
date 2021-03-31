<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedRvForm.jsp</title>
</head>
<body>
<h1>웨딩 예약</h1>
<form:form action="wedRvOk" namd="frm" method="post"
		modelAttribute="wedRvCommand">
<%-- <input type="hidden" name="wedCosNo" value="${wedCsList.wedCosNo}" /> --%>
<input type="hidden" name="nYear" value="${wedRvCommand.nYear}" />
<input type="hidden" name="nMonth" value="${wedRvCommand.nMonth}" />
<input type="hidden" name="nDay" value="${wedRvCommand.nDay}" />
<table border="1">
	<caption>${wedRvCommand.nYear}년 
			${wedRvCommand.nMonth}월 
			${wedRvCommand.nDay}일 웨딩홀 예약</caption>
	<tr><th>웨딩홀 이름 *</th>
		<td>
			<select name="wedNo">
				<c:forEach items="${wedList}" var="dto">
					<option value="${dto.wedNo}">${dto.wedName}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>레스토랑 이름 *</th>
		<td>
			<select name="wedRtNo">
				<c:forEach items="${wedRtList}" var="dto">
					<option value="${dto.wedRtNo}">${dto.wedRtName}</option>
				</c:forEach>
			</select>			
		</td>
	</tr>
	<tr><th>예약시간 *</th>
		<td><select name="wedRvTime">
				<c:forEach begin="10" end="18" var="num">
					<option value =" ${num}:00:00">${num}:00</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>예상인원 *</th>
		<td>
			<form:input path="wedRvNum" />
			<form:errors path="wedRvNum" />		
		</td></tr>
	<tr><th>예약금 *</th>
		<td>
			<input type="text" name="wedRvChar" />
		</td></tr> 
	<tr>
		<td colspan="2" align ="center">
			<input type="submit" value="최종 예약" />
		</td>
	</tr>
</table>
</form:form>
</body>
</html>