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
	<table border = "1">
		<tr><td>메뉴 이름</td><td>${resmenu.rtMenu }</td></tr>
		<tr><td>메뉴 가격</td><td>${resmenu.rtMenuChar }</td></tr>
		<tr><td>메뉴 내용</td><td>${resmenu.rtMenuCon }</td></tr>
		<tr><td>메뉴 사진</td><td>
		<c:forTokens items="${resmenu.rtMenuImage }" delims="`" var="rm">
		<img width="200" src="upload/${rm }">
		</c:forTokens>
		</td></tr>
		<tr><td colspan="2"><input type="button" value="수정" 
				onclick="javascript:location.href='resmenuModify?rtMenuNo=${resmenu.rtMenuNo}'">
							<input type="button" value="뒤로가기" 
				onclick="javascript:history.back();">
							<input type="button" value="메뉴 삭제" 
				onclick="javascript:location.href
				='resmenuDelete?rtMenuNo=${resmenu.rtMenuNo}&rtNo=${resmenu.rtNo }'"/></td></tr>
	</table>
</body>
</html>