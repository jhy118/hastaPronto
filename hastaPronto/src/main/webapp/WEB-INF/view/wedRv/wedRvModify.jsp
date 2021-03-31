<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedRvModify.jsp</title>
</head>
<body>
<form:form action="wedRvModifyOk" name="frm" method="post" 
	modelAttribute="wedRvCommand">
<input type="hidden" name="wedRvNo" value="${wedRvList.wedRvNo}" />
<input type="hidden" name="nYear" value="${wedRvCommand.nYear}" />
<input type="hidden" name="nMonth" value="${wedRvCommand.nMonth}" />
<input type="hidden" name="nDay" value="${wedRvCommand.nDay}" />
<table border="1">
	<caption>${wedRvCommand.nYear}년 
			${wedRvCommand.nMonth}월 
			${wedRvCommand.nDay}일 웨딩홀 예약</caption>
	<tr><th>웨딩홀 이름 </th>
		<td>
			<select name="wedNo">
				<c:forEach items="${wedArrayList}" var="dto">
					<option value="${dto.wedNo}">${dto.wedName}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>레스토랑 이름</th>
		<td>
			<select name="wedRtNo">
				<c:forEach items="${wedRtArrayList}" var="dto">
					<option value="${dto.wedRtNo}" selected="selected">${dto.wedRtName}</option>
				</c:forEach>
			</select>			
		</td>
	</tr>
	<tr><th>예약시간</th>
		<td><select name="wedRvTime">
				<c:forEach begin="10" end="18" var="num">
					<option value =" ${num}:00:00">${num}:00</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>예상인원</th>
		<td>
			<input type="text" name="wedRvNum" value="${wedRvList.wedRvNum}" />		
		</td></tr>
	<tr><th>예약금</th>
		<td>
			<input type="text" name="wedRvChar" value="${wedRvList.wedRvChar}" />
		</td></tr> 
	<tr>
		<td colspan="2" align ="center">
			<input type="submit" value="예약 변경" />
		</td>
	</tr>
</table>
</form:form>
</body>
</html>