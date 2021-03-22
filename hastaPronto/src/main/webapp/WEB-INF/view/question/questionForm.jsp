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
	<form:form action="questionRegistPro" method="post" modelAttribute="question">
		<table border="1">
			<tr>
				<th>작성자 이름</th>
				<td><form:input path = "qnaWriter" />
					<form:errors path = "qnaWriter" />
				</td>
			</tr>
			<tr>   
				<th>작성자 비밀번호</th>
				<td><form:password path = "qnaPw" />
					<form:errors path = "qnaPw" />
				</td>
			</tr>  
			<tr>
				<th>문의 제목</th>
				<td><form:input path = "qnaSubject" />
					<form:errors path = "qnaSubject" />
				</td>
			</tr>
			<tr>
				<th>문의 내용</th>
				<td><form:textarea path="qnaContent" rows="15" cols="40" />
					<form:errors path = "qnaContent" />
				</td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="문의 등록">
				<input type="button" value="리스트로 가기" onclick="javascript:history.back();"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>