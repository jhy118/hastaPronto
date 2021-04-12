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
				<h2></h2>
				<span class="byline"></span>
			</header>
			<div class="row no-collapse-1">
				<form:form action="login" method="post" name="frm"
					modelAttribute="loginCommand">
					<table border="1">
						<tr>
							<th>아이디</th>
							<td><form:input path="loginId" /><p> <form:errors
									path="loginId" /></p>${notMachedId }</td>
							<th rowspan="2"><input type="submit" value="로그인" /><br/><br/>
							<input type="button" value="회원가입" 
							onclick="javascript:location.href='<c:url value="/mem/memRegist"/>'"></th>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="loginPw" /> <form:errors
									path="loginPw" />${notMachedPw }</td>
						</tr>
					</table>
				</form:form>
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
							<section class="6u"></section>
							<section class="6u"></section>
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
			<div class="copyright"></div>

		</div>
	</div>

</body>
</html>