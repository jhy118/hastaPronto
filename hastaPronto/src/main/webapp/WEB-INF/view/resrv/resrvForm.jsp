<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="resrvFormPro" method="post" modelAttribute="resrvRegist">
		<form:hidden path="rtNo"/> 
		<table border = "1">
			<tr>
			<td>인원수</td>
			<td><form:input path="rtrvNum"/>
			<form:errors path="rtrvNum" /></td>
			</tr>
			<tr>
			<td>날짜</td>
			<td><input type="date" name="rtRvDay">
			</td>
			</tr>
			<tr>
			<td>시간</td>
			<td><select name="rtRvTime">
				<c:forEach begin="12" end="18" var="num">
					<option value =" ${num}:00:00">${num}:00</option>
				</c:forEach>
				</select>
			</td>
			</tr>
			<tr>
			<td>고객 아이디</td>
			<td><form:input path="userId"/>
			<form:errors path="userId" /></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="예약 등록">
				<input type="button" value="리스트로 가기" onclick="javascript:history.back();"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>