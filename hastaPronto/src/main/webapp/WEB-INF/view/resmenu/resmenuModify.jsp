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
	#res-menu table td{
		font-family: 'Nanum Gothic', sans-serif;
		color:#333;
		font-size:24px;
	}
	#res-menu table .end{
		text-align:end;
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
	input[type="date"]{
		width:222px;
		height:30px;
		text-align:end;
		font-size:18px;
		border-radius:5px;
		border:1px solid #996b56;
		padding-right:15px;		
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
	.btn-wrap{
		text-align:center;
	}
</style>
</head>
<body>
<section id="res-menu">
	<h2>
		<span>Hasta Pronto Restaurant</span>
	</h2>
	<div class="table-wrapper">
	<form:form action="resmenuModifyPro" method="post" modelAttribute="resmenu">
	<form:hidden path="rtMenuNo"/>	
	<form:hidden path="rtNo"/>
	<table>
		<tr><td>메뉴 이름</td><td><input type="text" name="rtMenu" value="${resmenu.rtMenu }"></td></tr>
		<tr><td>메뉴 가격</td><td><input type="text" name="rtMenuChar" value="${resmenu.rtMenuChar }"></td></tr>
		<tr><td>메뉴 내용</td><td><input type="text" name="rtMenuCon" value="${resmenu.rtMenuCon }"></td></tr>
		<c:forTokens items="${resmenu.rtMenuImage }" delims="`" var="rm">
		<img width="200" src="upload/${rt} ">
		</c:forTokens>
	</table>
		<input type="submit" value="수정" />
		<input type="button" value="취소" onclick="javascript:history.back();">
		</form:form>
	</div>
</section>
</body>
</html>