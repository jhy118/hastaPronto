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
		<tr><td>레스토랑 번호</td><td>${res.rtNo }</td></tr>
		<tr><td>레스토랑 이름</td><td>${res.rtName }</td></tr>
		<tr><td>레스토랑 내용</td><td>${res.rtContent }</td></tr>
		<tr><td>레스토랑 사진</td><td>
		<c:forTokens items="${res.rtFile}" delims="`" var="rt">
		<img width="200" src="upload/${rt} ">
		</c:forTokens>
		</td></tr>
		<tr><td colspan="2"><input type="button" value="수정" 
				onclick="javascript:location.href='resModify?rtNo=${res.rtNo}'">
							<input type="button" value="뒤로가기" 
				onclick="javascript:history.back();">
							<input type="button" value="메뉴 삭제"
				onclick="javascript:location.href='resDelete?rtNo=${res.rtNo}'"/>
							<input type="button" value="예약 하기"
				onclick="javascript:location.href='../resrv/resrvList?rtNo=${res.rtNo}'">
				</td></tr>
	</table>
</body>
</html>