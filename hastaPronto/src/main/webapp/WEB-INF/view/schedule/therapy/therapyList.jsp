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
						<h2>특별한 당신에게 맞은 <br >특별한 맞춤관리를 받아보세요.</h2>
						<span class="byline">더 특별한 당신에게 드리는 최고의 서비스</span>
					</header>
					<div class="row no-collapse-1">
						<section class="4u">
							<img src="images/01.jpg" alt="">
							<p>스파는 모든 공간에서 한강을 한눈에 내려다 볼 수 있는 호텔 특화 시설로 두 가지의 편백 스파와 습식 스파, <br >그리고 냉온탕과 열탕으로 구성됩니다.</p>
						</section>
						<section class="4u">
							<a href="#"></a>
							<p></p>
						</section>
						<section class="4u">
							<img src="images/02.jpg" alt="">
							<p>컬러테라피(1회당 200,000원)FDA 승인을 받은 스파장비가 갖춰진 최첨단 스파 시설을 자랑하며, 음악이 지닌 고유의 리듬과 파장으로 깨어진 심신의 발란스를 찾아줍니다.</p>
						</section>
						<section class="4u">
							<img src="images/03.jpg" alt="">
							<p>스위스에서 공수해온 유기농 천연 건초를 덮고 체내의 노폐물을 제거하는<br /> '헤이배스'(1회당 350,000원)는 도심에서 벗어나 스위스 알프스 언덕에 누워있는 듯한 순간을 경험하게 해줍니다.</p>
						</section>
						<section class="4u">
							<a href="#"></a>
							<p></p>
						</section>
						<section class="4u">
							<img src="images/04.jpg" alt="">
							<p>머리끝부터 발끝까지 최상의 컨디션을 되찾아주는 이곳 ‘스위스퍼펙션 스파’의 유럽식 스파 트리트먼트(1회당 520,000원)는 각종 스트레스에 시달리는 현대인의 오아시스라고 불리는 최상의 관리입니다.</p>
						</section>
					</div>
				</section>
			</div>
			<div id="main" class="wrapper style1">
				<section class="container">
					<header class="major">
						<h2>THERAPY(SPA) 예약</h2>
					</header>
					<div class="row">
<table border="3">
  <tr>
		<td colspan="7" align="center">
			<a href="therapyList?nYear=${nYear}&nMonth=${nMonth}&action=previous">&nbsp;&nbsp;&nbsp;이전달&nbsp;&nbsp;&nbsp;</a> 
			${nYear}년 ${nMonth}월
			<a href="therapyList?nYear=${nYear}&nMonth=${nMonth}&action=next">&nbsp;&nbsp;&nbsp;다음달&nbsp;&nbsp;&nbsp;</a>
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
								${sch.schNo}/${sch.schName} 예약완료
							</a>
						</c:if>
						<c:if test="${authInfo.grade != 'emp' }">
								${sch.schNo}/${sch.schName} 예약완료<br />
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
<div align="center"> <a href="therapyRvForm">테라피 예약하기</a>&nbsp;&nbsp;&nbsp;<a
			href="therapyListOk">예약리스트 확인</a>
	</div>
<br >
<br >
</body>
</html>