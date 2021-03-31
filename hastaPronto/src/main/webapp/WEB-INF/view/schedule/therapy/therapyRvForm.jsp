<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
  <!--스타일링 추가-->
  <style>
    html {
      height: 100%;
    }

    body {
      height: 100%;
      margin: 0;
      position: relative;
    }

    #calendar {
      height: 99%;
      box-sizing: border-box;
      padding: 0.5%;
    }

    .calendar__day {
      display: inline-block;
      vertical-align: bottom;
      width: calc(97% / 7);
      height: calc(98% / 5);
      box-sizing: border-box;
      border-radius: 5px;
      padding: 20px;
    }

    .horizontalGutter {
      margin-right: 0.5%;
    }

    .verticalGutter {
      margin-top: 0.5%;
    }
  </style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="therapyRvAction" name="frm" method="post" modelAttribute="therapyCommand" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<th>관리 종류선택</th>
			<td>
				<form:radiobutton path="schType" id="schType" value="basic"/> 기본스파이용
				<form:radiobutton path="schType" id="schType" value="color"/> 컬러테라피
				<form:radiobutton path="schType" id="schType" value="base"/> 헤이베스
				<form:radiobutton path="schType" id="schType" value="perfection"/> 스위스퍼펙션 스파
				<form:errors path="schType" />
			</td>
		</tr>
		<tr>
<!-- 			<th>예약날짜선택</th> -->
<!-- 			<td> -->
<%-- 				<form:input path="testDatepicker" id="testDatepicker"/> --%>
<%-- 				<form:errors path="testDatepicker" /> --%>
<!-- 			</td> -->
		</tr>
	</table>
</form:form>
</body>
</html>
<!-- <script> -->
// // 	$(function(){
// // 		$("#testDatepicker").datepicker({
// // 		});
// // 	});
<!--  </script> -->



