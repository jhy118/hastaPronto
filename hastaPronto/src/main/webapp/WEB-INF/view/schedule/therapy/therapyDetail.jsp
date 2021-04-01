<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>therapyDetail.jsp</title>
</head>
<body>
<table border="1">
		<tr>
			<th>예약자 성명</th>
			<td>&nbsp;&nbsp;${sch.schName }</td>
		</tr>
		<tr>
			<th>예약날짜 & 시간</th>
			<td>&nbsp;&nbsp;${sch.schDate }&nbsp;${sch.schTime }</td>
		</tr>
		<tr>
			<th>예약하신 관리 종류</th>
			<td>&nbsp;
				<c:if test="${sch.schType eq 'basic' }">기본스파</c:if>
				<c:if test="${sch.schType eq 'color' }">컬러테라피</c:if>
				<c:if test="${sch.schType eq 'base' }">헤이베스</c:if>
				<c:if test="${sch.schType eq 'perfection' }">스위스퍼펙션 스파</c:if>
				</td>
		</tr>
		<tr>
			<th>선택하신 관리사</th>
			<td>&nbsp;
				<c:if test="${sch.oseNo eq '107' }">김나린 관리사</c:if>
				<c:if test="${sch.oseNo eq '108' }">진유라 관리사</c:if>
				<c:if test="${sch.oseNo eq '109' }">김태리 관리사</c:if>
				<c:if test="${sch.oseNo eq '110' }">박연우 관리사</c:if>
				<c:if test="${sch.oseNo eq '111' }"> 첫방문(미지정) </c:if>
			</td>
		</tr>
		<tr>
			<th>예약자 수(최대 3명)</th>
			<td>&nbsp;&nbsp;${sch.schNum }명</td>
		</tr>
		<tr>
			<th>추가요청사항</th>
			<td>&nbsp;${sch.schContent }</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="button" value="수정" onclick="javascript:location.href='../therapy/therapyModify/${sch.schNo}'" /> 
				<input type="button" value="삭제" onclick="javascript:therapyDelete();" /> 
				<input type="button" value="취소" onclick="javascript:location.href='../therapy/therapyListOk'"/>
			</th>
		</tr>
</table>
</body>
</html>
<script type="text/javascript">
	function therapyDelete(){
		if(confirm("예약을 정말로 삭제하시겠습니까?\n(삭제시 모든 예약정보가 삭제됩니다.)")){
			location.href="therapyDelete/${sch.schNo}";
		}
	}
</script>