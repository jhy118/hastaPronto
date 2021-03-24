<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsPayStList.jsp</title>
<script type="text/javascript">
	function changeBillSt(){
		var selectValue = document.getElementById('billSt').value;
		location.href='goodsPayStList?page=1&osNo='+selectValue;
	}
</script>
</head>
<body>
<a href="payStWrite">등록하기</a><br />
<select onchange="changeBillSt();" id="billSt">
	<option value="0">대금지급서</option>
	<c:forEach items="${osList}" var="dto">
		<option value="${dto.osNo}" 
			<c:if test="${osNo == dto.osNo}">selected="selected"</c:if>>
			${dto.osName}
		</option>
	</c:forEach>
</select>
<br /><br />
<table border="1">
	<tr>
		<th>대금지급번호</th>
		<th>품목이름</th>
		<th>대금지급날짜</th>
	</tr>
	<c:forEach items="${list}" var="dto" varStatus="status">
		<tr onclick="javascript:location.href='goodsPayStInfo/${dto.goodsPayNo}';">
			<td>${status.count+(page-1)*10}</td>			
			<td>${dto.orderContent}</td>
			<td><fmt:formatDate value="${dto.paymentDate}" type="date"
				pattern = "yyyy-MM-dd" /></td>
		</tr>
	</c:forEach>
	<tr>
		<th colspan="3">
			<c:if test="${page <= 1}">[이전]</c:if>
			<c:if test="${page > 1}">
				<a href="${pageUrl }page=${page-1 }&osNo=${osNo}">[이전]</a>
			</c:if>
			<c:forEach begin="${startPage }" end="${endPage}" var="i" step="1">
			&nbsp;&nbsp;
			<a href="${pageUrl }page=${i }&osNo=${osNo}">
				[${i }]</a>&nbsp;&nbsp;
			</c:forEach>
			<c:if test="${page < maxPage }">
				<a href="${pageUrl }page=${page + 1 }&osNo=${osNo}">
					[다음]</a>
			</c:if>
			<c:if test="${page >= maxPage }">[다음]</c:if>
		</th>
	</tr>
</table>
</body>
</html>