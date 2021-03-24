<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>제목</th>
			<td>${notice.noticeName}</td>
		</tr>
		<tr>
			<th>기간</th>
			<td><fmt:formatDate value="${notice.startDate}"
					pattern="yyyy-MM-dd hh:mm" /> ~ <fmt:formatDate
					value="${notice.endDate }" pattern="yyyy-MM-dd hh:mm" /></td>
		</tr>
		<tr>
			<th>글쓴이</th>
			<td>${notice.empId}</td>
		</tr>
		<tr>
			<th>발표일</th>
			<td><fmt:formatDate value="${notice.announceDate}"
					pattern="yyyy-MM-dd hh:mm" /></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><c:set value="${fn:split(notice.noticeOriginalFileName, '`')}" var="originalFileName" /> 
				<c:set value="${fn:split(notice.noticeStoreFileName, '`')}" var="storeFileName" />
				<c:forTokens items="${notice.noticeFileSize}" delims="`" var="fileSize" varStatus="status">
					<a href="../fileDown?sfileName=${storeFileName[status.index]}&ofileName=${originalFileName[status.index]}">
					${originalFileName[status.index]} (${fileSize}Byte)</a><br />
				</c:forTokens>
				</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${fn:replace(notice.noticeContent, cn, br)}</td>
		</tr>
		<tr>
			<th colspan="2"><input type="button" value="수정"
				onclick="javascript:location.href='<c:url value="/notice/noticeModify/"/>' + ${notice.noticeNo};">
				<input type="button" value="삭제"
				onclick="javascript:location.href='<c:url value="/notice/noticeDelete/"/>'+ ${notice.noticeNo};">
				<input type="button" value="목록"
				onclick="javascript:location.href='<c:url value="/notice/notice"/>';">
				<input type="button" value="지원자보기"
				onclick="javascript:location.href='<c:url value="/apc/applicant?noticeNo="/>' + ${notice.noticeNo};">
				<input type="button" value="지원하기"
				onclick="javascript:location.href='<c:url value="/apc/appForm/"/>' + ${notice.noticeNo};"></th>
		</tr>
	</table>
</body>
</html>