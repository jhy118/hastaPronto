<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteRoom(){
		if(confirm('삭제하시겠습니까?'))
		location.href='../roomDelete/${room.rmNo}';
	}
	var idx = 0;
	function nextImg(imgList){
		var img = imgList.split('`');
		var maxIdx = img.length - 2;
		idx++;
		if (idx > maxIdx){			
			idx = 0;
		}
		document.getElementById('img').src='../upload/'+img[idx];
	}
	function prevImg(imgList){
		var img = imgList.split('`');
		var maxIdx = img.length - 2;
		idx--;
		if (idx < 0){			
			idx = maxIdx;
		}
		document.getElementById('img').src='../upload/'+img[idx];
	}
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>방이름</th>
			<td>${room.rmName }</td>
		</tr>
		<tr>
			<th>방이미지</th>
			<td><img src="../../wedding/images/left_btn.png" 
			onclick="prevImg('${room.rmFile}');">
			<img alt="전경" id="img" src="../upload/${fn:split(room.rmFile,'`')[0]}" width="400">
			<img src="../../wedding/images/right_btn.png" 
			onclick="nextImg('${room.rmFile}');"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><fmt:formatNumber value="${room.rmChar}" type="currency"
					pattern="\#,###" /></td>
		</tr>
		<tr>
			<th>정원</th>
			<td>${room.rmNum }</td>
		</tr>
		<tr>
			<th>세부사항</th>
			<td>${room.rmContent }</td>
		</tr>
		<tr>
			<th>유료사항</th>
			<td>${room.rmPaycontent }</td>
		</tr>
		<tr>
			<th colspan="2"><input type="button" value="수정하기" 
			onclick="javascript:location.href='../roomModify/${room.rmNo}'">
			<input type="button" value="삭제하기" 
			onclick="deleteRoom();">
			<input type="button" value="목록" 
			onclick="javascript:location.href='../';">
			<input type="button" value="예약하기"
			onclick="javascript:location.href='<c:url value="/reservationRoom/roomList"/>';">
			</th>
		</tr>
	</table>
</body>
</html>