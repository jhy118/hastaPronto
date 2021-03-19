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
	<table border="1">
		<tr>
			<th>문의번호</th>
			<th>문의작성자</th>
			<th>문의제목</th>
			<th>문의날짜</th>
		</tr>
		<c:forEach items="${questionList }" varStatus="questionList" var="question">
			<tr onclick="javascript:location.href='questionDetail?qnaNo=${question.qnaNo}'">
			<th>${questionList.count }</th>
			<th>${question.qnaWriter }</th>
			<th>${question.qnaSubject }</th>
			<th>${question.qnaRegist }</th>
		</tr>
		</c:forEach>
	</table>
	<%@ include file = "../include/includePage.jsp" %>
	<a href="questionRegist">문의등록</a>
</body>
</html>

