<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" modelAttribute="room" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>방이름</th>
				<td><form:input path="rmName"/>
				<form:errors path="rmName"/></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><form:input path="rmChar"/>
				<form:errors path="rmChar"/></td>
			</tr>
			<tr>
				<th>객실정보</th>
				<td><form:input path="rmContent"/>
				<form:errors path="rmContent"/></td>
			</tr>
			<tr>
				<th>유료정보</th>
				<td><form:input path="rmPaycontent"/>
				<form:errors path="rmPaycontent"/></td>
			</tr>
			<tr>
				<th>정원</th>
				<td><form:input path="rmNum"/>
				<form:errors path="rmNum"/></td>
			</tr>
			<tr>
				<th>방 개수</th>
				<td><form:input path="rmCount"/>
				<form:errors path="rmCount"/></td>
			</tr>
			<tr>
				<th>사진</th>
				<td><input type="file" name="rmFile" multiple="multiple"></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="등록">
					<input type="button" value="취소" onclick="javascript:history.back();">
				</th>
			</tr>
		</table>
	</form:form>
</body>
</html>