<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedCsModify.jsp</title>
</head>
<body>
<form action="wedCsModifyOk" method="post" name="frm">
<input type="hidden" name="wedCosNo" value="${list.wedCosNo}">
<table border="1">
	<tr><th>아이디</th>
		<td>${list.userId}</td></tr>
	<tr><th>성명</th>
		<td><input type="text" name="wedCosName" value="${list.wedCosName}" /></td></tr>
	<tr><th>이메일</th>
		<td><input type="text" name="wedCosEmail" value="${list.wedCosEmail}" /></td></tr>
	<tr><th>연락처</th>
		<td><input type="text" name="wedCosPh" value="${list.wedCosPh}" /></td></tr>
	<tr><th>희망 상담일 </th>
		<td><c:set var="date"><fmt:formatDate value="${list.wedCosDay}" pattern="yyyy-MM-dd" /></c:set>
			<input type="date" name="wedCosDay" value="${date }" /></td>
	</tr>
	<tr><th>예상인원</th>
		<td><input type="text" name="wedCosNum" value="${list.wedCosNum}" /></td></tr>
	<tr><th>희망예식장</th>
		<td>
			<select name="wedNo">
			<c:forEach items="${wedList}" var="wedList">
				<option value="${wedList.wedNo }" <c:if test="${list.wedNo eq wedList.wedNo  }">selected</c:if> >${wedList.wedName }</option>
			</c:forEach>
			</select>
		</td>
	</tr>
	<tr><th>기타 문의사항</th>
		<td><textarea rows="10" cols="35" 
				name="wedCosContent">${list.wedCosContent}</textarea>
		</td>
	</tr>
	<tr><td colspan="2">
			<input type="submit" value="수정 완료" />
		</td>
	</tr>
</table> 
</form>
</body>
</html>