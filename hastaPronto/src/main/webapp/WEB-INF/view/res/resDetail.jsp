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
				<tr><td>레스토랑 번호</td><td class="end">${res.rtNo }</td></tr>
				<tr><td>레스토랑 이름</td><td class="end">${res.rtName }</td></tr>
				<tr><td>레스토랑 내용</td><td class="end">${res.rtContent }</td></tr>
				<tr><td>레스토랑 사진</td><td class="end">
				<c:forTokens items="${res.rtFile}" delims="`" var="rt">
				<img width="200" src="upload/${rt} ">
				</c:forTokens>
				</td></tr>
				<tr class="center">
				
				<td colspan="2">
				
				<input type="button" value="수정" 
						onclick="javascript:location.href='resModify?rtNo=${res.rtNo}'">
									<input type="button" value="뒤로가기" 
						onclick="javascript:history.back();">
						
									<input type="button" value="메뉴 삭제"
						onclick="javascript:location.href='resDelete?rtNo=${res.rtNo}'"/>
									<input type="button" value="예약 하기"
						onclick="javascript:location.href='../resrv/resrvList?rtNo=${res.rtNo}'">
						</td></tr>
			</table>
		</div>
	</section>
</body>
</html>