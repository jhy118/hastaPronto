<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedResWrite.jsp</title>
</head>
<body>
<form:form action="wedResRegist" method="post" name="frm" 
	modelAttribute="wedResCommand" enctype="multipart/form-data">
<table border="1">
	<tr><th>웨딩홀 레스토랑 이름</th>
		<td>
			<form:input path="wedRtName" />
			<form:errors path="wedRtName" />
		</td>
	</tr>
	<tr><th>코스 이용금액</th>
		<td>
			<form:input path="wedRtChar" />
			<form:errors path="wedRtChar" />
		</td>
	</tr>
	<tr><th>웨딩홀 레스토랑 사진</th>
		<td>
			<input type="file" name="wedRtFile" multiple="multiple"/>
		</td>
	</tr>
	<tr><th>메뉴 종류</th>
		<td>
			<form:textarea rows="30" cols="50" 
				path="wedRtMname"></form:textarea>
		</td>
	</tr>
	<tr><th>웨딩홀 레스토랑 위치</th>
		<td>
			<form:input path="wedRtLocation" />
			<form:errors path="wedRtLocation" />
		</td>
	</tr>
	<tr><th>뷔페 수용인원</th>
		<td>
			<form:input path="wedRtNum" />
			<form:errors path="wedRtNum" />명
		</td>
	</tr>
</table>
<input type="submit" value="등록완료" />
<input type="reset" value="취소" />
<input type="button" value="뒤로가기" onclick="javascript:history.back();"/>
</form:form>
</body>
</html>