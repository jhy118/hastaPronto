<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function deleteDept(depName, depNo) {
		if (confirm(depName + '부서를 삭제하시겠습니까?')) {
			location.href = 'deptDelete/' + depNo;
		}
	}
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서주소</th>
			<th>부서연락처</th>
			<th>부서 수 : ${count }</th>
		</tr>
		<c:forEach items="${departments}" var="dep">
			<tr>
				<td>${dep.depNo}</td>
				<td>${dep.depName}</td>
				<td>${dep.depAddr}</td>
				<td>${dep.depPh}</td>
				<td>
					<button onclick="javascript:location.href='deptModify/${dep.depNo}';">수정</button>
					<button onclick="deleteDept('${dep.depName}', '${dep.depNo }');">삭제</button>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="5"><%@include file="../include/includePage.jsp"%></th>
		</tr>
	</table>
	<a href="deptRegist">부서등록</a>
</body>
</html>