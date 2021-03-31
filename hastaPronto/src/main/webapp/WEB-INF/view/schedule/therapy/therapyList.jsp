<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>therapyList.jsp</title>
</head>
<body>
<table border="1">
   <tr>
		<td colspan="7" align="center">
			<a href="thrapyList?nYear=${nYear}&nMonth=${nMonth}&action=previous">이전달</a> 
			${nYear}년 ${nMonth}월
			<a href="thrapyList?nYear=${nYear}&nMonth=${nMonth}&action=next">다음달</a>
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
					<a href="therapyRvForm?nYear=${nYear}&nMonth=${nMonth}&nDay=${value1}">
						${value1}</a></c:if>
<%-- 				<c:if test="${num ge dayNum + maxDay}">${value2}</c:if> --%>
				
				<c:forEach items="${list}" var="dto" varStatus="status">
					<c:if test="${dto.nYear eq nYear 
						&& dto.nMonth eq nMonth 
						&& dto.nDay eq fn:replace(value1, ' ','')}">
						<c:if test="${authInfo.grade == 'emp' }">
							<a href='therapyDetail?schNo=${dto.schNo}';">
								${dto.schNo}/${dto.schName} 예약완료
							</a>
						</c:if>
						<c:if test="${authInfo.grade != 'emp' }">
								${dto.schNo}/${dto.schName} 예약완료<br />
						</c:if>
					</c:if>
				</c:forEach>
			</div>
		</td>
		<c:if test="${num % 7 == 0 && num != 42}"></tr><tr></c:if>
	</c:forEach>
	</tr>
</table>

<a href="therapyRvForm">테라피 예약하기</a>
</body>
</html>