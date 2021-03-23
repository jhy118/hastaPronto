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
	<table border="1">
		<tr>
			<th>지원자 이름</th>
			<td>${applicant.appName}</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td>${applicant.appPh}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${applicant.appEmail}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${applicant.appAddr}</td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><fmt:formatDate value="${applicant.appBirth}" type="date"
					pattern="yyyy년 MM월 dd일" /></td>
		</tr>
		<tr>
			<th>성별</th>
			<td>${applicant.appGender}</td>
		</tr>
		<tr>
			<th>자기소개서</th>
			<td>${fn:replace(applicant.selfIntroduction, cn, br)}</td>
		</tr>
	</table>
	<input type="button" value="수정하기(직원수정 X)"
		onclick="javascript:location.href='<c:url value="/apc/applicantModify/${applicant.appNo}"/>';">
	<input type="button" value="뒤로가기" onclick="javascript:history.back();">
</body>
</html>