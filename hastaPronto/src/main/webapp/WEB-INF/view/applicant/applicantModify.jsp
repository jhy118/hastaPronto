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
								<li><a href="<c:url value='/'/>" >HASTA PRONTO</a></li>
								<li>
									<a href="">ROOM</a>
									<ul>
										<c:forEach items="${roomList }" var="room">
										<li><a href="<c:url value='/room/roomInfo/${room.rmNo}'/>">${room.rmName }</a></li>
										</c:forEach>
									</ul>
								</li>
								<li><a href="left-sidebar.html">RESTAURANT</a></li>
								<li><a href="../hastaPronto/schedule/main">PREMIUM LIFE</a></li>
								<li><a href="wedding/wedBrochure">WEDDING</a>
									<ul>
										<li><a href="wedding/wedBrochure">WEDDING HALL</a></li>
										<li><a href="wedRes/wedResList">WEDDING BUFFET</a></li>
										<li><a href="wedCs/wedCsList">COLSULTING</a></li>
										<li>
											<a href="wedRv/wedRvList">RESERVATION</a>
											<ul>
												<li><a href="wedPay/wedPmList">PAYMENT</a></li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</nav>
		</div>
	</div>
	<!-- Main -->
	<div id="main" class="wrapper style1">
		<div class="container">
			<section>
				<header>
					<h2>Applicant Modify Form</h2>
				</header>
	<form:form method="post" modelAttribute="applicant">
		<input type="hidden" name="appNo" value="${applicant.appNo}">
		<table border="1">
			<tr>
				<th>지원자 이름</th>
				<td>${applicant.appName}</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="appPh"/></td>
			</tr>
			<tr>
				<th>이메일<form:hidden path="appEmail"/></th>
				<td>${applicant.appEmail}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><form:input path="appAddr"/></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><fmt:formatDate value="${applicant.appBirth}" type="date"
						pattern="yyyy년 MM월 dd일" /></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${applicant.appGender}</td>
			</tr>
			<tr>
				<th>자기소개서</th>
				<td><form:textarea path="selfIntroduction" cols="30" rows="20"/></td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="submit" value="수정하기">
				<input type="button" value="뒤로가기" onclick="javascript:history.back();">
				</th>
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