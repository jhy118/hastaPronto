<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../include/includeDelFile.jsp" %>
</head>
<body>
	<form:form modelAttribute="room" method="post" enctype="multipart/form-data">
	<form:hidden path="rmNo"/>
		<table border="1">
			<tr>
				<th>방이름</th>
				<td><form:input path="rmName"/></td>
			</tr>
			<tr>
				<th>방이미지</th>
				<td><c:forTokens items="${room.rmFile}" delims="`" var="img" varStatus="idx">
						<p class="imgName${idx.index}" >
						<img alt="전경" src="../upload/${img}" width="100">
						<input type="button" value="삭제" 
						onclick="imgDelete('${img}','.imgName${idx.index}');"></p>
					</c:forTokens>
					<input type="file" name = "rmFile">
				</td>
			</tr>
			<tr>
				<th>가격</th>
				<td><form:input path="rmChar"/></td>
			</tr>
			<tr>
				<th>정원</th>
				<td><form:input path="rmNum"/></td>
			</tr>
			<tr>
				<th>세부사항</th>
				<td><form:input path="rmContent"/></td>
			</tr>
			<tr>
				<th>유료사항</th>
				<td><form:input path="rmPaycontent"/></td>
			</tr>
			<tr>
				<th>방개수</th>
				<td><form:input path="rmCount"/></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정하기"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>