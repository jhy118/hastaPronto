<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
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
		color:#333;
		font-size:24px;
	}
	#res-menu table .end{
		text-align:end;
		position:relative;
		left:100px;
	}
	#res-menu table .end2{
		text-align:end;
		position:relative;
		left:180px;
	}
	#res-menu table .center{
		text-align:center;
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
	input[type="text"]{
		height:30px;
		text-align:end;
		font-size:18px;
		border-radius:5px;
		border:1px solid #996b56;
		padding-right:15px;
	}
	textarea{
		width:235px;
		height:200px;
		border:1px solid #996b56;
		border-radius:5px;
		font-size:18px;
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
</style>
</head>
<body>
<section id="res-menu">
	<h2>
		<span>Hasta Pronto Restaurant</span>
	</h2>
	<div class="table-wrapper">
	<form:form action="resStRegistPro" method="post"
		modelAttribute="resStRegist">
	<table border = "1">
		<tr><td>메뉴 이름</td><td>${resmenu.rtMenu }</td></tr>
		<tr><td>메뉴 가격</td><td>${resmenu.rtMenuChar }</td></tr>
		<tr><td>메뉴 수량</td><td></td></tr>
		<tr><td>총 가격</td><td></td></tr>
		<tr><td colspan="3"><input type="submit" value="주문서 담기"></td>
				<td><input type="button" value="리스트로 가기" onclick="javascript:history.back();"></td>
	</table>
	</form:form>
	</div>
</section>
</body>
</html>