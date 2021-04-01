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