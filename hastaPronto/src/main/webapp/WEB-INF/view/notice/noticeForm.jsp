<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" modelAttribute="noticeCommand" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>공고 제목</th>
				<td><form:input path="noticeName"/>
				<form:errors path="noticeName"/></td>
			</tr>
			<tr>
				<th>시작일</th>
				<td><input type="datetime-local" name="startDate"/>
				<form:errors path="startDate"/></td>
			</tr>
			<tr>
				<th>마감일</th>
				<td><input type="datetime-local" name="endDate"/>
				<form:errors path="endDate"/></td>
			</tr>
			<tr>
				<th>발표일</th>
				<td><input type="datetime-local" name="announceDate"/>
				<form:errors path="announceDate"/></td>
			</tr>
			<tr>
				<th>공고 내용</th>
				<td><form:textarea path="noticeContent" cols="40" rows="15"/>
				<p><form:errors path="noticeContent"/></p></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="noticeFile" multiple="multiple"/></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="공지등록">
				<input type="button" value="목록" onclick="javascript:history.back();"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>