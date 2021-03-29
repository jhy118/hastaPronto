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
		<tr><td>테이블 번호</td><td>${resrv.rtRvTnum }</td></tr>
		<tr><td>인원수</td><td>${resrv.rtrvNum }</td></tr>
		<tr><td>시간</td><td>${resrv.rtRvTime }</td></tr>
		<tr><td colspan="2"><input type="button" value="수정" 
				onclick="javascript:location.href='resrvModify?rtRvNo=${resrv.rtRvNo}'">
							<input type="button" value="뒤로가기" 
				onclick="javascript:history.back();">
							<input type="button" value="예약 삭제" 
				onclick="javascript:location.href
				='resrvDelete?rtRvNo=${resrv.rtRvNo}&rtNo=${resrv.rtNo }'"/>
							<input type="button" value="메뉴보기" 
				onclick="javascript:location.href='../resmenu/resmenuList?rtNo=${rtNo}&rtRvNo=${resrv.rtRvNo}'"></td></tr>
	</table>
</body>
</html>