<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" modelAttribute="appCommand">
		<table border="1">
			<tr>
				<th>이름</th>
				<td><form:input path="appName"/>
				<form:errors path="appName"/>
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="appPh" placeholder="010-0000-0000"/>
				<form:errors path="appPh"/></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="appEmail" placeholder="emailId@email.com"/>
				<form:errors path="appEmail"/></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="appPw"/>
				<form:errors path="appPw"/></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="appPwCon"/>
				<form:errors path="appPwCon"/></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" name="appBirth"/>
				<form:errors path="appBirth"/></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><form:radiobutton path="appGender" value="남"/> 남자
				<form:radiobutton path="appGender" value="여"/> 여자
				<form:errors path="appGender"/>
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><form:input path="appAddr"/>
				<form:errors path="appAddr"/></td>
			</tr>
			<tr>
				<th>자기소개서</th>
				<td><form:textarea cols="40" rows="30" path="selfIntroduction"/>
				<p><form:errors path="selfIntroduction"/></p></td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="submit" value="제출하기">
				<input type="reset" value="다시쓰기">
				<input type="button" value="뒤로가기" onclick="javascript:history.back()">
				</th>
			</tr>
		</table>
	</form:form>
</body>
</html>