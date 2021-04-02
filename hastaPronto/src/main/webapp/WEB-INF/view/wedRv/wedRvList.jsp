<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE HTML>
<!--
	Horizons by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>No Sidebar - Horizons by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="<c:url value='/js/jquery.min.js'/>"></script>
		<script src="<c:url value='/js/jquery.dropotron.min.js'/>"></script>
		<script src="<c:url value='/js/skel.min.js'/>"></script>
		<script src="<c:url value='/js/skel-layers.min.js'/>"></script>
		<script src="<c:url value='/js/init.js'/>"></script>
		<noscript>
		</noscript>
			<link rel="stylesheet" href="<c:url value='/css/skel.css'/>" />
			<link rel="stylesheet" href="<c:url value='/css/style.css'/>" />
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="no-sidebar">

		<!-- Header -->
			<div id="header">
				<div class="container">
						
					<!-- Logo -->
						<h1><a href="<c:url value='/'/>" id="logo">HASTA PRONTO</a></h1>					
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="<c:url value='/'/>">HASTA PRONTO</a></li>
								<li><a href="#">ROOM</a></li>
								<li><a href="<c:url value='/res/resList'/>">RESTAURANT</a></li>
								<li><a href="#">PREMIUM LIFE</a></li>
								<li><a href="<c:url value='/wedding/wedBrochure'/>">WEDDING</a>
									<ul>
										<li><a href="<c:url value='/wedding/wedBrochure'/>">WEDDING HALL</a></li>
										<li><a href="<c:url value='/wedRes/wedResList'/>">WEDDING BUFFET</a></li>
										<li><a href="<c:url value='/wedCs/wedCsList'/>">COLSULTING</a></li>
										<li>
											<a href="<c:url value='/wedRv/wedRvList'/>">RESERVATION</a>
											<c:if test="${authInfo.grade == 'emp'}">
												<ul>
													<li><a href="<c:url value='/wedRv/wedRvList'/>">PAYMENT</a></li>
												</ul>
											</c:if>
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
							<h2>Reservation</h2>
						</header><br /><br /><br />
					
						<table border="1">
							<caption>웨딩 예약</caption>
							<tr>
								<td colspan="7" align="center"><a
									href="wedRvList?nYear=${nYear}&nMonth=${nMonth}&action=previous">이전달</a>
									${nYear}년 ${nMonth}월 <a
									href="wedRvList?nYear=${nYear}&nMonth=${nMonth}&action=next">다음달</a>
								</td>
							</tr>
							<tr>
								<c:forEach begin="1" end="42" var="num">
									<td>
										<div>
											<c:set var="value1" value="${num-dayNum+1}" />
											<c:set var="value2" value="${num-maxDay-1}" />
											<c:if test="${num lt dayNum}"></c:if>
											<c:if test="${num ge dayNum && num lt dayNum + maxDay}">
												<a
													href="wedRvForm?nYear=${nYear}&nMonth=${nMonth}&nDay=${value1}">
													${value1} </a>
											</c:if>
											<%-- 			<c:if test="${num ge dayNum + maxDay}">${value2}</c:if> --%>

											<c:forEach items="${list}" var="dto" varStatus="status">
												<c:if
													test="${dto.nYear eq nYear 
						&& dto.nMonth eq nMonth 
						&& dto.nDay eq fn:replace(value1, ' ','')}">
													<a
														href='wedRvInfo?wedRvNo=${dto.wedRvNo}&nYear=${nYear}&nMonth=${nMonth}&nDay=${value1}';">
														${dto.wedRvNo} / ${dto.wedRvTime} 예약완료 </a>
												</c:if>
											</c:forEach>
										</div>
									</td>
									<c:if test="${num % 7 == 0 && num != 42}">
							</tr>
							<tr>
								</c:if>
								</c:forEach>
							</tr>
						</table>
						
						
						
					
					</section>
				</div>
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