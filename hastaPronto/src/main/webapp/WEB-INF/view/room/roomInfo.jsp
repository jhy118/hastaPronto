<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HastaPronto</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
<script src='../js/skel.min.js'></script>
<script src='../js/skel-panels.min.js'></script>
<script src='../js/init.js'></script>
<noscript>
	<link rel='stylesheet' href='css/skel-noscript.css' />
	<link rel='stylesheet' href='css/style.css' />
</noscript>
<script type="text/javascript">
	function deleteRoom() {
		if (confirm('삭제하시겠습니까?'))
			location.href = '../roomDelete/${room.rmNo}';
	}
	var idx = 0;
	function nextImg(imgList) {
		var img = imgList.split('`');
		var maxIdx = img.length - 2;
		idx++;
		if (idx > maxIdx) {
			idx = 0;
		}
		document.getElementById('img').src = '../upload/' + img[idx];
	}
	function prevImg(imgList) {
		var img = imgList.split('`');
		var maxIdx = img.length - 2;
		idx--;
		if (idx < 0) {
			idx = maxIdx;
		}
		document.getElementById('img').src = '../upload/' + img[idx];
	}
</script>
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
</head>
<body>

	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="<c:url value='/main'/>">HastaPronto</a>
				</h1>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="<c:url value='/main'/>">HastaPronto</a></li>
					<li class="active"><a href="<c:url value='/room/'/>">Room</a></li>
					<li><a href="twocolumn1.html">Left Sidebar</a></li>
					<li><a href="twocolumn2.html">Right Sidebar</a></li>
					<li><a href="onecolumn.html">No Sidebar</a></li>
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
				<div id="content" class="8u skel-cell-important">
					<section>
						<header>
							<h2>${room.rmName }</h2>
						</header>
						<table border="1">
							<tr>
								<th>방이미지</th>
								<td><img src="../../wedding/images/left_btn.png"
									onclick="prevImg('${room.rmFile}');"> <img alt="전경"
									id="img" src="../upload/${fn:split(room.rmFile,'`')[0]}"
									width="400"> <img
									src="../../wedding/images/right_btn.png"
									onclick="nextImg('${room.rmFile}');"></td>
							</tr>
							<tr>
								<th>가격</th>
								<td><fmt:formatNumber value="${room.rmChar}"
										type="currency" pattern="\#,###" /></td>
							</tr>
							<tr>
								<th>정원</th>
								<td>${room.rmNum }</td>
							</tr>
							<tr>
								<th>세부사항</th>
								<td>${room.rmContent }</td>
							</tr>
							<tr>
								<th>유료사항</th>
								<td>${room.rmPaycontent }</td>
							</tr>
							<tr>
								<th colspan="2"><input type="button" value="수정하기"
									onclick="javascript:location.href='../roomModify/${room.rmNo}'">
									<input type="button" value="삭제하기" onclick="deleteRoom();">
									<input type="button" value="목록"
									onclick="javascript:location.href='../';"> <input
									type="button" value="예약하기"
									onclick="javascript:location.href='<c:url value="/reservationRoom/roomList"/>';">
								</th>
							</tr>
						</table>
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
					<section></section>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->

	<!-- Copyright -->
	<div id="copyright">
		<div class="container"></div>
	</div>

</body>
</html>