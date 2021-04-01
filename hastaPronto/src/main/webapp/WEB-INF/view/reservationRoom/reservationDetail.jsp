<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteResv(rvNo, pmNo) {
		if (confirm('예약을 취소하시겠습니까?')) {
			location.href = '../cancleReservation?rvNo=' + rvNo + "&pmNo=" + pmNo;
		}
	}
</script>
</head>
<body>
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
</body>
</html>