<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedResList.jsp</title>
</head>
<body>

<c:if test="${authInfo.grade == 'emp' }">
	<a href="wedResWrite">웨딩홀 레스토랑 등록</a>
</c:if>

<c:forEach items="${list}" var="dto" varStatus="status">
<table onclick="javascript:location.href=
	'wedRtInfo?wedRtNo=${dto.wedRtNo}';" align="center">
    <colgroup width="500">
    	<col width ="200" />
    	<col width ="200" />
    </colgroup>
	<tr>
		<th colspan="2">
			<c:forTokens items="${dto.wedRtFile}" delims="`"
				var="i" begin="0" end="0">
				<img alt="" src="../wedRes/upload/${i}" />
			</c:forTokens>	
		</th>
	</tr>
	<tr><th colspan="2">${dto.wedRtName}</th></tr>
	<tr><th colspan="2">${fn:replace(dto.wedRtMname,cn,br)}</th></tr>
	<tr><th>수용인원</th><th>${dto.wedRtNum}</th></tr>
</table>
</c:forEach>
</body>
</html>