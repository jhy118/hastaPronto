<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedCsInfo.jsp</title>
</head>
<body>
<table border="1">
	<tr><th>아이디</th>
		<td>${list.userId}</td></tr>
	<tr><th>성명</th>
		<td>${list.wedCosName}</td></tr>
	<tr><th>이메일</th>
		<td>${list.wedCosEmail}</td></tr>
	<tr><th>연락처</th>
		<td>${list.wedCosPh}</td></tr>
	<tr><th>희망 상담일 </th>
		<td>${list.wedCosDay}</td>
	</tr>
	<tr><th>예상인원</th>
		<td>${list.wedCosNum}</td></tr>
	<tr><th>희망예식장</th>
		<td>${wedList1.wedName}</td>
	</tr>
	<tr><th>기타 문의사항</th>
		<td>${list.wedCosContent}</td></tr>
</table> 
<a href="wedCsModify?wedCosNo=${list.wedCosNo}">수정</a>
<a href="#" onclick = "return wedCsDel(${list.wedCosNo})">삭제</a>
<script type="text/javascript">
	function wedCsDel(wedCosNo){
		if(confirm('정말 삭제하시겠습니까?')){
			location.href='wedCsDel?wedCosNo='+wedCosNo;
		}
		return false;
	}
</script>
</body>
</html>