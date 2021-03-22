<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="../osModifyPro" name="frm" method="post">
	<input type="hidden" name="osNo" value="${os.osNo }" />
	업체이름 : <input type="text" name="osName" value="${os.osName }" /><br >
	사업자등록번호 : <input type="text" name="bsLicense" value="${os.bsLicense }" /><br >
	업체주소 : <input type="text" name="osAddr" value="${os.osAddr }" /><br >
	사업분류이름: <input type="text" name="osBusinessName" value="${os.osBusinessName }" /><br >
	대표자이름: <input type="text" name="repName" value="${os.repName }" /> <br >
	전화번호: <input type="text" name="osTel" value="${os.osTel }" /> <br >
	이메일 : <input type="text" name="osEmail" value="${os.osEmail }" /><br >
<!-- 	this를 쓰기위해 jquery사용 -->
	<script src="https://code.jquery.com/jquery-latest.osFile"></script>
	<script type="text/javascript" src="<c:url value='/outsourcing/jquery.form.osFile' />"></script>
<!-- jason  :{키:값, 키:값, ...} -->
	<script>
		function fileDelete(osStrfile, osOrgfile, osFilesize, btn){
			$.ajax({
				type:"post",
				url:"fileDel",
				dateType:"text",
				data:{"osOriginalfilename":osOrgfile, "osStorefilename":osStrfile, "osFilesize":osFilesize },
				success:
						function(result) {
							alert(result);
							if(result.trim()=="1"){
								$(btn).text("삭제 취소");
							} else{
								$(btn).text("삭제");
							}
						},
							error : function(){
								alert('Error');
								return;
							}
			});
		}
	</script>
	<input type="submit" value="수정" />
</form>
</body>
</html>