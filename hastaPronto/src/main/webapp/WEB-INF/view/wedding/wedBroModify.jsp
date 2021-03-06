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
					
					
							<script src="https://code.jquery.com/jquery-latest.js"></script>
						<script>
							function imgDelete(imgfile, btn, cImg) {
								imageFile = {
									type : "post",
									url : "imgDel",
									dataType : "text",
									data : {
										"imgfile" : imgfile
									},
									success : function(result) {
										if (result.trim() == "1") {
											$(cImg).remove();
										} else {
											$(btn).val("??????");
										}
									},
									error : function() {
										alert('????????? ???????????????.');
										return false;
									}
								};
								$.ajax(imageFile);
							}
						</script>

						<form action="wedBroModifyOk" name="frm" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="wedNo" value="${list.wedNo}" />
							<table border="1">
								<tr>
									<th>???????????????</th>
									<td><input type="text" name="wedName"
										value="${list.wedName}" /></td>
								</tr>
								<tr>
									<th>??? ????????????</th>
									<td><input type="text" name="wedChar"
										value="${list.wedChar}" /></td>
								</tr>
								<c:if test="${list.wedFile != null}">
									<tr>
										<th>??????</th>
										<td><c:forTokens items="${list.wedFile}" delims="`"
												var="img" varStatus="idx">
												<img src="../wedding/upload/${img}" class="img${idx.index}"
													width="50" height="25" />

												<input class="img${idx.index}" type="button" value="??????"
													onclick="imgDelete('${img}',this, '.img${idx.index}');" />
											</c:forTokens></td>
									</tr>
								</c:if>
								<tr>
									<th>?????? ??????</th>
									<td><input type="file" name="wedFile" multiple="multiple" />
									</td>
								</tr>
								<tr>
									<th>??????</th>
									<td><textarea rows="30" cols="50" name="wedContent">${list.wedContent}</textarea>
									</td>
								</tr>
								<tr>
									<th>??? ??????</th>
									<td><input type="text" name="wedLocation"
										value="${list.wedLocation}" /></td>
								</tr>
								<tr>
									<th>????????????</th>
									<td><input type="text" name="wedNum"
										value="${list.wedNum}" /></td>
								</tr>
							</table>
							<input type="submit" value="????????????" /> <input type="button"
								value="????????????"
								onclick="javascript:location.href='wedBroInfo?wedNo='+${list.wedNo}" />
						</form>




					
					
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