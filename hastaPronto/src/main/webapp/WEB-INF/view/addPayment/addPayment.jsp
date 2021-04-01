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
				+ ');"><c:forEach items="${goodsList }" var="gd"><option value="${gd.goodsNo }`${gd.goodsName}`${gd.goodsChar }`"<c:if test="${gd.goodsChar == 0}">selected="selected"</c:if>>${gd.goodsName}</option></c:forEach></select></th><th><input class="price'
				+ idx
				+ '" type="text" name="apsNum" onchange="changePrice('
				+ "'"
				+ idx
				+ "'"
				+ ');" value="1"size="1" maxlength="2"></th><th colspan="2">\\<span class="price'
				+ idx
				+'">0</span><input type="hidden" name="apsChar"></th>'
		idx++;
	}
	function changePrice(num) {

		var qty = document.getElementsByClassName('price' + num)[1];
		var unitPrice = document.getElementsByClassName('price' + num)[0].value;
		var price = document.getElementsByClassName('price' + num)[2];
		price.innerText = parseInt(qty.value)
				* parseInt(unitPrice.split('`')[2]);
		var totalPrice = 0;
		for(var i = 1; i < idx; i++){
			totalPrice += parseInt(document.getElementsByClassName('price' + i)[2].innerText);
		}
		document.getElementById('total').innerText = totalPrice;
	}
</script>
</head>
<body>
	<form action="" name="frm">
		<input type="button" value="추가" onclick="addRow();">
		<table border="1" id="addPayment">
			<tr>
				<th>예약번호</th>
				<th colspan="2">${resv.rmRvNo}</th>
				<th>아이디</th>
				<th>${resv.userId }</th>
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
						<c:forEach items="${goodsList }" var="gd">
							<option value="${gd.goodsNo }`${gd.goodsName}`${gd.goodsChar }`"
								<c:if test="${gd.goodsChar == 0}">selected="selected"</c:if>>${gd.goodsName}
							</option>
						</c:forEach>
				</select></th>
				<th><input class="price1" type="text" name="apsNum" onchange="changePrice('1');" value="1" size="1" maxlength="2">	
				</th>
				<th colspan="2">\<span class="price1">0</span>
				<input type="hidden" name="apsNum">
				<input type="hidden" name="apsGName">
				<input type="hidden" name="goodsNo">
				<input type="hidden" name="apsChar"></th>
			</tr>
		</table>
		<table border = "1">
			<tr>
			 <th align="right">총 결제 금액 : \<span id="total">0</span><input type="hidden" name="totalChar">
			 </th>
			 <th>결제 수단
			 </th>
			 <th><select>
			 <option value="계좌이체">계좌이체</option>
			 <option value="카드">카드</option>
			 </select>
			 </th>
			 <th><input type="submit" value="결제하기">
			 </th>
			</tr>
		</table>
	</form>
</body>
</html>