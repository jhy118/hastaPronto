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
					<th>레스토랑 번호</th>					
					<th>레스토랑 이름</th>
					<th>레스토랑 내용</th>
				</tr>
				<c:forEach items="${resList }" var="res" varStatus="resList">
				<tr onclick="javascript:location.href='resDetail?rtNo=${res.rtNo}'">
					<th>${resList.count }</th>
					<th>${res.rtName }</th>
					<th>${res.rtContent }</th>
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
				<a href="resForm">레스토랑 등록</a>
			</c:if>
			</div>
		</div>
	</section>  
</body>
</html>