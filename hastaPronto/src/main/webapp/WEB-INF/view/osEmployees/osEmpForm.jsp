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
<form:form action="oseAction" name="frm" method="post" modelAttribute="oseCommand" enctype="multipart/form-data" >
	<table border="1">
		<tr>
			<th>강사ID</th>
			<td>
				<form:input path="oseId"/>
				<form:errors path="oseId"/>
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
	</table>
</form:form>
</body>
</html>