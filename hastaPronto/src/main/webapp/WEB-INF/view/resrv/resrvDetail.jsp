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
	
</style>
</head>
<body>
<section id="res-menu">
	<h2>
		<span>Hasta Pronto Restaurant</span>
	</h2>
	<div class="table-wrapper">
		<table>
			<tr><td>테이블 번호</td><td class="end">${resrv.rtRvTnum }</td></tr>
			<tr><td>인원수</td><td class="end">${resrv.rtrvNum }</td></tr>
			<tr><td>시간</td><td class="end">${resrv.rtRvTime }</td></tr>
			<tr class="center"><td colspan="2"><input type="button" value="수정" 
					onclick="javascript:location.href='resrvModify?rtRvNo=${resrv.rtRvNo}'">
								<input type="button" value="뒤로가기" 
					onclick="javascript:history.back();">
								<input type="button" value="예약 삭제" 
					onclick="javascript:location.href
					='resrvDelete?rtRvNo=${resrv.rtRvNo}&rtNo=${resrv.rtNo }'"/>
								<input type="button" value="메뉴보기" 
					onclick="javascript:location.href='../resmenu/resmenuList?rtNo=${rtNo}&rtRvNo=${resrv.rtRvNo}'"></td></tr>
		</table>
	</div>
</section>
</body>
</html>