<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteEmp(){
		if(confirm('정말로 삭제하시겠습니까?')){
			location.href='<c:url value="/emp/empDelete/${emp.empId}"/>';
		}
	}
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>사번</th>
			<td>${emp.empNo}</td>
		</tr>
		<tr>
			<th>부서</th>
			<td>
			<c:if test="#{emp.depNo} != null">
			${emp.depNo}
			</c:if>
			<c:if test="#{emp.depNo} == null">
			하핫
			</c:if>
			</td>
		</tr>
		<tr>
			<th>입사일</th>
			<td>${emp.empRegist}</td>
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
			<th>연락처</th>
			<td>${emp.empPh}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${emp.empEmail}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${emp.empAddr}</td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><fmt:formatDate type="date" value="${emp.empBirth}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<th>계좌번호</th>
			<td>${emp.empAccount}</td>
		</tr>
	</table>
	<button onclick="javascript:location.href='<c:url value="/emp/empModify/${emp.empId}"/>';">수정하기</button>
	<button onclick="javascript:deleteEmp()">삭제하기</button>
	<button onclick="javascript:history.back();">뒤로가기</button>
</body>
</html>