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
<style>
	@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR:wght@500&display=swap');
	body{
		margin:0;
	}
	#res-menu{
		width:100%;
		height:100%;
		background:#fff;
		margin:0;
	}
	#res-menu h2{
		background:url('../res/upload/main.jpg') no-repeat;
		width:100%;
		height:300px;
		margin-block-start: 0;
	}
	#res-menu h2 span{
		color:#fff;
		opacity:0.7;
		text-align:center;
		line-height:300px;
		font-size: 41px;
		display:table;
		margin: 0 auto;
		}
	#res-menu .table-wrapper{
		display:table;
		margin: 0 auto;
		margin-top:100px;
	}
	#res-menu table{
		width: 700px;
		height: 500px;
	}
	#res-menu table th{
		font-family: 'Nanum Gothic', sans-serif;
		cursor:pointer;
		color:#333;
		font-size:18px;
	}
	#res-menu table th:hover{
		background: #222;
		color:#fff;
		transition:all ease 0.25s;
	}
	#res-menu table .head th{
		font-family: 'Nanum Gothic', sans-serif;
		border-bottom: 3px solid #996b56;
		cursor:default;
		font-size:24px;
	}
	#res-menu table .head th{
		background:inherit;
		transition:inherit;
		color:#333;
	}
	#res-menu .enroll{
		width:100%;
		height:50px;
		text-align:center;
		position:relative;
		margin-top:50px;
	}
	#res-menu .enroll .box1{
		font-family: 'Nanum Gothic', sans-serif;
		color:#333;
	}
	#res-menu .enroll .box2{
		position:absolute;
		right:32%;
		top:0;
		
	}
	#res-menu .enroll .box2 a{
		font-family: 'Nanum Gothic', sans-serif;
		color:#333;
		text-decoration:none;
	}
	input[type="submit"]{
		background:#fff;
		color:#333;
		border-radius:5px;
		border:none;
		cursor:pointer;
		padding:10px 15px;
	}
	input[type="submit"]:hover{
		background:#333;
		color:#fff;
		transition:all ease 0.25s;
	}
	input[type="button"]{
		background:#fff;
		color:#333;
		border-radius:5px;
		border:none;
		cursor:pointer;
		padding:10px 15px;
	}
	input[type="button"]:hover{
		background:#333;
		color:#fff;
		transition:all ease 0.25s;
	}
	#res-menu table .num:hover{
		background:inherit;
		transition:inherit;
		color:#333;
	}
	#respay{
		text-align:center;
		margin:50px 0;1
	}
	#res-menu .btn-wrap{
		width:100%;
		text-align:center;
		margin:50px 0;
	}
</style>
</head>
<body>
<section id="res-menu">
	<h2>
		<span>Hasta Pronto Restaurant</span>
	</h2>
	<div class="table-wrapper">
		<form action="resStRemove" method="post" name="frm">
		<input type="hidden" name="rtRvNo" value="${resSt.rtRvNo }">
		주문서 리스트 페이지입니다.<br />
			<c:set value="0" var="totalPrice"/>
		<table>
			<tr class="head">
				<th>메뉴 이름</th>
				<th>메뉴 수량</th>
				<th>메뉴 금액</th>
				<td align="center"><input type="submit" value="삭제" ></td>   
			</tr>
			<c:forEach items="${resStList}" var="resSt" varStatus="resStatus">
			<tr>
				<th>${resSt.resmenuDTO.rtMenu }</th>
				<th class="num">
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
	</div>
		<form:form action="../respay/respayRegist" modelAttribute="respay" method="post">
				<tr><th>결제 방법 : </th></tr>
				<input type="radio" id="card" name="rtPmMethod" value="Card">카드결제
				<input type="radio" id="account" name="rtPmMethod" value="Account">계좌이체
				
			<input type="submit" 
					value="결제 하기">
			<input type="button" value="메뉴리스트" onclick="javascript:history.back();">
			<input type="hidden" name="rtPmChar" value="${totalPrice }">
			<input type="hidden" name="rtRvNo" value="${resStList[0].rtRvNo }">
		</form:form>
	
</section>
</body>
</html>