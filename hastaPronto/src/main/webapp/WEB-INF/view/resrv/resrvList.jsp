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
		height: 200px;
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
	#res-menu .btn-wrap{
		text-align:center;
		margin-top:50px;
	}
	#res-menu .btn-wrap a{
		text-decoration:none;
		padding:10px 15px;
		border-radius:5px;
		background:#fff;
		color:#333;
	}
	#res-menu .btn-wrap a:hover{
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
		<table>
			<tr class="head">
				<th>고객아이디</th>  
				<th>인원수</th>
				<th>날짜</th>
			</tr>     
			<c:forEach items="${resrvList }" var="resrv" varStatus="resrvList">
			<tr onclick="javascript:location.href='resrvDetail?rtRvNo=${resrv.rtRvNo}&rtNo=${rtNo}'">
				<th>${resrv.userId }</th>
				<th>${resrv.rtrvNum }</th>
				<th>${resrv.rtRvTime }</th> 
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="btn-wrap">
		<a href="resrvForm?rtNo=${rtNo }">예약 등록</a>
	</div>
</section>
</body>
</html>
