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
					
					
						<script>
	var idx = 0;
	function nextGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx++;
		if(idx > maxIdx) idx = 0;
		document.getElementById("gallery").src=
			"../wedRes/upload/"+imgName[idx];
	}
	function prevGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx--;
		if(idx < 0) idx = maxIdx;
		document.getElementById("gallery").src=
			"../wedRes/upload/"+imgName[idx];
	}
</script>
								<table align="center">
	<tr>
		<th colspan="2">
			<a href="javascript:prevGallery('${list.wedRtFile}');">
				<img src="../wedding/images/left_btn.png" /></a>
					<img src="../wedRes/upload/${fn:split(list.wedRtFile, '`')[0]}" id="gallery"
						width="500" height="350" />
			<a href="javascript:nextGallery('${list.wedRtFile}');">
				<img src="../wedding/images/right_btn.png"/></a>	
		</th>
	</tr>
	<tr><th colspan="2">${list.wedRtName} 시설안내</th></tr>
	<tr><th>이용금액</th><th>성인 1인 기준 : ${list.wedRtChar}원</th></tr>
	<tr><th>수용인원</th><th>최대 ${list.wedRtNum}명</th></tr>
	<tr><th>위치</th><th>${list.wedRtLocation}</th></tr>
	<tr><th>메뉴</th>
		<th>${fn:replace(list.wedRtMname,cn,br)}</th>
	</tr>	
</table>

<c:if test="${authInfo.grade == 'emp' }">
<a href="wedRtModify?wedRtNo=${list.wedRtNo}">수정</a>
<a href="#" onclick="return wedRtDel(${list.wedRtNo})">삭제</a>
</c:if>
<input type="button" value="뒤로가기" onclick="javascript:history.back();" />
<script type="text/javascript">
	function wedRtDel(wedRtNo){
		if(confirm('정말 삭제하시겠습니까?')){
			location.href='wedRtDel?wedRtNo=' + wedRtNo;
		}
		return false;
	}
</script>
						
						
					
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
										<h2>Donec dictum metus</h2>
										<span class="byline">Quisque semper augue mattis wisi maecenas ligula</span>
									</header>
									<div class="row">
										<section class="6u">
											<ul class="default">
												<li><a href="#">Pellentesque elit non gravida blandit.</a></li>
												<li><a href="#">Lorem ipsum dolor consectetuer elit.</a></li>
												<li><a href="#">Phasellus nibh pellentesque congue.</a></li>
												<li><a href="#">Cras vitae metus aliquam  pharetra.</a></li>
											</ul>
										</section>
										<section class="6u">
											<ul class="default">
												<li><a href="#">Pellentesque elit non gravida blandit.</a></li>
												<li><a href="#">Lorem ipsum dolor consectetuer elit.</a></li>
												<li><a href="#">Phasellus nibh pellentesque congue.</a></li>
												<li><a href="#">Cras vitae metus aliquam  pharetra.</a></li>
											</ul>
										</section>
									</div>
								</section>
							</div>
							<div class="4u">
								<section>
									<header class="major">
										<h2>Donec dictum metus</h2>
										<span class="byline">Mattis wisi maecenas ligula</span>
									</header>
									<ul class="contact">
										<li>
											<span class="address">Address</span>
											<span>1234 Somewhere Road #4285 <br />Nashville, TN 00000</span>
										</li>
										<li>
											<span class="mail">Mail</span>
											<span><a href="#">someone@untitled.tld</a></span>
										</li>
										<li>
											<span class="phone">Phone</span>
											<span>(000) 000-0000</span>
										</li>
									</ul>	
								</section>
							</div>
						</div>

					<!-- Copyright -->
						<div class="copyright">
							Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
						</div>

				</div>
			</div>

	</body>
</html>