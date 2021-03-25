<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payStWrite.jsp</title>
</head>
<body>
<form:form action="payStRegist" method="post" name="frm" 
	modelAttribute="goodsPayStCommand">
<table border="1">	
	<tr><th>업체이름</th>
		<td>
			<select name="osNo">
				<c:forEach items="${osList}" var="dto">
					<option value="${dto.osNo}">${dto.osName}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>품목이름</th>
		<td><form:input path="orderContent" />
			<form:errors path="orderContent" /></td></tr>
	<tr><th>상세내용</th>
		<td><form:textarea rows="30" cols="50" path="detContent"></form:textarea>
		</td></tr>
	<tr><th>지급총금액</th>
		<td><form:input path="allPayment" />
			<form:errors path="allPayment" /></td></tr>	
</table>
<input type="submit" value="등록하기" />
</form:form>
</body>
</html>