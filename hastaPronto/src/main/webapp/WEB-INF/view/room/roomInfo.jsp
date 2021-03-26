<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteRoom(){
		if(confirm('삭제하시겠습니까?'))
		location.href='../roomDelete/${room.rmNo}';
	}
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>방이름</th>
			<td>${room.rmName }</td>
		</tr>
		<tr>
			<th>방이미지</th>
			<td><c:forTokens items="${room.rmFile}" delims="`" var="img">
					<img alt="전경" src="../upload/${img}" width="200">
				</c:forTokens></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><fmt:formatNumber value="${room.rmChar}" type="currency"
					pattern="\#,###" /></td>
		</tr>
		<tr>
			<th>세부사항</th>
			<td>${room.rmContent }</td>
		</tr>
		<tr>
			<th>유료사항</th>
			<td>${room.rmPaycontent }</td>
		</tr>
		<tr>
			<th colspan="2"><input type="button" value="수정하기" 
			onclick="javascript:location.href='../roomModify/${room.rmNo}'">
			<input type="button" value="삭제하기" 
			onclick="deleteRoom();">
			<input type="button" value="목록" 
			onclick="javascript:location.href='../';">
			</th>
		</tr>
	</table>
</body>
</html>