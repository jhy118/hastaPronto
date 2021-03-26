<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedRtModify.jsp</title>
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
<form action="wedRtModifyOk" name="frm" method="post"
	enctype="multipart/form-data">
<input type="hidden" name="wedRtNo" value="${list.wedRtNo}" />
<table border="1">
	<tr><th>웨딩홀 레스토랑 이름</th>
		<td>
			<input type="text" name="wedRtName" value="${list.wedRtName}" />
		</td>
	</tr>
	<tr><th>코스 이용금액</th>
		<td>
			<input type="text" name="wedRtChar" value="${list.wedRtChar}" />
		</td>
	</tr>
	<c:if test="${list.wedRtFile != null}">
		<tr>
			<th>사진</th>
			<td>
				<c:forTokens items="${list.wedRtFile}" delims="`" var="img" varStatus="idx">				
					<img src="../wedRes/upload/${img}" class="img${idx.index}" width="50" height="25" />
					<input class="img${idx.index}" type="button" value="삭제"
						onclick="imgDelete('${img}',this, '.img${idx.index}');" />
				</c:forTokens>
			</td>
		</tr>
	</c:if>
	<tr>
		<th>사진 추가</th>
		<td>
			<input type="file" name="wedRtFile" multiple="multiple"/>
		</td>
	</tr>
	<tr><th>메뉴 종류</th>
		<td>
			<textarea rows="30" cols="50" 
				name="wedRtMname">${list.wedRtMname}</textarea>
		</td>
	</tr>
	<tr><th>웨딩홀 레스토랑 위치</th>
		<td>
			<input type="text" name="wedRtLocation" value="${list.wedRtLocation}" />
		</td>
	</tr>
	<tr><th>뷔페 수용인원</th>
		<td>
			<input type="text" name="wedRtNum" value="${list.wedRtNum}" />명
		</td>
	</tr>
</table>
<input type="submit" value="수정완료" />
<input type="reset" value="취소" />
<input type="button" value="뒤로가기" onclick="javascript:history.back();"/>
</form>
</body>
</html>