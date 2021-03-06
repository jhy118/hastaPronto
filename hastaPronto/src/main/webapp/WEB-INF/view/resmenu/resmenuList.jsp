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
			<tr class="head">
				<th>?????? ??????</th>      
				<th>?????? ??????</th>  
				<th>?????? ??????</th>    
				<th>?????? ??????</th>
			</tr>
			<c:forEach items="${resmenuList }" var="resmenu" varStatus="resmenuList">
			<tr>
				<th onclick="javascript:location.href='resmenuDetail?rtMenuNo=${resmenu.rtMenuNo}'">${resmenu.rtMenu }</th>   
				<th onclick="javascript:location.href='resmenuDetail?rtMenuNo=${resmenu.rtMenuNo}'">${resmenu.rtMenuChar }</th>
				<th onclick="javascript:location.href='resmenuDetail?rtMenuNo=${resmenu.rtMenuNo}'">${resmenu.rtMenuCon }</th>
				
				<th>
				<c:forTokens items="${resmenu.rtMenuImage}" delims="`" var="rt">
				<img width="100" src="upload/${rt} ">
				</c:forTokens>
				</th>
				
				<td colspan="3" align="right">
				
				
				 
				<c:if test="${rtRvNo != 0 }">
				<td>
				<input type="button" 
				onclick="javascript:location.href='../resSt/resStRegist?rtMenuNo=${resmenu.rtMenuNo}&rtRvNo=${rtRvNo }'"
				value="????????? ??????"></td> 
				</c:if>
			</tr>
			</c:forEach>
		</table>
	</div>   
	<div class="enroll">
	<div class="box1">
		<%@ include file = "../include/includePage.jsp" %>
	</div>
	<div class="box2">
		<c:if test="${authInfo.grade == 'emp' }">
		<a href="resmenuForm?rtNo=${rtNo}&rtRvNo=${rtRvNo}">
		<br/>???????????? ????????????</a>
		</c:if>
		<input type="button" value="???????????????"
						onclick="javascript:location.href='../res/resList'">
	</div>
	</div>
</section>
</body>
</html>