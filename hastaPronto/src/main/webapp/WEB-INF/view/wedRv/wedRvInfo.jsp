<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedRvInfo.jsp</title>
</head>
<body>
<form:form action="" name="frm" method="post" 
		modelAttribute="wedRvCommand">
<input type="hidden" name="nYear" value="${wedRvCommand.nYear}" />
<input type="hidden" name="nMonth" value="${wedRvCommand.nMonth}" />
<input type="hidden" name="nDay" value="${wedRvCommand.nDay}" />
<table border="1">
<caption>예약자 정보</caption>
	<tr><th>아이디</th>
		<td>${wedRvList.userId}</td></tr>
	<tr><th>성명</th>
		<td>${wedCsList.wedCosName}</td></tr>
	<tr><th>이메일</th>
		<td>${wedCsList.wedCosEmail}</td></tr>
	<tr><th>연락처</th>
		<td>${wedCsList.wedCosPh}</td></tr>
	<tr><th>1차 상담일</th>
		<td>${wedCsList.wedCosNo}.${wedCsList.wedCosDay}</td>
	</tr>
</table> 


<table border="1">
<caption>${wedRvCommand.nYear}년 
		${wedRvCommand.nMonth}월 
		${wedRvCommand.nDay}일 예약 내역</caption>	
	<tr><th>예약시간</th>
		<td>${wedRvList.wedRvTime}</td></tr>
	<tr><th>예상인원</th>
		<td>${wedRvList.wedRvNum}</td></tr>
	<tr><th>예식장</th>
		<td>${wedList.wedName}</td>
	<tr><th>예식뷔페</th>
		<td>${wedRtList.wedRtName}</td>
	</tr>
	<tr><th>총 예약금</th>
		<td>${wedRvList.wedRvChar}원</td>
	</tr>
</table>
</form:form>
		<a href="wedRvModify?wedRvNo=${wedRvList.wedRvNo}&nYear=${wedRvCommand.nYear}&nMonth=${wedRvCommand.nMonth}&nDay=${wedRvCommand.nDay}">수정</a>
<a href="#" onclick = "return wedRvDel(${wedRvList.wedRvNo})">삭제</a>
<script type="text/javascript">
	function wedRvDel(wedRvNo){
		if(confirm('정말 삭제하시겠습니까?')){
			location.href='wedRvDel?wedRvNo='+wedRvNo;
		}
		return false;
	}
</script>
</body>
</html>