<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>annForm.jsp</title>
</head>
<body>
<form:form action="annRegist" name="frm" method="post"
   modelAttribute="annCommand" enctype="multipart/form-data">
<table border="1">
   <tr>
      <th>제목</th>
      <td>
         <form:input path="annSubject" />
         <form:errors path="annSubject" />
      </td>
   </tr>
   <tr>
      <th>파일</th>
      <td>
      	<input type="file" name="report" multiple="multiple" />
      </td>
   </tr>
   <tr>
      <th>내용</th>
      <td>
         <form:textarea rows="30" cols="50" path="annContent"></form:textarea>
      </td>
   </tr>
</table>
<input type="submit" value="등록" />
<input type="reset" value="다시작성" />
<input type="button" value="뒤로가기" 
   onclick="javascript:location.href='annList'" />
</form:form>
</body>
</html>