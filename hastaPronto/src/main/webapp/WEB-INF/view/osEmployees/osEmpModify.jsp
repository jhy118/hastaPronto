<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>osEmpModify.jsp</title>
</head>
<body>
<form action="../osEmpModifyPro" name="frm" method="post">
	<input type="hidden" name="oseNo" value="${osemp.oseNo }" />
<table border="1">
	<tr>
		<th>등록일</th>
		<td>${osemp.oseRegist }</td>
	</tr>
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
		<td> 
			<input type="text" id="oseName" name="oseName" value="${osemp.oseName}"/>
		</td>
	</tr>
	<tr>
		<th>강좌이름</th>
		<td> 
		<input type="text" id="oseCat" name="oseCat"  value="${osemp.oseCat}"/>
		</td>
	</tr>
	<tr>
	<th>강사연락처</th>
		<td> 
			<input type="text" id="osePh" name="osePh" value="${osemp.osePh}"/>
		</td>
	</tr>
	<tr>
		<th>강사이메일</th>
		<td> 
			<input type="text" id="oseEmail" name="oseEmail" value="${osemp.oseEmail}"/>
		</td>
	</tr>
	<tr>
		<th>강사주소</th>
		<td> 
			<input type="text" id="oseAddr" name="oseAddr" value="${osemp.oseAddr}"/>
		</td>
	</tr>
	<tr>
		<th colspan="2" align="center">
			<input type="submit" value="수정" />
			<input type="button" value="취소" onclick="javascript:location.href='<c:url value= "/osEmployees/osEmpDetail?oseNo=${osemp.oseNo}" />'"/>
		</th>
	</tr>
</table>	
</form>
</body>
</html>