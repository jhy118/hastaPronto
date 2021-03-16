<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>annDetail.jsp</title>
</head>
<body>
<form action="annModify/${ann.annNo}" name="frm" method="post">
	<table border="1">
		<tr><th>글쓴이</th>
			<td>${ann.empId}</td></tr>
		<tr><th>제목</th>
			<td>${ann.annSubject}</td></tr>
		<tr><th>내용</th>
			<td>${ann.annContent}</td></tr>
		<tr><th>등록일</th>
			<td>${ann.annDate}</td></tr>
	</table>
	<input type="submit" value="수정" />
	<input type="button" value="뒤로가기" 
		onclick="javascript:location.href='annList'"/>
</form>
</body>
</html>