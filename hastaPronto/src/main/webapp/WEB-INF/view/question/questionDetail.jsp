
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>questionDetail</title>
</head>
<body>
	<table border="1">
		<tr><td>작성자 아이디</td><td>${questionWeb.userId}</td></tr>
		<tr><td>작성자 비밀번호</td><td>${questionWeb.qnaPw}</td></tr>
		<tr><td>문의 제목</td><td>${questionWeb.qnaSubject}</td></tr>
		<tr><td>문의 내용</td><td>${fn:replace(questionWeb.qnaContent, cn, br)}</td></tr>
		<tr><td>문의 등록일</td><td>${questionWeb.qnaRegist}</td></tr>
		<tr><td colspan="2"><input type="button" value="수정" onclick="javascript:location.href='questionModify?qnaNo=${questionWeb.qnaNo}'">
							<input type="button" value="뒤로가기" onclick="javascript:history.back();">
							<input type="button" value="문의 삭제" onclick="javascript:location.href='questionDelete?qnaNo=${questionWeb.qnaNo}'"/></td></tr>
	</table>
</body>
</html>