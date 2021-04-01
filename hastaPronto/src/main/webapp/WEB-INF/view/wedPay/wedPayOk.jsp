<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedPayOk.jsp</title>
</head>
<body>
결제가 완료되었습니다~!<br />
<a href="wedPmInfo?wedNo=${list.wedPmNo}">나의 결제내역 보기</a><br />
<a href="../wedRv/wedRvList">메인으로</a><br />
<c:if test="${authInfo.grade == 'emp'}">
<a href="wedPmList">결제리스트</a>
</c:if>
</body>
</html>