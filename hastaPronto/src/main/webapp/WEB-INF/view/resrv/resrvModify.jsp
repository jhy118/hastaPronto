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
	<form:form action="resrvModifyPro" method="post" modelAttribute="resrv">
	<form:hidden path="rtRvNo"/>
	<form:hidden path="rtNo"/>
		<table border = "1">
			<tr><td>테이블 번호</td><td><input type="text" name="rtRvTnum" value="${resrv.rtRvTnum }"></td></tr>
			<tr><td>인원수</td><td><input type="text" name="rtrvNum" value="${resrv.rtrvNum }"></td></tr>
			
			<tr><td>날짜</td>
			<td><input type="date" name="rtRvDay" 
			value="<fmt:formatDate value="${resrv.rtRvTime}" type="date" pattern="yyyy-MM-dd"/>">
			</td></tr>
			
			
			<tr><td>시간</td>
			<td><input type="text" name="rtRvTime" 
			value="<fmt:formatDate value="${resrv.rtRvTime}" type="date" pattern=" hh:mm:ss"/>">
			</td></tr>
			
		</table>
		<input type="submit" value="수정" />
		<input type="button" value="취소" onclick="javascript:history.back();">
	</form:form>
</body>
</html>