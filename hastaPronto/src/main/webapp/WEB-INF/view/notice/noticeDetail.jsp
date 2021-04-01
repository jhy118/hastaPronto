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
								<li><a href="../hastaPronto/schedule/main">PREMIUM LIFE</a></li>
								<li><a href="wedding/wedBrochure">WEDDING</a>
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
		</div>
	</div>
	<!-- Main -->
	<div id="main" class="wrapper style1">
		<div class="container">
			<section>
				<header>
					<h2>Notice</h2>
				</header>
				<table border="1">
					<tr>
						<th>제목</th>
						<td>${notice.noticeName}</td>
					</tr>
					<tr>
						<th>기간</th>
						<td><fmt:formatDate value="${notice.startDate}"
								pattern="yyyy-MM-dd hh:mm" /> ~ <fmt:formatDate
								value="${notice.endDate }" pattern="yyyy-MM-dd hh:mm" /></td>
					</tr>
					<tr>
						<th>글쓴이</th>
						<td>${notice.empId}</td>
					</tr>
					<tr>
						<th>발표일</th>
						<td><fmt:formatDate value="${notice.announceDate}"
								pattern="yyyy-MM-dd hh:mm" /></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><c:set
								value="${fn:split(notice.noticeOriginalFileName, '`')}"
								var="originalFileName" /> <c:set
								value="${fn:split(notice.noticeStoreFileName, '`')}"
								var="storeFileName" /> <c:forTokens
								items="${notice.noticeFileSize}" delims="`" var="fileSize"
								varStatus="status">
								<a
									href="../fileDown?sfileName=${storeFileName[status.index]}&ofileName=${originalFileName[status.index]}">
									${originalFileName[status.index]} (${fileSize}Byte)</a>
								<br />
							</c:forTokens></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${fn:replace(notice.noticeContent, cn, br)}</td>
					</tr>
					<tr>
						<th colspan="2">
						<c:if test="${authInfo.grade == 'emp'}">
						<input type="button" value="수정"
							onclick="javascript:location.href='<c:url value="/notice/noticeModify/"/>' + ${notice.noticeNo};">
							<input type="button" value="삭제"
							onclick="javascript:location.href='<c:url value="/notice/noticeDelete/"/>'+ ${notice.noticeNo};">
							<input type="button" value="지원자보기"
							onclick="javascript:location.href='<c:url value="/apc/applicant?noticeNo="/>' + ${notice.noticeNo};">
						</c:if>
							<input type="button" value="목록"
							onclick="javascript:location.href='<c:url value="/notice/notice"/>';">
							<input type="button" value="지원하기"
							onclick="javascript:location.href='<c:url value="/apc/appForm/"/>' + ${notice.noticeNo};">
							<input type="button" value="지원서 확인"
							onclick="javascript:location.href='<c:url value="/apc/confirm"/>';"></th>
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