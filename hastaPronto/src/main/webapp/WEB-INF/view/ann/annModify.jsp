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
	function fileDelete(strFile, orgFile, fileSize, btn, cFile){
		$.ajax({
			type:"post",
			url:"../fileDel",
			dataType:"text",
			data:{"originalFileName":orgFile, "storedFileName":strFile,
				"fileSize":fileSize},
			success:function(result){
				if(result.trim()=="1"){
					$(cFile).remove();
				}else{
					$(btn).val("삭제");
				}
			},
			error : function(){
				alert('에러가 나왔습니다.');
				return false;
			}
		});
	}
	
	function imgDelete(imgfile, btn, cImg){
		imageFile = {
				type:"post",
				url:"../imgDel",
				dataType:"text",
				data:{"imgfile":imgfile},
				success:function(result){
					if(result.trim()=="1"){
						$(cImg).remove();
					}else{
						$(btn).val("삭제");
					}
				},
				error : function(){
					alert('에러가 나왔습니다.');
					return false;
				}
		};
		$.ajax(imageFile);
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
	         		<a class="file${idx.index}" href="<c:url value='/ann/upload/${store[idx.index]}' />" >
	         			${org}</a>
	         		<input class="file${idx.index}" type="button" value="삭제" onclick="return fileDelete(
	         				'${store[idx.index]}',
	         				'${org}',
	         				'${fileSizes[idx.index]}',this, '.file${idx.index}');"><br />
	         	</c:forTokens>
	         </td>
	      </tr>
      </c:if>      
		  <tr>
		      <th>파일 추가</th>
		      <td>
		      	<input type="file" name="report" multiple="multiple" />
		      </td>
	      </tr>
      <c:if test="${ann.annImg != null}">
      	<tr>
      		<th>사진</th>
      		<td>
      			<c:forTokens items="${ann.annImg}" delims="`" var="img" varStatus="idx">
      				<img src="../upload/${img}" class="img${idx.index}" width="50" height="25" />
      				
      				<input class="img${idx.index}" type="button" value="삭제" 
      					onclick="imgDelete('${img}',this, '.img${idx.index}');" />
      			</c:forTokens>
      		</td>
      	</tr>
      </c:if>
	      <tr>
	    		<th>사진 추가</th>
	    		<td>
	    			<input type="file" name="annImg" multiple="multiple" />
	    		</td>
	      </tr>
      <tr><th>내용</th>
         <td><textarea rows="30" cols="50" name="annContent">${ann.annContent}</textarea>
         </td>
      </tr> 
      <tr><th>등록일</th>
         <td>${ann.annDate}</td></tr>
   </table>
   <input type="submit" value="수정" />
   <input type="button" value="뒤로가기" 
      onclick="javascript:location.href='../annDetail?annNo='+${ann.annNo}"/>
</form>
</body>
</html>