<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>
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
							<option value="${gd.goodsNo }`${gd.goodsName}`${gd.goodsChar }`">${gd.goodsName}
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
				<th colspan="2">\<span id="total">0</span><input type="hidden"
					name="totalChar">
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
</body>
</html>