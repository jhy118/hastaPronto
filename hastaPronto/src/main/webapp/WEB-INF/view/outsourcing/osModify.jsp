<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- jason  :{키:값, 키:값, ...} -->
	<script>
		function fileDelete(osStrfile, osOrgfile, osFilesize, btn, osFile){
			$.ajax({
				type:"post",
				url:"../osFileDelete",
				dateType:"text",
				data:{"osOriginalfilename":osOrgfile, "osStorefilename":osStrfile, "osFilesize":osFilesize },
				success:function(result){
					if(result.trim()=="1"){
						$(osFile).remove();
					}else{
						$(btn).val("삭제");
					}
				},
				error : function(){
					alert('Error.');
					return;
				}
			});
		}
	</script>
</head>
<body>
<form:form action="../osModifyPro" name="frm" method="post" modelAttribute="os" enctype="multipart/form-data">
	<input type="hidden" name="osNo" value="${os.osNo }" />
	업체이름 : <form:input path="osName" /><br >
	사업자등록번호 : <form:input path="bsLicense" /><br >
	업체주소 : <form:input path="osAddr" /><br >
	사업분류이름: <form:input path="osBusinessName" /><br >
	대표자이름: <form:input path="repName" /> <br >
	전화번호: <form:input path="osTel" /> <br >
	이메일 : <form:input path="osEmail" /><br >
<!-- 	this를 쓰기위해 jquery사용 -->
<!-- 	<script src="https://code.jquery.com/jquery-latest.osFile"></script> -->
<%-- 	<script type="text/javascript" src="<c:url value='/outsourcing/jquery.form.osFile' />"></script> --%>

	<c:if test="${osFile.osOriginalfilename != null}">	
	파일 : <br >
	<input type="file" name="report" multiple="multiple" /><br>
		<c:set var="store" value="${fn:split(osFile.osStorefilename, '`')}" />
		<c:set var="osFilesize" value="${fn:split(osFile.osFilesize, '`')}" />
		<c:forTokens items="${osFile.osOriginalfilename}" var="org" delims="`" varStatus="idx">
		 <a class="osFile${idx.index}" href="<c:url value='outsourcing/osFile/${store[idx.index]}' />" > ${org}</a>
		 <input class="osFile${idx.index}" type="button" value="삭제" onclick="return fileDelete('${store[idx.index]}', '${org}', '${osFilesize[idx.index]}',this, '.osFile${idx.index}');"> <br />
		</c:forTokens>
 	</c:if>
   <c:if test="${osFile.osOriginalfilename == null}">     
		<input type="file" name="report" multiple="multiple" />
   </c:if>
      <br >
	<input type="submit" value="수정" />
	<input type="button" value="뒤로가기" 
      onclick="javascript:location.href='../osDetail?osNo='+${os.osNo}"/>
</form:form>
</body>
</html>