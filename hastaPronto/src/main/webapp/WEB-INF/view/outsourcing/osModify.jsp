<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="../osModifyPro" name="frm" method="post">
	<input type="hidden" name="osNo" value="${os.osNo }" />
	업체이름 : <input type="text" name="osName" value="${os.osName }" /><br >
	사업자등록번호 : <input type="text" name="bsLicense" value="${os.bsLicense }" /><br >
	업체주소 : <input type="text" name="osAddr" value="${os.osAddr }" /><br >
	사업분류이름: <input type="text" name="osBusinessName" value="${os.osBusinessName }" /><br >
	대표자이름: <input type="text" name="repName" value="${os.repName }" /> <br >
	전화번호: <input type="text" name="osTel" value="${os.osTel }" /> <br >
	이메일 : <input type="text" name="osEmail" value="${os.osEmail }" /><br >
	<input type="submit" value="수정" />
</form>
</body>
</html>