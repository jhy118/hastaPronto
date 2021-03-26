<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>osEmpForm.jsp</title>
</head>
<body>
<form:form action="oseAction" name="frm" method="post" modelAttribute="oseCommand">
	<table border="1">
		<tr>
			<th>소속업체명</th>
			<td>
				<form:radiobutton path="osNo" id="osNo" value="89"/> FitnessH
				<form:radiobutton path="osNo" id="osNo" value="90"/> SwimmingS
				<form:radiobutton path="osNo" id="osNo" value="91"/> TheraphyT 
			</td>
		</tr>
		<tr>
			<th>강사ID</th>
			<td>
				<form:input path="oseId"/>
				<form:errors path="oseId"/>
			</td>
		</tr>
		<tr>
			<th>강사PW</th>
			<td>
				<form:input path="osePw"/>
				<form:errors path="osePw"/>
			</td>
		</tr>
		<tr>
			<th>강사이름</th>
			<td>
				<form:input path="oseName"/>
				<form:errors path="oseName"/>
			</td>
		</tr>
		<tr>
			<th>강좌이름</th>
			<td>
				<form:input path="oseCat"/>
				<form:errors path="oseCat"/>
			</td>
		</tr>
		<tr>
			<th>강사연락처</th>
			<td>
				<form:input path="osePh"/>
				<form:errors path="osePh"/>
			</td>
		</tr>
		<tr>
			<th>강사이메일</th>
			<td>
				<form:input path="oseEmail"/>
				<form:errors path="oseEmail"/>
			</td>
		</tr>
		<tr>
			<th>강사주소</th>
			<td>
				<form:input path="oseAddr"/>
				<form:errors path="oseAddr"/>
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="등록" />
				<input type="button" value="취소" onclick="javascript:location.href='<c:url value= "/"/>'"/>
			</th>
		</tr>
	</table>
</form:form>
</body>
</html>