<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>annModify.jsp</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
	function fileDelete(strFile, orgFile, fileSize, btn){
		$.ajax({
			type:"post",
			url:"../fileDel",
			dataType:"text",
			data:{"annOriginalFileName":orgFile, "annStoredFileName":strFile,
				"annFileSize":fileSize},
			success:function(result){
				if(result.trim()=="1"){
					$(btn).val("삭제 취소");
				}else{
					$(btn).val("삭제");
				}
			},
			error : function(){
				alert('에러가 나왔습니다.');
				return;
			}
		});
	}
</script>
</head>
<body>
<h2>수정하기</h2>
<form action="../annModifyOk" name="frm" method="post" enctype="multipart/form-data">
<input type="hidden" name="annNo" value="${ann.annNo}"/>
   <table border="1">
      <tr><th>글쓴이</th>
         <td>${ann.empId}</td></tr>
      <tr><th>제목</th>
         <td><input type="text" name="annSubject" value="${ann.annSubject}" />
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
	         			${org}</a>
	         		<input type="button" value="삭제" onclick="return fileDelete(
	         				'${store[idx.index]}',
	         				'${org}',
	         				'${fileSizes[idx.index]}',this);"><br />
	         	</c:forTokens>
	         </td>
	      </tr>
      </c:if>
      <c:if test="${ann.annOriginalFileName == null}">      
		  <tr>
		      <th>파일</th>
		      <td>
		      	<input type="file" name="report" multiple="multiple" />
		      </td>
	      </tr>
      </c:if>
   
      <tr><th>내용</th>
         <td><textarea rows="30" cols="50" name="annContent">${ann.annContent}</textarea>
         </td></tr>
       
      <tr><th>등록일</th>
         <td>${ann.annDate}</td></tr>
   </table>
   <input type="submit" value="수정" />
   <input type="button" value="뒤로가기" 
      onclick="javascript:location.href='../annDetail?annNo='+${ann.annNo}"/>
</form>
</body>
</html>