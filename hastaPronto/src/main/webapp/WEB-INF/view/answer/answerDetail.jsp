<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>answerDetail</title>
</head>
<body>
	<table border="1">
		<tr><td>답변 제목</td><td>${answer.ansSubject}</td></tr>
		<tr><td>답변 내용</td><td>${answer.ansContent}</td></tr>
		
		<tr><td colspan="2"><input type="button" value="수정" >
							<input type="button" value="뒤로가기" onclick="javascript:history.back();">
							<input type="button" value="문의 삭제" /></td></tr>
	</table>    
</body>
</html>