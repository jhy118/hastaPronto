<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>annList.jsp</title>
</head>
<body>
<h2>NOTICE</h2>
	<a href="annForm">공지 등록하기</a>
<table border="1">
<c:if test="${count > 0}">   
   <tr>
      <th>글번호</th><th>제목</th><th>작성자</th><th>등록일</th><th>조회수</th>
   </tr>
   <c:forEach items="${list}" var="dto" varStatus="status">
	   <tr>
	      <th>${status.count}</th>
	      <th>${dto.annSubject}</th>
	      <th>${dto.empId}</th>
	      <th>${dto.annDate}</th>
	      <th>${dto.readCount}</th>
	   </tr>
   </c:forEach>
</c:if>   
<c:if test="${count <= 0}">
	공지글이 없습니다.<br />   
</c:if>   
</table>
</body>
</html>