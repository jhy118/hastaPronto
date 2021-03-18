<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInfo</title>
<script src="http://code.jquery.com/jquery-1.8.1.min.js"></script>   
<script type="text/javascript">     
$(function(){   
	$("#modify").click(function(){
		location.href=
			'<c:url value="/man/memberModify/${memberCommand.userId }"/>';
		});
	$("#memDel").click(function(){
		if(confirm("정말로 탈퇴하시겠습니까?")){
			location.href=
				'<c:url value="/man/memberDelete/${memberCommand.userId }"/>';
		}
		});
	});	
</script>
</head>  
<body>
아이디 : ${memberCommand.userId }<br />
이름 : ${memberCommand.userName }<br />
연락처 : ${memberCommand.userPh }<br />
이메일 : ${memberCommand.userEmail }<br />
주소 : ${memberCommand.userAddr }<br />
생년월일 : <fmt:formatDate value="${memberCommand.userBirth }" type="date" pattern="yyyy-MM-dd" /><br />
<input type="button" id="modify" value="수정" />
<input type="button" id="memDel" value="탈퇴" />
<input type="button" value="회원 리스트로 가기" onclick="javascript:history.back();">
</body>
</html>