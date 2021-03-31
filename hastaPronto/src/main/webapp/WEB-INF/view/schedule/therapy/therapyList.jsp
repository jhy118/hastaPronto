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
         이전달 
         ${nYear}년 ${nMonth}월
         이후달
      </td>
   </tr>
   <tr>
   <c:forEach begin="1" end="42" var="num">
      <td onclick="'location.href = \'therapyRvForm?nYear=&nMonth=&nDay\''">
         <c:set var="value1" value="${num-dayNum+1}" />
         <c:set var="value2" value="${num-maxDay-1}" />
            <c:if test="${num lt dayNum}"></c:if>
            <c:if test="${num ge dayNum && num lt dayNum + maxDay}">${value1}</c:if>
            <c:if test="${num ge dayNum + maxDay}">${value2}</c:if>
      </td>
      <c:if test="${num % 7 == 0}"></tr><tr></c:if>
   </c:forEach>
   </tr>
</table>

<a href="therapyRvForm">테라피 예약하기</a>
</body>
</html>