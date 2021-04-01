
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
<script>
	function deleteDept(depName, depNo) {
		if (confirm(depName + '부서를 삭제하시겠습니까?')) {
			location.href = 'deptDelete/' + depNo;
		}
	}
</script>
	</head>
<body class="homepage">

		<!-- Header -->
			<div id="header">
				<div class="container">
						
					<!-- Logo -->
						<h1><a href="<c:url value='/'/>" id="logo">HASTA PRONTO</a></h1>
					
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
								<li><a href="right-sidebar.html">PREMIUM LIFE</a></li>
								<li><a href="no-sidebar.html">WEDDING</a></li>
							</ul>
						</nav>

				</div>
			</div>

		<!-- Featured -->
			<div class="wrapper style2">
				<section class="container">
					<header class="major">
						<h2>부서 목록</h2>
						<span class="byline"></span>
					</header>
					<table border="1">
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서주소</th>
			<th>부서연락처</th>
			<th>부서 수 : ${count }</th>
		</tr>
		<c:forEach items="${departments}" var="dep">
			<tr>
				<td>${dep.depNo}</td>
				<td>${dep.depName}</td>
				<td>${dep.depAddr}</td>
				<td>${dep.depPh}</td>
				<td>
					<button onclick="javascript:location.href='deptModify/${dep.depNo}';">수정</button>
					<button onclick="deleteDept('${dep.depName}', '${dep.depNo }');">삭제</button>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="5"><%@include file="../include/includePage.jsp"%></th>
		</tr>
	</table>
	<a href="deptRegist">부서등록</a>
				</section>
			</div>

		<!-- Main -->
			<div id="main" class="wrapper style1">
				<section class="container">
					<header class="major">
						<h2></h2>
						<span class="byline"></span>
					</header>
					<div class="row">
					
						<!-- Content -->
							<div class="6u">
								<section>
									<ul class="style">
									</ul>
								</section>
							</div>
							<div class="6u">
								<section>
									<ul class="style">
									</ul>
								</section>
							</div>

					</div>
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