<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wedRvList.jsp</title>
</head>
<body>
<table border="1">
<caption>웨딩 & 레스토랑 예약하기</caption>
<tr>
		<td colspan="7" align="center">
			<a href="wedRvList?nYear=${nYear}&nMonth=${nMonth}&action=previous">이전달</a> 
			${nYear}년 ${nMonth}월
			<a href="wedRvList?nYear=${nYear}&nMonth=${nMonth}&action=next">다음달</a>
		</td>
	</tr>
	<tr>
	<c:forEach begin="1" end="42" var="num">
		<td>
			<div>
				<c:set var="value1" value="${num-dayNum+1}" />
				<c:set var="value2" value="${num-maxDay-1}" />
				<c:if test="${num lt dayNum}"></c:if>
				<c:if test="${num ge dayNum && num lt dayNum + maxDay}">
					<a href="wedRvForm?nYear=${nYear}&nMonth=${nMonth}&nDay=${value1}">
						${value1}
					</a>
				</c:if>
<%-- 			<c:if test="${num ge dayNum + maxDay}">${value2}</c:if> --%>
				
				<c:forEach items="${list}" var="dto" varStatus="status">
					<c:if test="${dto.nYear eq nYear 
						&& dto.nMonth eq nMonth 
						&& dto.nDay eq fn:replace(value1, ' ','')}">
						<c:if test="${authInfo.grade == 'emp' }">
							<a href='wedRvInfo?wedRvNo=${dto.wedRvNo}&nYear=${nYear}&nMonth=${nMonth}&nDay=${value1}';">
								${dto.wedRvNo} / ${dto.wedRvTime} 예약완료
							</a>
						</c:if>
						<c:if test="${authInfo.grade != 'emp' }">
								${dto.wedRvNo} / ${dto.wedRvTime} 예약완료
						</c:if>
					</c:if>
				</c:forEach>
			</div>
		</td>
		<c:if test="${num % 7 == 0 && num != 42}"></tr><tr></c:if>
	</c:forEach>
	</tr>

</table>
</body>
</html>