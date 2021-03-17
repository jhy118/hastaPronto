<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="../empModifyAction" method="post"
		modelAttribute="empCommand">
		<input type="hidden" value="${emp.empId}" name="empId">
		<table border="1">
			<tr>
				<th>사번</th>
				<td>${emp.empNo}</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${emp.empId}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${emp.empName}</td>
			</tr>
			<tr>
				<th>부서</th>
				<td><select name="depNo">
						<c:forEach items="${deptList}" var="dep">
							<option value="${dep.depNo}"
								<c:if test="${emp.depNo == dep.depNo}">
									selected="selected"
								</c:if>>${dep.depName}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" value="${emp.empPh}" name="empPh"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" value="${emp.empAddr}" name="empAddr"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" value="${emp.empEmail}" name="empEmail"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정하기"> <input
					type="button" value="뒤로가기" onclick="javascript:history.back();"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>