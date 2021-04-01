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
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
		</noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
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
					
					
							<h1>웨딩 예약 문의</h1>
<h4>
고객님께서 문의하신 내용은 빠른 시간 내에 연락처 또는 이메일로 답변을 드리겠습니다.<br />
궁금하신 점은 02-XXX-XXXX~X 로 문의 주시면 친절히 답변해 드리겠습니다.<br />
</h4>
<form:form action="wedCsRvOk" name="frm" method="post"
		modelAttribute="wedCsCommand">
<input type="hidden" name="nYear" value="${wedCsCommand.nYear}" />
<input type="hidden" name="nMonth" value="${wedCsCommand.nMonth}" />
<input type="hidden" name="nDay" value="${wedCsCommand.nDay}" />
<table>
<caption>
	${wedCsCommand.nYear}년 ${wedCsCommand.nMonth}월 ${wedCsCommand.nDay}일
</caption>
	<tr><th>성명 *</th>
		<td colspan="2"><form:input path="wedCosName" />
			<form:errors path="wedCosName" /></td></tr>
	<tr><th>이메일 *</th>
		<td colspan="2"><form:input path="wedCosEmail" />
			<form:errors path="wedCosEmail" /></td></tr>
	<tr><th>연락처 *</th>
		<td colspan="2"><form:input path="wedCosPh" />
			<form:errors path="wedCosPh" /></td></tr>
	<tr><th>희망 예식일 </th>
		<td><input type="date" name="wedCosDay" /></td>
		<td><select name="wedCosTime">
				<c:forEach begin="10" end="18" var="num">
					<option value =" ${num}:00:00">${num}:00</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>예상인원</th>
		<td colspan="2"><input type="text" name="wedCosNum" /></td></tr>
	<tr><th>희망예식장</th>
		<td colspan="2">
			<select name="wedNo">
				<c:forEach items="${list}" var="dto">
					<option value="${dto.wedNo}">${dto.wedName}</option>
				</c:forEach>
			</select>
		</td>
	</tr> 
	<tr><th>기타 문의사항</th>
		<td colspan="2"><input type="text" name="wedCosContent"  /></td></tr>
</table> 
<input type="submit" value="상담예약 접수"/>
<input type="button" value="접수 취소" onclick="javascript:history.back();" />
</form:form>
						
						
					
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