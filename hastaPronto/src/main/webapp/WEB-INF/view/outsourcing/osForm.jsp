<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>osForm.jsp</title>
</head>
<body>
<form:form action="osFormAction" name="frm" method="post" modelAttribute="osCommand" enctype="multipart/form-data" >
	<table border="1">
		<tr>
			<th>업체이름</th>
			<td>
				<form:input path="osName" />
         		<form:errors path="osName" />
			</td>
		</tr>
		<tr>
			<th>사업자등록번호</th>
			<td>
				<form:input path="bsLicense" />
         		<form:errors path="bsLicense" />
			</td>
		</tr><tr>
			<th>업체주소</th>
			<td>
				<form:input path="osAddr" />
         		<form:errors path="osAddr" />
			</td>
		</tr><tr>
			<th>사업분류이름</th>
			<td>
				<form:input path="osBusinessName" />
         		<form:errors path="osBusinessName" />
			</td>
		</tr><tr>
			<th>대표자이름</th>
			<td>
				<form:input path="repName" />
         		<form:errors path="repName" />
			</td>
		</tr><tr>
			<th>사업체전화번호</th>
			<td>
				<form:input path="osTel" />
         		<form:errors path="osTel" />
			</td>
		</tr><tr>
			<th>사업체이메일</th>
			<td>
				<form:input path="osEmail" />
         		<form:errors path="osEmail" />
			</td>
		</tr>
		<tr>
		<th>파일추가
		</th>
			<td >
				 <input type="file" name="report" multiple="multiple" />
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
			<input type="submit" value="등록" />
			<input type="button" value="취소" onclick="javascript:location.href='osList'"/>
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>