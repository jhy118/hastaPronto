<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkQty(rtMenuNo, rtRvNo, oderSnum){
		if(oderSnum > 1){
			location.href="resStQtyDown?rtMenuNo="+rtMenuNo+"&rtRvNo="+rtRvNo;  
			
		}else{
			alert("수량이 1 이상이어야 합니다.");
			return false;
		}
	}
</script>
</head>
<body>
<form action="resStRemove" method="post" name="frm">
주문서 리스트 페이지입니다.<br />
	<c:set value="0" var="totalPrice"/>
<table border = "1">
	<tr>
		<th>메뉴 이름</th>
		<th>메뉴 수량</th>
		<th>메뉴 금액</th>
		<td><input type="submit" value="삭제" ></td>   
	</tr>
	<c:forEach items="${resStList}" var="resSt" varStatus="resStatus">
	<tr>
		<th>${resSt.resmenuDTO.rtMenu }</th>
		
		<th>
		<a href="javascript:checkQty('${resSt.rtMenuNo }','${resSt.rtRvNo }','${resSt.oderSnum }');">-</a>
		${resSt.oderSnum }
		<a href="../resSt/resStRegist?rtMenuNo=${resSt.rtMenuNo}&rtRvNo=${resSt.rtRvNo }">+</a>
		</th>
		
		<th>${resSt.oderSchar }</th>
		<th>
			<input type="checkbox" name="delete" value="${resSt.rtMenuNo }" />
		</th>   
	</tr>
	<c:set value="${totalPrice + resSt.oderSchar}" var="totalPrice"/>
	</c:forEach>
	<tr>
	<td colspan="3" align="right">총금액 :
	<fmt:formatNumber value="${totalPrice }" type="currency"/>원
	</td>
	</tr>
</table>
</form>
</body>
</html>