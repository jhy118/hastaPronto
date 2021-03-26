<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedBroModify.jsp</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
	function imgDelete(imgfile, btn, cImg){
		imageFile = {
				type:"post",
				url:"imgDel",
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
<form action="wedBroModifyOk" name="frm" method="post" 
		enctype="multipart/form-data">
<input type="hidden" name="wedNo" value="${list.wedNo}" />
<table border="1">
	<tr><th>웨딩홀이름</th>
		<td><input type="text" name="wedName" value="${list.wedName}"/></td></tr>
	<tr><th>홀 이용금액</th>
		<td><input type="text" name="wedChar" value="${list.wedChar}"/></td></tr>
	<c:if test="${list.wedFile != null}">
		<tr>
			<th>사진</th>
			<td>
				<c:forTokens items="${list.wedFile}" delims="`" var="img" varStatus="idx">
					<img src="../wedding/upload/${img}" class="img${idx.index}" width="50" height="25" />
					
					<input class="img${idx.index}" type="button" value="삭제"
						onclick="imgDelete('${img}',this, '.img${idx.index}');" />
				</c:forTokens>
			</td>
		</tr>
	</c:if>
		<tr>
			<th>사진 추가</th>
			<td>			
				<input type="file" name="wedFile" multiple="multiple" />
			</td>
		</tr>
	<tr><th>내용</th>
		<td>
			<textarea rows="30" cols="50" 
				name="wedContent">${list.wedContent}</textarea>
		</td></tr>
	<tr><th>홀 위치</th>
		<td><input type="text" name="wedLocation" value="${list.wedLocation}"/></td></tr>
	<tr><th>수용인원</th>
		<td><input type="text" name="wedNum" value="${list.wedNum}"/></td></tr>
</table>
<input type="submit" value="수정완료" />
<input type="button" value="뒤로가기" 
      onclick="javascript:location.href='wedBroInfo?wedNo='+${list.wedNo}"/>
</form>
</body>
</html>