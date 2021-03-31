<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>osEmpDetail.jsp</title>
</head>
<body>
<input type="hidden" name="oseNo" value="${osemp.oseNo }" />
<table border="1">
	<tr>
		<th>소속업체명</th>
		<td> 
			<c:if test="${osemp.osNo eq '89' }">FitnessH</c:if>
			<c:if test="${osemp.osNo eq '90' }">SwimmingS</c:if>
			<c:if test="${osemp.osNo eq '91' }">TheraphyT</c:if>
		</td>
	</tr>
	<tr>
		<th>강사ID</th>
		<td> ${osemp.oseId}</td>
	</tr>
	<tr>
		<th>강사이름</th>
		<td> ${osemp.oseName}</td>
	</tr>
	<tr>
		<th>강좌이름</th>
		<td> ${osemp.oseCat}</td>
	</tr>
	<tr>
		<th>강사연락처</th>
		<td> ${osemp.osePh}</td>
	</tr>
	<tr>
		<th>강사이메일</th>
		<td> ${osemp.oseEmail}</td>
	</tr>
	<tr>
		<th>강사주소</th>
		<td> ${osemp.oseAddr}</td>
	</tr>
	<tr>
		<th>등록일</th>
		<td>${osemp.oseRegist}</td>
	</tr>
	<tr>
		<th colspan="2">
			<a href="../osEmployees/osEmpModify/${oseCommand.oseNo}"> [수정] </a>
		    <a href="javascript:oseDelete();" > [삭제] </a>
            <a onclick="javascript:location.href='osEmpList'" > [목록] </a>
		</th>
	</tr>
</table>

</body>
</html>
<script type="text/javascript">
	function oseDelete(){
		if(confirm("등록된 강사를 정말로 삭제하시겠습니까?\n(삭제시 저장된 모든 파일도 함께 삭제됩니다.)")){
			location.href="oseDelete/${osemp.oseNo}";
		}
	}
</script>