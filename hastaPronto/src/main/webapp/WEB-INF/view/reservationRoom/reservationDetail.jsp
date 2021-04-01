
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
	function deleteResv(rvNo, pmNo) {
		if (confirm('예약을 취소하시겠습니까?')) {
			location.href = '../cancleReservation?rvNo=' + rvNo + "&pmNo=" + pmNo;
		}
	}
</script>
</head>

<body class="homepage">
	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<h1>
				<a href="<c:url value='/'/>" id="logo">HASTA PRONTO</a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="<c:url value='/'/>">HASTA PRONTO</a></li>
					<li><a href="">ROOM</a>
						<ul>
							<c:forEach items="${roomList }" var="room">
								<li><a href="<c:url value='/room/roomInfo/${room.rmNo}'/>">${room.rmName }</a></li>
							</c:forEach>
						</ul></li>
					<li><a href="left-sidebar.html">RESTAURANT</a></li>
					<li><a href="../hastaPronto/schedule/main">PREMIUM LIFE</a></li>
					<li><a href="wedding/wedBrochure">WEDDING</a>
						<ul>
							<li><a href="wedding/wedBrochure">WEDDING HALL</a></li>
							<li><a href="wedRes/wedResList">WEDDING BUFFET</a></li>
							<li><a href="wedCs/wedCsList">COLSULTING</a></li>
							<li><a href="wedRv/wedRvList">RESERVATION</a>
								<ul>
									<li><a href="wedPay/wedPmList">PAYMENT</a></li>
								</ul></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- Main -->
	<div id="main" class="wrapper style1">
		<div class="container">
			<section>
				<header>
					<h2>Reservation Room</h2>
				</header>
	<table border="1">
		<tr>
			<th>예약번호</th>
			<td>${resv.rmRvNo}</td>
		</tr>
		<tr>
			<th>객실</th>
			<td>${resv.roomDTO.rmName}</td>
		</tr>
		<tr>
			<th>날짜</th>
			<td><fmt:formatDate value="${resv.ckIn}"
					pattern="yyyy.MM.dd hh:mm" /> ~ <fmt:formatDate
					value="${resv.ckOut}" pattern="yyyy.MM.dd hh:mm" /> 1박</td>
		</tr>
		<tr>
			<th>결제금액</th>
			<td><fmt:formatNumber value="${resv.paymentRoomDTO.rmPmChar}"
					pattern="\#,###" /></td>
		</tr>
		<tr>
			<th colspan="2"><img alt=""
				src="../../room/upload/${fn:split(resv.roomDTO.rmFile,'`')[0]}"
				width="400"></th>
		</tr>
		<tr>
			<th>요청사항</th>
			<td><ul>
					<c:forTokens items="${resv.rmRequirements}" delims="/" var="req">
						<li>${req}</li>
					</c:forTokens>
					<c:if test="${resv.rmExbadnum > 0}">
						<li>추가 배드 ${resv.rmExbadnum}개</li>
					</c:if>
				</ul></td>
		</tr>
	</table>
	<input type="button" value="예약취소"
		onclick="deleteResv('${resv.rmRvNo}','${resv.paymentRoomDTO.rmPmNo}');" />
	<input type="button" value="예약목록"
		onclick="javascript:location.href='../reservedList'" />
</section>
		</div>
	</div>

	<!-- Footer -->
	<div id="footer">
		<div class="container">

			<!-- Lists -->
			<div class="row">
				<div class="8u"></div>
				<div class="4u"></div>
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