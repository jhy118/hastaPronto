<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function changeNotice(){
		var selectValue = document.getElementById('ntn').value;
		location.href='applicant?page=1&noticeNo='+selectValue;
	}
</script>
</head>
<body>
	<select onchange="changeNotice();" id="ntn">
		<option value="0">공고목록</option>
		<c:forEach items="${noticeList}" var="noti">
			<option value="${noti.noticeNo}">${noti.noticeNo}. ${noti.noticeName}</option>
		</c:forEach>
	</select>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>성별</th>
			<th>이메일</th>
		</tr>
		<c:forEach items="${appList}" var="app" varStatus="status">
			<tr onclick = "javascript:location.href='applicantInfo/${app.appNo}';">
				<td>${status.count+(page-1)*10}</td>
				<td>${app.appName}</td>
				<td>${app.appGender}</td>
				<td>${app.appEmail}</td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="4"><c:if test="${page <= 1}">[이전]</c:if> <c:if
					test="${page > 1}">
					<a href="${pageUrl }page=${page-1 }&noticeNo=${noticeNo}">[이전]</a>
				</c:if> <c:forEach begin="${startPage }" end="${endPage}" var="i" step="1">
	&nbsp;&nbsp;<a href="${pageUrl }page=${i }&noticeNo=${noticeNo}">[${i }]</a>&nbsp;&nbsp;
	</c:forEach> <c:if test="${page < maxPage }">
					<a href="${pageUrl }page=${page + 1 }&noticeNo=${noticeNo}">[다음]</a>
				</c:if> <c:if test="${page >= maxPage }">[다음]</c:if></th>
		</tr>
	</table>
</body>
</html>