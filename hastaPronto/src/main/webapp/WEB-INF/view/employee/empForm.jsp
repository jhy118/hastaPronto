<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Hasta Pronto</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="<c:url value='/js/jquery.min.js'/>"></script>
<script src="<c:url value='/js/jquery.dropotron.min.js'/>"></script>
<script src="<c:url value='/js/skel.min.js'/>"></script>
<script src="<c:url value='/js/skel-layers.min.js'/>"></script>
<script src="<c:url value='/js/init.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/skel.css'/>" />
<link rel="stylesheet" href="<c:url value='/css/style.css'/>" />
</head>

<body class="homepage">
	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<h1>
				<a href="<c:url value='/'/>" id="logo">HASTA PRONTO</a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="<c:url value='/'/>">HASTA PRONTO</a></li>
					<li><a href="">ROOM</a>
						<ul>
							<c:forEach items="${roomList }" var="room">
								<li><a href="<c:url value='/room/roomInfo/${room.rmNo}'/>">${room.rmName }</a></li>
							</c:forEach>
						</ul></li>
					<li><a href="left-sidebar.html">RESTAURANT</a></li>
					<li><a href="../hastaPronto/schedule/main">PREMIUM LIFE</a></li>
					<li><a href="wedding/wedBrochure">WEDDING</a>
						<ul>
							<li><a href="wedding/wedBrochure">WEDDING HALL</a></li>
							<li><a href="wedRes/wedResList">WEDDING BUFFET</a></li>
							<li><a href="wedCs/wedCsList">COLSULTING</a></li>
							<li><a href="wedRv/wedRvList">RESERVATION</a>
								<ul>
									<li><a href="wedPay/wedPmList">PAYMENT</a></li>
								</ul></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- Main -->
	<div id="main" class="wrapper style1">
		<div class="container">
			<section>
				<header>
					<h2>Employee Form</h2>
				</header>
	<form:form action="empRegist" method="post" name = "frm" modelAttribute="empCommand">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><form:input path="empId" />
				<form:errors  path="empId" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><form:input path="empName"/>
				<form:errors path="empName"/></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="empPh" placeholder="010-1234-1234"/>
				<form:errors path="empPh"/></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="empEmail" placeholder="email@example.com"/>
				<form:errors path="empEmail"/></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><form:input path="empAddr"/>
				<form:errors path="empAddr"/></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" name="empBirth">
				<form:errors path="empBirth"/></td>
			</tr>
			<tr>
				<th>계좌번호</th>
				<td><form:input path="empAccount" placeholder="은행`0123-45-678910"/>
				<form:errors path="empAccount"/></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록하기">
				<input type="button" value="목록" onclick="javascript:location.href='empList'"></th>
			</tr>
		</table>
	</form:form>
</section>
		</div>
	</div>

	<!-- Footer -->
	<div id="footer">
		<div class="container">

			<!-- Lists -->
			<div class="row">
				<div class="8u"></div>
				<div class="4u"></div>
			</div>

			<!-- Copyright -->
			<div class="copyright">
				<c:if test="${authInfo.grade == 'emp' }">
					<a href="<c:url value='/emp/empList'/>">직원관리</a> |
								<a href="<c:url value='/dept/deptList'/>">부서관리</a> |
								<a href="<c:url value='/notice/notice'/>">지원공고</a> |
							</c:if>
			</div>

		</div>
	</div>

</body>
</html>