<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberForm</title>
</head>
<body>
	<form:form action="memRegist" method="post" name="frm" modelAttribute="memCommand">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><form:input path="memId" />
				<form:errors path="memId" /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<form:password path="memPw" id="memPw" />
					<form:errors path="memPw" />
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
					<form:password path="memPwCon" id="memPwCon" />
					<form:errors path="memPwCon" />
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><form:input path="memName" />
				<form:errors path="memName" /></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="memPh" />
				<form:errors path="memPh" /></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="memEmail" />
				<form:errors path="memEmail" /></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><form:input path="memAddr" />
				<form:errors path="memAddr" /></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><form:input path="memBirth"/>
				<form:errors path="memBirth" /></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<form:radiobutton path="memGender" id="memGender" value="M"
						checked="checked" />
					남
					<form:radiobutton path="memGender" id="memGender" value="F" />
					여
				</td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="회원등록">
				<input type="button" value="목록" onclick="javascript:location.href='memList'"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>