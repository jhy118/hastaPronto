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
	<form:form action="answerRegistPro" method="post" modelAttribute="answer">
	<input type="hidden" name="qnaNo" value="${answer.qnaNo}">     
	<input type="hidden" name="userId" value="${answer.userId}">    
		<table border="1">
			<tr>   
				<th>답변 제목</th>
				<td><form:input path = "ansSubject" />   
				</td>    
			</tr>     
			<tr>
				<th>답변 내용</th>
				<td><form:textarea path="ansContent" rows="15" cols="40" />
				</td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="답변 등록">
				<input type="button" value="리스트로 가기" onclick="javascript:history.back();"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>