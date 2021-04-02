<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>schedule/main.jsp</title>
</head>
<body>
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
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
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
								<li><a href="<c:url value='/' />">HASTA PRONTO</a></li>
								<li><a href="../room/">ROOM</a></li>
								<li><a href="../res/resList">RESTAURANT</a></li>
								<li><a href="../schedule/main">PREMIUM LIFE</a>
								<ul>
										<li><a href="../schedule/therapy/therapyList">THERAPY(SPA)</a></li>
										<li><a href="../schedule/fitnessMain">FITNESS</a></li>
										<li><a href="../schedule/swimmingMain">SWIMMING POOL</a></li>
<!-- 										<li> -->
<!-- 											<a href="">Phasellus consequat</a> -->
<!-- 											<ul> -->
<!-- 												<li><a href="#">Lorem ipsum dolor</a></li> -->
<!-- 												<li><a href="#">Phasellus consequat</a></li> -->
<!-- 												<li><a href="#">Magna phasellus</a></li> -->
<!-- 												<li><a href="#">Etiam dolore nisl</a></li> -->
<!-- 												<li><a href="#">Veroeros feugiat</a></li> -->
<!-- 											</ul> -->
<!-- 										</li> -->
<!-- 										<li><a href="#">Veroeros feugiat</a></li> -->
									</ul>
								</li>
								<li><a href="../wedding/wedBrochure">WEDDING</a></li>
							</ul>
						</nav>


					<!-- Banner -->
						<div id="banner">
							<div class="container">
								<section>
									<header class="major">
										<h2>Welcome to HastaPronto!</h2>
										<span class="byline"></a></a></span>
									</header>
									<a href="#" class="button alt">Sign Up</a>
								</section>			
							</div>
						</div>

				</div>
			</div>

		<!-- Featured -->
			<div class="wrapper style2">
				<section class="container">
					<header class="major">
						<h2>당신만을 위한 특별한 프리미엄라이프가 시작되는 곳</h2>
						<span class="byline">더 특별한 당신에게 드리는 최고의 서비스</span>
					</header>
					<div class="row no-collapse-1">
						<section class="4u">
							<a href="../schedule/therapy/therapyList" class="image feature"><img src="images/therapy.png" alt=""></a>
							<p>온천수를 사용하는 스파는 물론이고, <br >컬러테라피, 헤이베스, 스위스퍼펙션 스파를 통해 최상의 관리를 받아보세요.</p>
						</section>
						<section class="4u">
							<a href="../schedule/fitness/fitnessMain" class="image feature"><img src="images/swimmingPool.png" alt=""></a>
							<p>저희 호텔 피트니스는 국내 최대 넓이의 피트니스 센터를 자랑합니다. 쾌적한 환경에서의 운동과 맞춤 PT까지 경험해보세요.</p>
						</section>
						<section class="4u">
							<a href="../schedule/swimming/swimmingMain" class="image feature"><img src="images/fitness.png" alt=""></a>
							<p>어린아이를 위한 물놀이 장소는 물론, 수영과 아쿠아로빅을 통한 신체관리도 제공합니다.
								<br >(모든 수업은 선생님 한분당 최대 3인까지 신청가능)</p>
						</section>
					</div>
				</section>
			</div>

		<!-- Main -->
			<div id="main" class="wrapper style1">
				<section class="container">
					<header class="major">
						<h2>Nulla luctus eleifend</h2>
						<span class="byline">Mauris vulputate dolor sit amet nibh</span>
					</header>
					<div class="row">
					
						<!-- Content -->
							<div class="6u">
								<section>
									<ul class="style">
										<li>
											<span class="fa fa-wrench"></span>
											<h3>Integer ultrices</h3>
											<span>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim.</span>
										</li>
										<li>
											<span class="fa fa-cloud"></span>
											<h3>Aliquam luctus</h3>
											<span>Pellentesque viverra vulputate enim. Aliquam erat volutpat. Maecenas condimentum enim tincidunt risus accumsan.</span>
										</li>
									</ul>
								</section>
							</div>
							<div class="6u">
								<section>
									<ul class="style">
										<li>
											<span class="fa fa-cogs"></span>
											<h3>Integer ultrices</h3>
											<span>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim.</span>
										</li>
										<li>
											<span class="fa fa-leaf"></span>
											<h3>Aliquam luctus</h3>
											<span>Pellentesque viverra vulputate enim. Aliquam erat volutpat. Maecenas condimentum enim tincidunt risus accumsan.</span>
										</li>
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
<a href="therapy/therapyList">Therapy 자세히보기</a><br />
<a href="fitnessList">Fitness 자세히보기</a><br />
<a href="swimmingList">Swimming 자세히보기</a><br />
</body>
</html>