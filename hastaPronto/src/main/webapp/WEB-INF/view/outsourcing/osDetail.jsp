<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>osDetail.jsp</title>
</head>
<body>
업체이름 : ${os.osName }<br >
사업자등록번호 : ${os.bsLicense }<br >
업체주소 : ${os.osAddr }<br >
사업분류이름: ${os.osBusinessName }<br >
대표자이름: ${os.repName }<br >
전화번호: ${os.osTel }<br >
이메일 : ${os.osEmail }<br >
 =====================================> <br >
   &nbsp; &nbsp;  &nbsp; &nbsp;
 <a href="../outsourcing/osModify/${os.osNo}"> [수정] </a>
  &nbsp; &nbsp;
  <a onclick="javascript:location.href='osList'" > [목록] </a>
</body>
</html>