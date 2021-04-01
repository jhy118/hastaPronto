<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Monochromed by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/skel.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/skel-panels.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/init.js"></script>
	<noscript>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/skel-noscript.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
	</noscript>
	</head>
	<body>

	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="<c:url value='/'/>">Hasta Pronto</a>
				</h1>
				<span></span>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="active"><a href="<c:url value='/'/>">Hasta Pronto</a></li>
					<li><a href="<c:url value='/room/'/>">Room</a></li>
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

					<!-- Sidebar -->
						<div id="sidebar" class="4u">
							<section>
								<header>
									<h2></h2>
									<span class="byline"></span>
								</header>
								<p></p>
								<ul class="default">
								</ul>
							</section>
						</div>
					<!-- Sidebar -->
				
					<!-- Content -->
						<div id="content" class="8u skel-cell-important">
							<section>
								<header>
									<h2></h2>
									<span class="byline"></span>
								</header>
								<p><a href="#" class="image full"><img src="" alt=""></a></p>
								<p></p>
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
					<div class="3u">
						<section>
							<ul class="style1">
								<li><img src="" width="" height="" alt="">
									<p></p>
									<p class="posted"></p>
								</li>
								<li><img src="" width="" height="" alt="">
									<p></p>
									<p class="posted"></p>
								</li>
								<li><img src="" width="" height="" alt="">
									<p></p>
									<p class="posted"></p>
								</li>
							</ul>
						</section>
					</div>
					<div class="3u">
						<section>
							<ul class="style1">
								<li class="first"><img src="" width="" height="" alt="">
									<p></p>
									<p class="posted"></p>
								</li>
								<li><img src="" width="" height="" alt="">
									<p></p>
									<p class="posted"></p>
								</li>
								<li><img src="" width="" height="" alt="">
									<p></p>
									<p class="posted"></p>
								</li>
							</ul>
						</section>				
					</div>
					<div class="6u">
						<section>
							<header>
								<h2></h2>
							</header>
							<p></p>
							<ul class="default">
								
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
	<!-- Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
			</div>
		</div>

	</body>
</html>