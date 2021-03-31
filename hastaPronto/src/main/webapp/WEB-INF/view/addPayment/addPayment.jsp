<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	idx = 2;
	function addRow() {
		var row = document.getElementById('addPayment').insertRow(-1);
		row.innerHTML = '<th>'
				+ idx
				+ '</th><th><select><c:forEach items="${goodsList }" var="gd" ><option value="${gd.goodsNo }" <c:if test="${gd.goodsChar == 0}">selected="selected"</c:if>>${gd.goodsName}</option></c:forEach></select></th><th> 1 </th><th> \\0 </th><th><input type="button" value="추가" onclick="addRow();"></th>';
		idx++;
	}
	function changePrice() {
		var qty = document.getElementsByClassName('price1')[0];
		var price = document.getElementById('hi').value;
		var totalprice = document.getElementsByClassName('price1')[1];
		totalprice.innerHTML = parseInt(qty.value) * parseInt(price.split('`')[2]);
	}
// 	function changeValue() {
// 		var price = 
// 	}
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
			<th>가격</th>
			<th>가격</th>
		</tr>
		<tr>
			<th>1</th>
			<th><select id="hi" onchange="changeValue();">
					<c:forEach items="${goodsList }" var="gd">
						<option value="${gd.goodsNo }`${gd.goodsName}`${gd.goodsChar }`"
							<c:if test="${gd.goodsChar == 0}">selected="selected"</c:if>>${gd.goodsName}
							</option>
					</c:forEach>
			</select></th>
			<th><input class="price1" type="text" onchange="changePrice();" value="1"
				size="1" maxlength="2"></th>
			<th>\<span class="price1">0</span></th>
			<th></th>
		</tr>
	</table>
	</form>
</body>
</html>