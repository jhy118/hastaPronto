<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function fileDelete(orgFile, strFile, fileSize, cFile) {
		$.ajax({
			type : "post",
			url : "../fileDel",
			dataType : "text",
			data : {
				"originalFileName" : orgFile,
				"storedFileName" : strFile,
				"fileSize" : fileSize
			},
			success : function(result) {
				alert(result);
				if (result.trim() == "1") {
					$(cFile).remove();
				}
			},
			error : function() {
				alert('에러가 나왔습니다.');
				return false;
			}
		});
	}
	
	function imgDelete(imgfile, cImg){
		$.ajax({
				type:"post",
				url:"../imgDel",
				dataType:"text",
				data:{"imgfile":imgfile},
				success:function(result){
					if(result.trim()=="1"){
						$(cImg).remove();
					}
				},
				error : function(){
					alert('에러가 나왔습니다.');
					return false;
				}
		});
	}
</script>