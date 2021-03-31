<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="<c:url value='dept/deptList'/>">부서</a><br />
	<a href="<c:url value='emp/empList'/>">직원</a><br />
	<a href="<c:url value='mem/memRegist'/>">회원가입</a><br />
	<a href="<c:url value='man/memList'/>">회원리스트</a><br />
	<a href="<c:url value='login/login'/>">로그인</a><br>
	<a href="<c:url value='ann/annList'/>">공지사항</a><br>
	<a href="<c:url value='notice/notice'/>">공고</a><br>
	<a href="<c:url value='question/question'/>">문의사항</a><br />
	<a href="<c:url value='goodsPaySt/goodsPayStList'/>">대금지급서</a><br />
	<a href="<c:url value='wedding/wedBrochure'/>">WEDDING</a><br />
	<a href="<c:url value='wedRes/wedResList'/>">WEDDING RESTAURANT</a><br />
	<a href="<c:url value='outsourcing/osList'/>">협력업체</a><br />
	<a href="<c:url value='osEmployees/osEmpList'/>">강사</a><br />
	<a href="<c:url value='res/resList'/>">레스토랑</a><br />
	<a href="<c:url value='resmenu/resmenuList'/>">레스토랑 메뉴</a><br />
	<a href="<c:url value='resrv/resrvList'/>">레스토랑 예약</a><br />
	<a href="<c:url value='schedule/main'/>">부가서비스</a><br />
	<a href="<c:url value='resSt/resStList'/>">레스토랑 주문서</a><br />
</body>
</html>