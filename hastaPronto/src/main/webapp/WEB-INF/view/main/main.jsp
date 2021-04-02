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
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
	</head>
<body class="homepage">

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
								<li><a href="res/resList">RESTAURANT</a></li>
								<li><a href="../hastaPronto/schedule/main">PREMIUM LIFE</a></li>
								<li><a href="<c:url value='/wedding/wedBrochure'/>">WEDDING</a>
									<ul>
										<li><a href="<c:url value='/wedding/wedBrochure'/>">WEDDING HALL</a></li>
										<li><a href="<c:url value='/wedRes/wedResList'/>">WEDDING BUFFET</a></li>
										<li><a href="<c:url value='/wedCs/wedCsList'/>">COLSULTING</a></li>
										<li>
											<a href="<c:url value='/wedRv/wedRvList'/>">RESERVATION</a>
											<c:if test="${authInfo.grade == 'emp'}">
												<ul>
													<li><a href="<c:url value='/wedPay/wedPmList'/>">PAYMENT</a></li>
												</ul>
											</c:if>
										</li>
									</ul>
								</li>
							</ul>
						</nav>


					<!-- Banner -->
						<div id="banner">
							<div class="container">
								<section>
									<header class="major">
										<h2>Welcome to HastaPronto!</h2>
										<span class="byline"></span>
									</header>
									<c:if test="${authInfo == null }">
									<a href="<c:url value='/login/login'/>" class="button alt">Sign In</a>
									</c:if>
									<c:if test="${authInfo != null }">
									<a href="<c:url value='/login/logout'/>" class="button alt">Log Out</a>
									</c:if>
								</section>			
							</div>
						</div>

				</div>
			</div>

		<!-- Featured -->
			<div class="wrapper style2">
				<section class="container">
					<header class="major">
						<h2></h2>
						<span class="byline"></span>
					</header>
					<div class="row no-collapse-1">
						<section class="4u">
							<a href="#" class="image feature"></a>
							<p></p>
						</section>
						<section class="4u">
							<a href="#" class="image feature"></a>
							<p></p>
						</section>
						<section class="4u">
							<a href="#" class="image feature"></a>
							<p></p>
						</section>
	
					</div>
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
								<a href="<c:url value='/addPayStatement/notPayList'/>">체크아웃</a> |
							</c:if>
								<a href="<c:url value='/notice/notice'/>">지원공고</a> |
						</div>
				</div>
			</div>
	</body>
</html>