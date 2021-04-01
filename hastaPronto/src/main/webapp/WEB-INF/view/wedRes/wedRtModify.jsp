<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Monochromed by TEMPLATED</title>
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
							<li><a href="../wedding/wedBrochure">웨딩홀</a></li>
							<li class="active"><a href="wedResList">레스토랑</a></li>
							<li><a href="../wedCs/wedCsList">상담 문의</a></li>
							<li><a href="onecolumn.html">상담 예약 & 결제</a></li>
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
						<div id="sidebar" class="4u">
							<section>
								<header>
									<h2>Gravida praesent</h2>
									<span class="byline">Praesent lacus congue rutrum</span>
								</header>
								<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum. Maecenas luctus lectus at sapien. Consectetuer adipiscing elit.</p>
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
					<!-- Sidebar -->
				
					<!-- Content -->
						<div id="content" class="8u skel-cell-important">
							<section>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
	function imgDelete(imgfile, btn, cImg){
		imageFile = {
				type:"post",
				url:"imgDel",
				dataType:"text",
				data:{"imgfile":imgfile},
				success:function(result){
					if(result.trim()=="1"){
						$(cImg).remove();
					}else{
						$(btn).val("삭제");
					}
				},
				error : function(){
					alert('에러가 나왔습니다.');
					return false;
				}
		};
		$.ajax(imageFile);
	}
</script>
			
			<form action="wedRtModifyOk" name="frm" method="post"
	enctype="multipart/form-data">
<input type="hidden" name="wedRtNo" value="${list.wedRtNo}" />
<table border="1">
	<tr><th>웨딩홀 레스토랑 이름</th>
		<td>
			<input type="text" name="wedRtName" value="${list.wedRtName}" />
		</td>
	</tr>
	<tr><th>코스 이용금액</th>
		<td>
			<input type="text" name="wedRtChar" value="${list.wedRtChar}" />
		</td>
	</tr>
	<c:if test="${list.wedRtFile != null}">
		<tr>
			<th>사진</th>
			<td>
				<c:forTokens items="${list.wedRtFile}" delims="`" var="img" varStatus="idx">				
					<img src="../wedRes/upload/${img}" class="img${idx.index}" width="50" height="25" />
					<input class="img${idx.index}" type="button" value="삭제"
						onclick="imgDelete('${img}',this, '.img${idx.index}');" />
				</c:forTokens>
			</td>
		</tr>
	</c:if>
	<tr>
		<th>사진 추가</th>
		<td>
			<input type="file" name="wedRtFile" multiple="multiple"/>
		</td>
	</tr>
	<tr><th>메뉴 종류</th>
		<td>
			<textarea rows="30" cols="50" 
				name="wedRtMname">${list.wedRtMname}</textarea>
		</td>
	</tr>
	<tr><th>웨딩홀 레스토랑 위치</th>
		<td>
			<input type="text" name="wedRtLocation" value="${list.wedRtLocation}" />
		</td>
	</tr>
	<tr><th>뷔페 수용인원</th>
		<td>
			<input type="text" name="wedRtNum" value="${list.wedRtNum}" />명
		</td>
	</tr>
</table>
<input type="submit" value="수정완료" />
<input type="reset" value="취소" />
<input type="button" value="뒤로가기" onclick="javascript:history.back();"/>
</form>					

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