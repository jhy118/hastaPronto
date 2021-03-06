<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>therapyList.jsp</title>
</head>
<body>
		<title>HASTA PRONTO</title>
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
	</head>
<body class="homepage">

	<body class="homepage">

		<!-- Header -->
			<div id="header">
				<div class="container">
						
					<!-- Logo -->
						<h1><a href="../main" id="logo">HASTA PRONTO</a></h1>
					
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="../main">HASTA PRONTO</a></li>
								<li><a href="">ROOM</a>
									<ul>
										<c:forEach items="${roomList }" var="room">
										<li><a href="<c:url value='/room/roomInfo/${room.rmNo}'/>">${room.rmName }</a></li>
										</c:forEach>
									</ul>
								</li>
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
								<li><a href="<c:url value='/wedding/wedBrochure'/>"> WEDDING</a>
									<ul>
										<li><a href="wedding/wedBrochure">WEDDING HALL</a></li>
										<li><a href="wedRes/wedResList">WEDDING BUFFET</a></li>
										<li><a href="wedCs/wedCsList">COLSULTING</a></li>
										<li>
											<a href="wedRv/wedRvList">RESERVATION</a>
											<ul>
												<li><a href="wedPay/wedPmList">PAYMENT</a></li>
											</ul>
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
						<h2>????????? ???????????? ?????? <br >????????? ??????????????? ???????????????.</h2>
						<span class="byline">??? ????????? ???????????? ????????? ????????? ?????????</span>
					</header>
					<div class="row no-collapse-1">
						<section class="4u">
							<img src="images/01.jpg" alt="">
							<p>????????? ?????? ???????????? ????????? ????????? ????????? ??? ??? ?????? ?????? ?????? ????????? ??? ????????? ?????? ????????? ?????? ??????, <br >????????? ???????????? ???????????? ???????????????.</p>
						</section>
						<section class="4u">
							<a href="#"></a>
							<p></p>
						</section>
						<section class="4u">
							<img src="images/02.jpg" alt="">
							<p>???????????????(1?????? 200,000???)FDA ????????? ?????? ??????????????? ????????? ????????? ?????? ????????? ????????????, ????????? ?????? ????????? ????????? ???????????? ????????? ????????? ???????????? ???????????????.</p>
						</section>
						<section class="4u">
							<img src="images/03.jpg" alt="">
							<p>??????????????? ???????????? ????????? ?????? ????????? ?????? ????????? ???????????? ????????????<br /> '????????????'(1?????? 350,000???)??? ???????????? ????????? ????????? ????????? ????????? ???????????? ?????? ????????? ???????????? ????????????.</p>
						</section>
						<section class="4u">
							<a href="#"></a>
							<p></p>
						</section>
						<section class="4u">
							<img src="images/04.jpg" alt="">
							<p>??????????????? ???????????? ????????? ???????????? ??????????????? ?????? ????????????????????? ???????????? ????????? ?????? ???????????????(1?????? 520,000???)??? ?????? ??????????????? ???????????? ???????????? ?????????????????? ????????? ????????? ???????????????.</p>
						</section>
					</div>
				</section>
			</div>
			<div id="main" class="wrapper style1">
				<section class="container">
					<header class="major">
						<h2>THERAPY(SPA) ??????</h2>
					</header>
					<div class="row">
<table border="3">
  <tr>
		<td colspan="7" align="center">
			<a href="therapyList?nYear=${nYear}&nMonth=${nMonth}&action=previous">&nbsp;&nbsp;&nbsp;?????????&nbsp;&nbsp;&nbsp;</a> 
			${nYear}??? ${nMonth}???
			<a href="therapyList?nYear=${nYear}&nMonth=${nMonth}&action=next">&nbsp;&nbsp;&nbsp;?????????&nbsp;&nbsp;&nbsp;</a>
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
					<a href="therapyRvForm?nYear=${nYear}&nMonth=${nMonth}&nDay=${value1}">
						${value1}</a></c:if>
<%-- 				<c:if test="${num ge dayNum + maxDay}">${value2}</c:if> --%>
				
				<c:forEach items="${list}" var="sch" varStatus="status">
					<c:if test="${sch.nYear eq nYear 
						&& sch.nMonth eq nMonth 
						&& sch.nDay eq fn:replace(value1, ' ','')}">
						<c:if test="${authInfo.grade == 'emp' }">
							<a href='therapyDetail?schNo=${sch.schNo}';">
								${sch.schNo}/${sch.schName} ????????????
							</a>
						</c:if>
						<c:if test="${authInfo.grade != 'emp' }">
								${sch.schNo}/${sch.schName} ????????????<br />
						</c:if>
					</c:if>
				</c:forEach>
			</div>
		</td>
		<c:if test="${num % 7 == 0 && num != 42}"></tr><tr></c:if>
	</c:forEach>
	</tr>
</table>
						
					</div>
				</section>
			</div>

<br >
<div align="center"> <a href="therapyRvForm">????????? ????????????</a>&nbsp;&nbsp;&nbsp;<a
			href="therapyListOk">??????????????? ??????</a>
	</div>
<br >
<br >
</body>
</html>