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
<form:form modelAttribute="manModify" action="../memberModifyPro" method="post">
<input type="hidden" name="memId" value="${memberCommand.userId}">  
아이디 : ${memberCommand.userId }<br />
이름 : ${memberCommand.userName }<br />  
연락처 : <input type="text" name="memPh" value="${memberCommand.userPh}" /><br />
이메일 : <input type="text" name="memEmail" value="${memberCommand.userEmail}" /><br />
주소 : <input type="text" name="memAddr" value="${memberCommand.userAddr}" /><br />
생년월일 : <fmt:formatDate value="${memberCommand.userBirth}" type="date" pattern="yyyy-MM-dd" /><br />
<input type="submit" value="수정" />
<input type="button" value="취소" onclick="javascript:history.back();">
</form:form>     
</body>
</html>   