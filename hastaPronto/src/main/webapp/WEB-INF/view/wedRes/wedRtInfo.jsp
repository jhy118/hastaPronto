<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedRtInfo.jsp</title>
<script>
	var idx = 0;
	function nextGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx++;
		if(idx > maxIdx) idx = 0;
		document.getElementById("gallery").src=
			"../wedRes/upload/"+imgName[idx];
	}
	function prevGallery(img){
		var imgName = img.split('`');
		var maxIdx = imgName.length - 2;
		idx--;
		if(idx < 0) idx = maxIdx;
		document.getElementById("gallery").src=
			"../wedRes/upload/"+imgName[idx];
	}
</script>
</head>
<body>
<table align="center">
	<tr>
		<th colspan="2">
			<a href="javascript:prevGallery('${list.wedRtFile}');">
				<img src="../wedding/images/left_btn.png" /></a>
					<img src="../wedRes/upload/${fn:split(list.wedRtFile, '`')[0]}" id="gallery"
						width="500" height="350" />
			<a href="javascript:nextGallery('${list.wedRtFile}');">
				<img src="../wedding/images/right_btn.png"/></a>	
		</th>
	</tr>
	<tr><th colspan="2">${list.wedRtName} 시설안내</th></tr>
	<tr><th>이용금액</th><th>성인 1인 기준 : ${list.wedRtChar}원</th></tr>
	<tr><th>수용인원</th><th>최대 ${list.wedRtNum}명</th></tr>
	<tr><th>위치</th><th>${list.wedRtLocation}</th></tr>
	<tr><th>메뉴</th>
		<th>${fn:replace(list.wedRtMname,cn,br)}</th>
	</tr>	
</table>

<c:if test="${authInfo.grade == 'emp' }">
<a href="wedRtModify?wedRtNo=${list.wedRtNo}">수정</a>
<a href="#" onclick="return wedRtDel(${list.wedRtNo})">삭제</a>
</c:if>
<input type="button" value="뒤로가기" onclick="javascript:history.back();" />
<script type="text/javascript">
	function wedRtDel(wedRtNo){
		if(confirm('정말 삭제하시겠습니까?')){
			location.href='wedRtDel?wedRtNo=' + wedRtNo;
		}
		return false;
	}
</script>
</body>
</html>