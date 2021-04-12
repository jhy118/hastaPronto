
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Horizons by TEMPLATED</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
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
					<li><a href="right-sidebar.html">PREMIUM LIFE</a></li>
					<li><a href="no-sidebar.html">WEDDING</a></li>
				</ul>
			</nav>
		</div>
	</div>
	
<!-- Main -->
			<div id="main" class="wrapper style1">
				<section class="container">
					<header class="major">
						<h2>부서 수정</h2>
						<span class="byline"></span>
					</header>
					<form:form action="" method="post" modelAttribute="depCommand">
		<input type="hidden" name = "depNo" value="${dept.depNo}">
		<table border="1">
			<tr>
				<th>부서명</th>
				<td><input type="text" name="depName" value="${dept.depName}"></td>
			</tr>
			<tr>
				<th>부서주소</th>
				<td><input type="text" name="depAddr" value="${dept.depAddr}"></td>
			</tr>
			<tr>
				<th>부서연락처</th>
				<td><input type="text" name="depPh" value="${dept.depPh}"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정하기"> <input
					type="button" value="뒤로가기" onclick="javascript:history.back();"></th>
			</tr>
		</table>
	</form:form>
				</section>
			</div>

		<!-- Footer -->
			<div id="footer">
				<div class="container">

					<!-- Lists -->
						<div class="row">
							<div class="8u">
								<section>
									<header class="major">
										<h2></h2>
										<span class="byline"></span>
									</header>
									<div class="row">
										<section class="6u">
											
										</section>
										<section class="6u">
											
										</section>
									</div>
								</section>
							</div>
							<div class="4u">
								<section>
									<header class="major">
										<h2></h2>
										<span class="byline"></span>
									</header>
								</section>
							</div>
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