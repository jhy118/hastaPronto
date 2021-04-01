<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
		<title>Hasta Pronto</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="<c:url value='/js/jquery.min.js'/>"></script>
		<script src="<c:url value='/js/jquery.dropotron.min.js'/>"></script>
		<script src="<c:url value='/js/skel.min.js'/>"></script>
		<script src="<c:url value='/js/skel-layers.min.js'/>"></script>
		<script src="<c:url value='/js/init.js'/>"></script>
		<link rel="stylesheet" href="<c:url value='/css/skel.css'/>" />
		<link rel="stylesheet" href="<c:url value='/css/style.css'/>" />
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
	</head>
<body class="homepage">
		<!-- Header -->
			<div id="header">
				<div class="container">
						
					<!-- Logo -->
						<h1><a href="<c:url value='/'/>" id="logo">HASTA PRONTO</a></h1>
					
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="<c:url value='/'/>" >HASTA PRONTO</a></li>
								<li>
									<a href="">ROOM</a>
									<ul>
										<c:forEach items="${roomList }" var="room">
										<li><a href="<c:url value='/room/roomInfo/${room.rmNo}'/>">${room.rmName }</a></li>
										</c:forEach>
									</ul>
								</li>
								<li><a href="left-sidebar.html">RESTAURANT</a></li>
								<li><a href="right-sidebar.html">PREMIUM LIFE</a></li>
								<li><a href="no-sidebar.html">WEDDING</a></li>
							</ul>
						</nav>
				</div>
			</div> 
	<!-- Main -->
			<div id="main" class="wrapper style1">
				<div class="container">
					<section>
						<header>
							<h2>${room.rmName }</h2>
						</header>
						<table border="1">
							<tr>
								<td><img src="../../wedding/images/left_btn.png"
									onclick="prevImg('${room.rmFile}');"> <img alt="전경"
									id="img" src="../upload/${fn:split(room.rmFile,'`')[0]}"
									width="400"> <img
									src="../../wedding/images/right_btn.png"
									onclick="nextImg('${room.rmFile}');"></td>
							</tr>
							<tr>
								<td><fmt:formatNumber value="${room.rmChar}"
										type="currency" pattern="\#,###" /></td>
							</tr>
							<tr>
								<td>성인 ${room.rmNum }명</td>
							</tr>
							<tr>
								<td>${room.rmContent }</td>
							</tr>
							<tr>
								<td>${fn:replace(room.rmPaycontent, "`", br) }</td>
							</tr>
							<tr>
								<th colspan="2">
								<c:if test="${authInfo.grade == 'emp'}">
								<input type="button" value="수정하기"
									onclick="javascript:location.href='../roomModify/${room.rmNo}'">
									<input type="button" value="삭제하기" onclick="deleteRoom();">
								</c:if>
									<input type="button" value="목록"
									onclick="javascript:location.href='../';"> <input
									type="button" value="예약하기"
									onclick="javascript:location.href='<c:url value="/reservationRoom/roomList"/>';">
								</th>
							</tr>
						</table>
					</section>
				</div>
			</div>

		<!-- Footer -->
			<div id="footer">
				<div class="container">

					<!-- Lists -->
						<div class="row">
							<div class="8u">
							</div>
							<div class="4u">
							</div>
						</div>

					<!-- Copyright -->
						<div class="copyright">
							<c:if test="${authInfo.grade == 'emp' }">
								<a href="<c:url value='/emp/empList'/>">직원관리</a> |
								<a href="<c:url value='/dept/deptList'/>">부서관리</a> |
								<a href="<c:url value='/notice/notice'/>">지원공고</a> |
							</c:if>
						</div>

				</div>
			</div>
</body>
</html>