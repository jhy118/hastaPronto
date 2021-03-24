<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../include/includeDelFile.jsp" %>
</head>
<body>
	<form:form method="post" modelAttribute="notice" enctype="multipart/form-data">
	<form:hidden path="noticeNo"/>
		<table border="1">
			<tr>
				<th>제목</th>
				<td><form:input path="noticeName"/></td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td>${notice.empId}</td>
			</tr>
			<tr>
				<th>시작일</th>
				<td><input type="datetime-local" name="startDate" 
				value="<fmt:formatDate pattern="yyyy-MM-dd" type="date" 
				value="${notice.startDate}"/>T<fmt:formatDate pattern="hh:mm" type="date" 
				value="${notice.startDate}"/>"/></td>
			</tr>
			<tr>
				<th>마감일</th>
				<td><input type="datetime-local" name="endDate"
				value="<fmt:formatDate pattern="yyyy-MM-dd" type="date"
				value="${notice.endDate}"/>T<fmt:formatDate pattern="hh:mm" type="date"
				value="${notice.endDate}"/>"/></td>
			</tr>
			<tr>
				<th>발표일</th>
				<td><input type="datetime-local" name="announceDate" 
				value="<fmt:formatDate pattern="yyyy-MM-dd" type="date" 
				value="${notice.announceDate}"/>T<fmt:formatDate pattern="hh:mm" type="date" 
				value="${notice.announceDate}"/>"></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><c:set value="${fn:split(notice.noticeOriginalFileName, '`')}" var="originalFileName" /> 
					<c:set value="${fn:split(notice.noticeStoreFileName, '`')}" var="storeFileName" />
					<c:forTokens items="${notice.noticeFileSize}" delims="`" var="fileSize" varStatus="status">
						<p class="file${status.index}">
							${originalFileName[status.index]} (${fileSize}Byte) 
							<input class="file${status.index}" type="button" value="삭제" onclick="fileDelete('${originalFileName[status.index]}',
						 '${storeFileName[status.index]}', '${fileSize}', '.file${status.index}');"></p>
					</c:forTokens>
					<input type="file" name="noticeFile" multiple="multiple"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><form:textarea path="noticeContent" cols="30" rows="15" /></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정"> 
				<input type="button" value="목록"
					onclick="javascript:location.href='<c:url value="/notice/notice"/>';"></th>
			</tr>
		</table>
	</form:form>
</body>
</html>