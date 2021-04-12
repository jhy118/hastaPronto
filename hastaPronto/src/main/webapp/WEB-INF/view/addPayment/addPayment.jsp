
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
	var idx = 2;
	function addRow() {
		var row = document.getElementById('addPayment').insertRow(-1);
		row.innerHTML = '<th>'
				+ idx
				+ '</th><th><select class="price'
				+ idx
				+ '" onchange="changePrice('
				+ "'"
				+ idx
				+ "'"
				+ ');"><option value="0">품목명</option><c:forEach items="${goodsList }" var="gd"><option value="${gd.goodsNo }`${gd.goodsName}`${gd.goodsChar }`">${gd.goodsName}</option></c:forEach></select></th><th><input class="price'
				+ idx
				+ '" type="text" name="apsNum" onchange="changePrice('
				+ "'"
				+ idx
				+ "'"
				+ ');" value="1" size="1" maxlength="2"></th><th colspan="2">\\<span class="price' 
		+ idx 
		+ '">0</span><input class="price'
		+ idx
		+ '" type="hidden" name="apsGName"><input class="price' 
		+ idx 
		+ '" type="hidden" name="apsChar"><input class="price' 
		+ idx 
		+ '" type="hidden" name="goodsNo"></th>';
		idx++;
	}
	function changePrice(num) {

		var qty = document.getElementsByClassName('price' + num)[1];
		var unitPrice = document.getElementsByClassName('price' + num)[0].value;
		var price = document.getElementsByClassName('price' + num)[2];
		var apName = document.getElementsByClassName('price' + num)[3];
		var apChar = document.getElementsByClassName('price' + num)[4];
		var gNo = document.getElementsByClassName('price' + num)[5];
		price.innerText = parseInt(qty.value)
				* parseInt(unitPrice.split('`')[2]);
		apChar.value = parseInt(qty.value) * parseInt(unitPrice.split('`')[2]);
		;
		apName.value = unitPrice.split('`')[1];
		gNo.value = unitPrice.split('`')[0];
		var totalPrice = 0;
		for (var i = 1; i < idx; i++) {
			totalPrice += parseInt(document.getElementsByClassName('price' + i)[2].innerText);
		}
		document.getElementById('total').innerText = totalPrice;
		document.frm.totalChar.value = totalPrice;
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
					<h2>Additional Pay</h2>
				</header>
				<form:form name="frm" modelAttribute="addPayCommand"
					action="../addPayment" method="post">
					<input type="button" value="추가" onclick="addRow();">
					<table border="1" id="addPayment">
						<tr>
							<th>예약번호</th>
							<th colspan="2">${resv.rmRvNo}<input type="hidden"
								name="rmRvNo" value="${resv.rmRvNo}"></th>
							<th>아이디</th>
							<th>${resv.userId }<input type="hidden" name="userId"
								value="${resv.userId }"></th>
						</tr>
						<tr>
							<th>번호</th>
							<th>품목명</th>
							<th>수량</th>
							<th colspan="2">가격</th>
						</tr>
						<tr>
							<th>1</th>
							<th><select class="price1" onchange="changePrice('1');">
									<option value="0">품목명</option>
									<c:forEach items="${goodsList }" var="gd">
										<option
											value="${gd.goodsNo }`${gd.goodsName}`${gd.goodsChar }`">${gd.goodsName}
										</option>
									</c:forEach>
							</select></th>
							<th><input class="price1" type="text" name="apsNum"
								onchange="changePrice('1');" value="1" size="1" maxlength="2">
							</th>
							<th colspan="2">\<span class="price1">0</span> <input
								class="price1" type="hidden" name="apsGName"> <input
								class="price1" type="hidden" name="apsChar"> <input
								class="price1" type="hidden" name="goodsNo"></th>
						</tr>
					</table>
					<table>
						<tr>
							<th>결제 금액</th>
							<th colspan="2">\<span id="total">0</span><input
								type="hidden" name="totalChar">
							</th>
							<th rowspan="2"><input type="submit" value="결제하기"></th>
						</tr>
						<tr>
							<th>결제 방법</th>
							<th><select name="apMethod">
									<option value="계좌이체">계좌이체</option>
									<option value="카드">카드</option>
							</select></th>
						</tr>
					</table>
				</form:form>
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