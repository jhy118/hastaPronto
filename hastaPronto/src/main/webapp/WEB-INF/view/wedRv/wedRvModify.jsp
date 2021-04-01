<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../include/include.jsp" %>
<!DOCTYPE HTML>
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
						<h1><a href="#">Hasta Pronto</a></h1>
						<span>Design by JEONG-HANYONG JO</span>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="../main">Homepage</a></li>
							<li><a href="../wedding/wedBrochure">웨딩홀</a></li>
							<li><a href="../wedRes/wedResList">레스토랑</a></li>
							<li><a href="../wedCs/wedCsList">상담 문의</a></li>
							<li class="active"><a href="../wedRv/wedRvList">상담 예약 & 결제</a></li>
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
						<div id="content" class="12u skel-cell-important">
					<section>
						<form:form action="wedRvModifyOk" name="frm" method="post"
							modelAttribute="wedRvCommand">
							<input type="hidden" name="wedRvNo" value="${wedRvList.wedRvNo}" />
							<input type="hidden" name="nYear" value="${wedRvCommand.nYear}" />
							<input type="hidden" name="nMonth" value="${wedRvCommand.nMonth}" />
							<input type="hidden" name="nDay" value="${wedRvCommand.nDay}" />
							<table border="1">
								<caption>${wedRvCommand.nYear}년
									${wedRvCommand.nMonth}월 ${wedRvCommand.nDay}일 웨딩홀 예약</caption>
								<tr>
									<th>웨딩홀 이름</th>
									<td><select name="wedNo">
											<c:forEach items="${wedArrayList}" var="dto">
												<option value="${dto.wedNo}">${dto.wedName}</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<th>레스토랑 이름</th>
									<td><select name="wedRtNo">
											<c:forEach items="${wedRtArrayList}" var="dto">
												<option value="${dto.wedRtNo}" selected="selected">${dto.wedRtName}</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<th>예약시간</th>
									<td><select name="wedRvTime">
											<c:forEach begin="10" end="18" var="num">
												<option value=" ${num}:00:00">${num}:00</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<th>예상인원</th>
									<td><input type="text" name="wedRvNum"
										value="${wedRvList.wedRvNum}" /></td>
								</tr>
								<tr>
									<th>예약금</th>
									<td><input type="text" name="wedRvChar"
										value="${wedRvList.wedRvChar}" /></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="submit"
										value="예약 변경" /></td>
								</tr>
							</table>
						</form:form>
					</section>
				</div>
					<!-- /Content -->
						
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