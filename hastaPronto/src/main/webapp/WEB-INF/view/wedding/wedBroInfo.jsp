<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>HASTA PRONTO</title>
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
						<h1><a href="#">HASTA PRONTO</a></h1>
						<span>Design by JEONG-HANYONG JO</span>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="../main">Homepage</a></li>
							<li class="active"><a href="wedBrochure">웨딩홀</a></li>
							<li><a href="../wedRes/wedResList">레스토랑</a></li>
							<li><a href="../wedCs/wedCsList">상담 문의</a></li>
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

					<!-- Sidebar -->
				<div id="sidebar" class="3u">
					<section>
						<header>
							<h2>Gravida praesent</h2>
							<span class="byline">Praesent lacus congue rutrum</span>
						</header>
						<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus
							at urna congue rutrum. Maecenas luctus lectus at sapien.
							Consectetuer adipiscing elit.</p>
						<ul class="default">
							<li><a href="#">Pellentesque quis lectus</a></li>
							<li><a href="#">Lorem ipsum adipiscing elit</a></li>
							<li><a href="#">Phasellus pellentesque congue</a></li>
							<li><a href="#">Cras aliquam risus pharetra</a></li>
							<li><a href="#">Duis metus euismod lobortis</a></li>
						</ul>
					</section>
				</div>
				<!-- Sidebar -->

				<!-- Content -->
				<div id="content" class="6u skel-cell-important">
					<section>
						<script>
	var idx = 0;
	function nextGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx++;
		if(idx > maxIdx) idx = 0;
		document.getElementById("gallery").src=
			"../wedding/upload/"+imgName[idx];
	}
	function prevGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx--;
		if(idx < 0) idx = maxIdx;
		document.getElementById("gallery").src=
			"../wedding/upload/"+imgName[idx];
	}
</script>

						<table align="center">
							<tr>
								<th colspan="2">${fn:replace(list.wedContent,cn,br)}</th>
							</tr>
							<tr>
								<th colspan="2"><a
									href="javascript:prevGallery('${list.wedFile}');"> <img
										src="../wedding/images/left_btn.png" /></a> <img
									src="../wedding/upload/${fn:split(list.wedFile, '`')[0]}"
									id="gallery" width="500" height="350" /> <a
									href="javascript:nextGallery('${list.wedFile}');"> <img
										src="../wedding/images/right_btn.png" /></a></th>
							</tr>
							<tr>
								<th colspan="2">${list.wedName}시설안내</th>
							</tr>
							<tr>
								<th>이용금액</th>
								<th>${list.wedChar}</th>
							</tr>
							<tr>
								<th>수용인원</th>
								<th>${list.wedNum}</th>
							</tr>
							<tr>
								<th>위치</th>
								<th>${list.wedLocation}</th>
							</tr>
						</table>
						<c:if test="${authInfo.grade == 'emp' }">
							<a href="wedBroModify?wedNo=${list.wedNo}">수정</a>
							<a href="#" onclick="return wedBroDel(${list.wedNo})">삭제</a>
						</c:if>
						<script type="text/javascript">
	function wedBroDel(wedNo){
		if(confirm('정말 삭제하시겠습니까?')){
			location.href='wedBroDel?wedNo=' + wedNo;
		}
		return false;
	}
</script>




					</section>
				</div>
				<!-- /Content -->
						
					<!-- Sidebar -->
						<div id="sidebar" class="3u">
							<section>
								<header>
									<h2>Gravida praesent</h2>
									<span class="byline">Praesent lacus congue rutrum</span>
								</header>
								<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum. Maecenas luctus lectus at sapien. Consectetuer adipiscing elit.</p>
								<ul class="default">
									<li><a href="#">Pellentesque quis lectus</a></li>
									<li><a href="#">Lorem ipsum adipiscing elit</a></li>
									<li><a href="#">Phasellus pellentesque congue</a></li>
									<li><a href="#">Cras aliquam risus pharetra</a></li>
									<li><a href="#">Duis metus euismod lobortis</a></li>
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