<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedBroInfo.jsp</title>
<script>
	var idx = 0;
	function nextGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx++;
		if(idx > maxIdx) idx = 0;
		document.getElementById("gallery").src=
			"../wedding/upload/"+imgName[idx];
	}
	function prevGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx--;
		if(idx < 0) idx = maxIdx;
		document.getElementById("gallery").src=
			"../wedding/upload/"+imgName[idx];
	}
</script>
</head>
<body>
<table align="center">
	<tr><th colspan="2">${fn:replace(list.wedContent,cn,br)}</th></tr>
	<tr>
		<th colspan="2">
			<a href="javascript:prevGallery('${list.wedFile}');">
				<img src="../wedding/images/left_btn.png" /></a>
					<img src="../wedding/upload/${fn:split(list.wedFile, '`')[0]}" id="gallery"
						width="500" height="350" />
			<a href="javascript:nextGallery('${list.wedFile}');">
				<img src="../wedding/images/right_btn.png"/></a>	
		</th>
	</tr>
	<tr><th colspan="2">${list.wedName} 시설안내</th></tr>
	<tr><th>이용금액</th><th>${list.wedChar}</th></tr>
	<tr><th>수용인원</th><th>${list.wedNum}</th></tr>
	<tr><th>위치</th><th>${list.wedLocation}</th></tr>
</table>
<c:if test="${authInfo.grade == 'emp' }">
	<a href="wedBroModify?wedNo=${list.wedNo}">수정</a>
	<a href="#" onclick="return wedBroDel(${list.wedNo})">삭제</a>
</c:if>
<script type="text/javascript">
	function wedBroDel(wedNo){
		if(confirm('정말 삭제하시겠습니까?')){
			location.href='wedBroDel?wedNo=' + wedNo;
		}
		return false;
	}
</script>
</body>
</html>