<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function exPay(charge){
		var exbad = document.frm.rmExbadnum.value;
		var preCharge = charge/1000;
		document.getElementById('exP').innerHTML = '\\' + (exbad * 60) + ",000";
		document.getElementById('total').innerHTML = '\\' + (exbad * 60 + preCharge) + ",000";
		document.frm.rmPmChar.value = exbad * 60000 + parseInt(charge);
	}
</script>
<style type="text/css">
	table{
		display: inline-block;
	}
</style>
</head>
<body>
	<form:form action="roomResv" modelAttribute="roomResv" method="post" name="frm">
		<form:hidden path="rmNo" />
		<form:hidden path="ckIn" />
		<form:hidden path="ckOut" />
		<table width="600">
			<tr>
				<th colspan="2"><h3>예약 정보</h3></th>
			</tr>
			<tr>
				<td colspan="2">${room.rmName}<br />
					${fn:substringBefore(roomResv.ckIn, 'T')} ~
					${fn:substringBefore(roomResv.ckOut, 'T') }<br />
				</td>
			</tr>
			<tr>
				<td colspan="2"><h3>인원</h3></td>
			</tr>
			<tr>
				<td colspan="2"><select name="rmRvNum">
						<option value="">성인</option>
						<c:forEach begin="1" end="${room.rmNum }" var="adult">
							<option value="${adult}">${adult}</option><
						</c:forEach>
				</select> <form:errors path="rmRvNum"/> <select name="rmRequirements">
						<option value="">아동</option>
						<c:forEach begin="1" end="2" var="child">
							<option value="아동 ${child}명">${child }</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><h3>침대 추가</h3></td>
			</tr>
			<tr>
				<td colspan="2">객실 내 이동식 침대를 추가해 드립니다. 단, 한정된 수량으로 인해 수급이 불가 할
					수 있습니다. 체크인 시 가능 여부를 확인해 드립니다.<br /> \60,000[1대/1박] <select
					name="rmExbadnum" onchange="exPay('${room.rmChar}');">
						<option value="0">추가안함</option>
						<option value="1">1대</option>
				</select><br />
				</td>
			</tr>
			<tr>
				<td colspan="2"><h3>취소규정</h3></td>
			</tr>
			<tr>
				<td colspan="2">
					<ul>
						<li>숙박 예정일 하루 전인 [${fn:substringBefore(roomResv.ckIn, '-')}년
							${fn:substring(roomResv.ckIn, 5, 6)}월
							${fn:substring(roomResv.ckIn, 7, 9)-1}일 오후 6시]까지 취소 가능합니다. 취소 기한
							이후에 예약을 취소하실 경우 예약 첫날에 해당하는 1박 객실 요금과 세금 및 봉사료가 합산된 금액의 위약금이 청구될
							수 있으니 유의하시기 바랍니다.</li>
						<li>투숙 당일 노쇼 (No Show) 발생 시 동일한 위약금이 청구될 수 있습니다.</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td colspan="2"><h3>요청 사항</h3></td>
			</tr>
			<tr>
				<td colspan="2">선택하신 투숙 요청 사항은 호텔 사정에 따라 제공이 불가능할 수 있으며 보장되는
					항목이 아닙니다. 가능 여부는 체크 인 시 확인하실 수 있습니다.</td>
			</tr>
			<tr>
				<th>객실위치</th>
				<td><input type="checkbox" name="rmRequirements" value="저층객실">
					저층객실 <input type="checkbox" name="rmRequirements" value="엘리베이터 근처">
					엘리베이터 근처</td>
			</tr>
			<tr>
				<th>기타요청</th>
				<td><input type="checkbox" name="rmRequirements" value="깃털 알러지">
					깃털 알러지 <input type="checkbox" name="rmRequirements"
					value="장애인 편의 객실"> 장애인 편의 객실 <input type="checkbox"
					name="rmRequirements" value="호텔 브로셔"> 호텔 브로셔 <form:textarea
						rows="3" cols="50" path="rmRequirements" /></td>
			</tr>
			<tr>
				<td colspan="2"><h3>요청 사항</h3></td>
			</tr>
			<tr>
				<td colspan="2">신용카드 종류 <select name="rmAccount">
						<option value="">카드사를 선택해주세요</option>
						<option value="01">American Express카드</option>
						<option value="02">JCB카드</option>
						<option value="03">Maestro카드</option>
						<option value="04">Master카드</option>
						<option value="05">국민카드</option>
						<option value="06">농협카드</option>
						<option value="07">롯데카드</option>
						<option value="08">비씨카드</option>
						<option value="09">삼성카드</option>
						<option value="10">신한카드</option>
						<option value="11">시티카드</option>
						<option value="12">우리카드</option>
						<option value="13">하나카드</option>
						<option value="14">현대카드</option>
				</select><br /> 카드번호 <input type="text" name="rmAccount"
					placeholder="0000-0000-0000-0000"><br /> 유효기간 <input
					type="text" name="rmAccount" size="2" maxlength="2"
					placeholder="MM"> 월 / <input type="text" name="rmAccount" size="4"
					maxlength="4" placeholder="YYYY"> 년<br/><form:errors path="rmAccount"/>
				</td>
			</tr>
		</table>
		<table width="300">
			<tr>
				<td>객실 총 금액</td>
				<td align="right"><fmt:formatNumber type="curency"
						value="${room.rmChar*0.8 }" pattern="\#,###" /></td>
			</tr>
			<tr>
				<td>객실 세금 및 봉사료</td>
				<td align="right"><fmt:formatNumber type="curency"
						value="${room.rmChar*0.2 }" pattern="\#,###" /></td>
			</tr>
			<tr>
				<td>추가옵션 금액</td>
				<td align="right"><span id="exP" >\0</span></td>
			</tr>
			<tr>
				<td>총 예약 금액</td>
				<td align="right"><span id="total"><fmt:formatNumber type="curency"
						value="${room.rmChar}" pattern="\#,###" /></span>
						<input type="hidden"  name="rmPmChar" value="${room.rmChar}"><br/>
						</td>
			</tr>
			<tr>
				<td colspan="2">(박 수, 객실 세금 및 봉사료, 옵션 포함)</td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="결제하기"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>