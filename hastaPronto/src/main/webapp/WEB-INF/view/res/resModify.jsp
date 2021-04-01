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
	input[type="submit"]{
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
	input[type="submit"]:hover{
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
	#res-menu .btn-wrap{
		width:100%;
		text-align:center;
		margin:50px 0;
	}
	#res-menu .res-img{
		background:url('../res/upload/res-img.jpg') no-repeat;
		background-size:100% 100%;
		width:100%;
		height:100px;
		margin-block-start: 0;
	}
</style>
</head>
<body>
	<section id="res-menu">
		<h2>
			<span>Hasta Pronto Restaurant</span>
		</h2>
		<div class="table-wrapper">
			<form:form action="resModifyPro" method="post" modelAttribute="resModify">
			<input type="hidden" name="rtNo" value="${res.rtNo }">
			<table>
				<tr><td>레스토랑 번호</td><td class="end">${res.rtNo }</td></tr>
				<tr><td>레스토랑 이름</td><td class="end"><input type="text" name="rtName" value="${res.rtName }"></td></tr>
				<tr><td>레스토랑 내용</td><td class="end"><input type="text" name="rtContent" value="${res.rtContent }"></td></tr>
				<c:forTokens items="${res.rtFile}" delims="`" var="rt">
				<%-- <img width="200" src="upload/${rt} "> --%>
				<div class="res-img"></div>
				</c:forTokens>
			</table>
				<div class="btn-wrap">
					<input type="submit" value="수정" />
					<input type="button" value="취소" onclick="javascript:history.back();">
				</div>
			</form:form>
		</div>
	</section>
</body>
</html>