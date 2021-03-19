<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>annDetail.jsp</title>
</head>
<body>
<h2>상세보기</h2>
   <table border="1">
      <tr><th>글쓴이</th>
         <td>${ann.empId}</td></tr>
      <tr><th>제목</th>
         <td>${ann.annSubject}
         </td></tr>
      <c:if test="${ann.annOriginalFileName != null}">
	      <tr><th>파일</th>
	         <td>
	         	<c:set var="store"
	         			value="${fn:split(ann.annStoredFileName, '`')}" />
	         	<c:set var="fileSizes"
	         			value="${fn:split(ann.annFileSize, '`')}" />
	         	<c:forTokens items="${ann.annOriginalFileName}" var="org"
	         			delims="`" varStatus="idx">
	         		<a href="<c:url value='/ann/upload/${store[idx.index]}' />" >
	         			${org}</a><br />
	         	</c:forTokens>
	         </td>
	      </tr>
      </c:if>
      <tr><th>내용</th>
         <td>${fn:replace(ann.annContent,cn,br)}</td></tr>
      <tr><th>등록일</th>
         <td >${ann.annDate}</td></tr>
   </table>
   <a href="annList">뒤로가기</a>
   <c:if test="${authInfo.loginId == ann.empId}">
   <a href="annModify/${ann.annNo}">수정</a>
   <a href="#" onclick="return deleteAnn(${ann.annNo});">
      삭제</a>
   </c:if>
   <script type="text/javascript">
      function deleteAnn(annNo){
         if(confirm('정말 삭제하시겠습니까?')){
            location.href='annDelete?annNo=' + annNo;
         }
         return false;
      }   
   </script>
</body>
</html>