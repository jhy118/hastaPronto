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
	function deleteEmp(){
		if(confirm('정말로 삭제하시겠습니까?')){
			location.href='<c:url value="/emp/empDelete/${emp.empId}"/>';
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
					<h2>Employee</h2>
				</header>
	<table border="1">
		<tr>
			<th>사번</th>
			<td>${emp.empNo}</td>
		</tr>
		<tr>
			<th>부서</th>
			<td>
			<c:if test="${emp.depNo == null}">
			미정
			</c:if>
			<c:forEach items="${deptList }" var="dept">
				<c:if test="${emp.depNo == dept.depNo }">
					${dept.depName }
				</c:if>
			</c:forEach>
			</td>
		</tr>
		<tr>
			<th>입사일</th>
			<td>${emp.empRegist}</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${emp.empId}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${emp.empName}</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td>${emp.empPh}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${emp.empEmail}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${emp.empAddr}</td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><fmt:formatDate type="date" value="${emp.empBirth}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<th>계좌번호</th>
			<td>${emp.empAccount}</td>
		</tr>
	</table>
	<button onclick="javascript:location.href='<c:url value="/emp/empModify/${emp.empId}"/>';">수정하기</button>
	<button onclick="javascript:deleteEmp()">삭제하기</button>
	<button onclick="javascript:location.href='<c:url value="/emp/empList" />';">뒤로가기</button>
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
