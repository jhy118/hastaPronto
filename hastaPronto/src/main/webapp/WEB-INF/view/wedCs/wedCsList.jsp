<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Hasta pronto</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="../js/skel.min.js"></script>
		<script src="../js/skel-panels.min.js"></script>
		<script src="../js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	</head>
	<body>

	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">Hasta Pronto</a>
				</h1>
				<span>Design by JEONG-HANYONG JO</span>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="../main">Homepage</a></li>
					<li><a href="../wedding/wedBrochure">웨딩홀</a></li>
					<li><a href="../wedRes/wedResList">레스토랑</a></li>
					<li class="active"><a href="wedCsList">상담 문의</a></li>
					<li><a href="../wedRv/wedRvList">상담 예약 & 결제</a></li>
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
				<div id="content" class="8u skel-cell-important">
					<section>
						<table border="1">
							<caption>웨딩 상담 일정 예약하기</caption>
							<tr>
								<td colspan="7" align="center"><a
									href="wedCsList?nYear=${nYear}&nMonth=${nMonth}&action=previous">이전달</a>
									${nYear}년 ${nMonth}월 <a
									href="wedCsList?nYear=${nYear}&nMonth=${nMonth}&action=next">다음달</a>
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
													href="wedCsForm?nYear=${nYear}&nMonth=${nMonth}&nDay=${value1}">
													${value1} </a>
											</c:if>
											<%-- 			<c:if test="${num ge dayNum + maxDay}">${value2}</c:if> --%>

											<c:forEach items="${list}" var="dto" varStatus="status">
												<c:if
													test="${dto.nYear eq nYear 
						&& dto.nMonth eq nMonth 
						&& dto.nDay eq fn:replace(value1, ' ','')}">
													<c:if
														test="${authInfo.grade == 'emp' or authInfo.loginId == dto.userId}">
														<a href='wedCsInfo?wedCosNo=${dto.wedCosNo}';">
															${dto.wedCosNo}번 고객/${dto.wedCosName} 예약완료 </a>
													</c:if>
													<c:if
														test="${authInfo.grade != 'emp' or authInfo.loginId != dto.userId}">
								${dto.wedCosNo}번 고객/${dto.wedCosName} 예약완료<br />
													</c:if>
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
				<!-- /Content -->

				<!-- Sidebar -->
				<div id="sidebar" class="4u">
					<section>
						<header>
							<h2>Gravida praesent</h2>
							<span class="byline">Praesent lacus congue rutrum</span>
						</header>
						<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus
							at urna congue rutrum. Maecenas luctus lectus at sapien.
							Consectetuer adipiscing elit.</p>
						<ul class="default">
							<li><a href="#">Pellentesque quis lectus gravida
									blandit.</a></li>
							<li><a href="#">Lorem ipsum consectetuer adipiscing
									elit.</a></li>
							<li><a href="#">Phasellus nec nibh pellentesque congue.</a></li>
							<li><a href="#">Cras aliquam risus pellentesque
									pharetra.</a></li>
							<li><a href="#">Duis non metus commodo euismod lobortis.</a></li>
							<li><a href="#">Lorem ipsum dolor adipiscing elit.</a></li>
						</ul>
					</section>
				</div>
				<!-- Sidebar -->

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
								<li><img src="../images/pics05.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="../images/pics06.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="../images/pics07.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
							</ul>
						</section>
					</div>
					<div class="3u">
						<section>
							<ul class="style1">
								<li class="first"><img src="../images/pics08.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="../images/pics09.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="../images/pics10.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
							</ul>
						</section>				
					</div>
					<div class="6u">
						<section>
							<header>
								<h2>Aenean elementum</h2>
							</header>
							<p>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p>
							<ul class="default">
								<li><a href="#">Pellentesque quis lectus gravida blandit.</a></li>
								<li><a href="#">Lorem ipsum consectetuer adipiscing elit.</a></li>
								<li><a href="#">Phasellus nec nibh pellentesque congue.</a></li>
								<li><a href="#">Cras aliquam risus pellentesque pharetra.</a></li>
								<li><a href="#">Duis non metus commodo euismod lobortis.</a></li>
								<li><a href="#">Lorem ipsum dolor adipiscing elit.</a></li>
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
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>

	</body>
</html>