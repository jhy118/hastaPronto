<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HastaPronto</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700'
	rel='stylesheet' type='text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="../js/skel.min.js"></script>
<script src="../js/skel-panels.min.js"></script>
<script src="../js/init.js"></script>
<noscript>
	<link rel="stylesheet" href="../css/skel-noscript.css" />
	<link rel="stylesheet" href="../css/style.css" />
</noscript>
</head>
<body>

	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="<c:url value='/main'/>">HastaPronto</a>
				</h1>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="<c:url value='/main'/>">HastaPronto</a></li>
					<li class="active"><a href="<c:url value='/room/'/>">Room</a></li>
					<li><a href="twocolumn1.html">Left Sidebar</a></li>
					<li><a href="twocolumn2.html">Right Sidebar</a></li>
					<li><a href="onecolumn.html">No Sidebar</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- Header -->

	<!-- Main -->
	<div id="main">
		<div class="container">
			<div class="row">

				<!-- Content -->
				<div id="content" class="12u skel-cell-important">
					<section>
						<header>
							<h2>객실 목록</h2>
						</header>
						<table>
							<c:forEach items="${roomList }" var="room">
								<c:set value="${fn:split(room.rmFile, '`')}" var="rmImg" />
								<tr>
									<td><img alt="사진" src="upload/${rmImg[0]}" width="200"
										onclick="javascript:location.href='roomInfo/${room.rmNo}'"></td>
									<td>${room.rmName}</td>
								</tr>
							</c:forEach>
						</table>
						<c:if test="${authInfo.grade == 'emp'}">
						<a href="roomRegist">등록하기</a>
						</c:if>
					</section>
				</div>
				<!-- /Content -->

			</div>

		</div>
	</div>
	<!-- Main -->

	<!-- Footer -->
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="3u"></div>
			</div>
		</div>
	</div>
	<!-- Footer -->

	<!-- Copyright -->
	<div id="copyright">
		<div class="container"></div>
	</div>
</body>
</html>