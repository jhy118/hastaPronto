<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	#res-menu table .num:hover{
		background:inherit;
		transition:inherit;
		color:#333;
	}
	#respay{
		text-align:center;
		margin:50px 0;1
	}
</style>
</head>
<body>
<section id="res-menu">
	<h2>
		<span>Hasta Pronto Restaurant</span>
	</h2>
	<div class="table-wrapper">
		<table>
			<tr>
				<td colspan="4" align="center"><a>결제완료 페이지</a></td>
			</tr>
			<tr class="head">
				<th>메뉴 이름</th>
				<th>메뉴 수량</th>
				<th>메뉴 금액</th>
			</tr>
			<c:forEach begin="0" end="${count}" var="idx">
				<tr>
					<td>${respay.resmenuDTO[idx].rtMenu}</td>
					<td>${respay.resStDTO[idx].oderSnum}</td>
					<td>${respay.resStDTO[idx].oderSchar}</td>
				</tr>
			</c:forEach>
			<tr class="head">
					<th>총금액</th>
					<th>결제방법</th>
			</tr>
			<tr>
					<td>${respay.rtPmChar}</td>
					<td>${respay.rtPmMethod}</td>
			</tr>
			<tr><td>
				<input type="button" value="결제 취소"
				onclick="javascript:location.href
				='respayDelete?rtRvNo=${respay.rtRvNo}'"/>
		</table>
	</div>
</section>
</body>
</html>