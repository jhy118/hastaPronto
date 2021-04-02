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
						
						
					
						<form:form action="" name="frm" method="post"
							modelAttribute="wedRvCommand">
							<input type="hidden" name="nYear" value="${wedRvCommand.nYear}" />
							<input type="hidden" name="nMonth" value="${wedRvCommand.nMonth}" />
							<input type="hidden" name="nDay" value="${wedRvCommand.nDay}" />
							<table border="1">
								<caption>예약자 정보</caption>
								<tr>
									<th>아이디</th>
									<td>${wedRvList.userId}</td>
								</tr>
								<tr>
									<th>성명</th>
									<td>${wedCsList.wedCosName}</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td>${wedCsList.wedCosEmail}</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td>${wedCsList.wedCosPh}</td>
								</tr>
								<tr>
									<th>1차 상담일</th>
									<td>${wedCsList.wedCosNo}번/${wedCsList.wedCosDay}</td>
								</tr>
							</table>


							<table border="1">
								<caption>${wedRvCommand.nYear}년
									${wedRvCommand.nMonth}월 ${wedRvCommand.nDay}일 예약 내역</caption>
								<tr>
									<th>예약시간</th>
									<td>${wedRvList.wedRvTime}</td>
								</tr>
								<tr>
									<th>예상인원</th>
									<td>${wedRvList.wedRvNum}</td>
								</tr>
								<tr>
									<th>예식장</th>
									<td>${wedList.wedName}</td>
								<tr>
									<th>예식뷔페</th>
									<td>${wedRtList.wedRtName}</td>
								</tr>
								<tr>
									<th>총 예약금</th>
									<td>${wedRvList.wedRvChar}원</td>
								</tr>
							</table>
						</form:form>
						<a
							href="wedRvModify?wedRvNo=${wedRvList.wedRvNo}&nYear=${wedRvCommand.nYear}&nMonth=${wedRvCommand.nMonth}&nDay=${wedRvCommand.nDay}">예약
							수정</a> <a href="#" onclick="return wedRvDel(${wedRvList.wedRvNo})">예약
							삭제</a>
						<script type="text/javascript">
	function wedRvDel(wedRvNo){
		if(confirm('정말 삭제하시겠습니까?')){
			location.href='wedRvDel?wedRvNo='+wedRvNo;
		}
		return false;
	}
</script>
						<a
							href="../wedPay/wedPayForm?wedRvNo=${wedRvList.wedRvNo}&nYear=${wedRvCommand.nYear}&nMonth=${wedRvCommand.nMonth}&nDay=${wedRvCommand.nDay}">예약
							결제</a>
						
						
						
					
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