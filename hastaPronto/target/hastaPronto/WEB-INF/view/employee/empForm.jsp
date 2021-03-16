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
	<form:form action="empRegist" method="post" name = "frm" modelAttribute="empCommand">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><form:input path="empId" />
				<form:errors  path="empId" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><form:input path="empName"/>
				<form:errors path="empName"/></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="empPh" placeholder="010-1234-1234"/>
				<form:errors path="empPh"/></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="empEmail" placeholder="email@example.com"/>
				<form:errors path="empEmail"/></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><form:input path="empAddr"/>
				<form:errors path="empAddr"/></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" name="empBirth">
				<form:errors path="empBirth"/></td>
			</tr>
			<tr>
				<th>계좌번호</th>
				<td><form:input path="empAccount" placeholder="은행`0123-45-678910"/>
				<form:errors path="empAccount"/></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록하기">
				<input type="button" value="목록" onclick="javascript:location.href='empList'"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>