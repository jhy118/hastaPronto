<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="therapyRvAction" name="frm" method="post">
	<input type="hidden" name="osNo" id="osNo" value="91" >
	<input type="hidden" name="nYear" value="${scheduleCommand.nYear }" />
	<input type="hidden" name="nMonth" value="${scheduleCommand.nMonth}" />
	<input type="hidden" name="nDay" value="${scheduleCommand.nDay}" />
	<table border="1">
		<tr>
			<th colspan="2">
				${scheduleCommand.nYear}년 ${scheduleCommand.nMonth}월 ${scheduleCommand.nDay}일
			</th>
		</tr>
		<tr>
			<th>관리 종류선택</th>
			<td>
				<input type="radio" name="schType" value="basic"/> 기본스파&nbsp;&nbsp;&nbsp;
				<input type="radio" name="schType" value="color"/> 컬러테라피&nbsp;&nbsp;&nbsp;
				<input type="radio" name="schType" value="base"/> 헤이베스&nbsp;&nbsp;&nbsp;
				<input type="radio" name="schType" value="perfection"/> 스위스퍼펙션 스파&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
		<tr>
			<th>예약날짜선택</th>
			<td>
				<input type="Date" id="schDate" name="schDate"/>
				<select name="schTime" id="schTime">
				<c:forEach begin="09" end="20" var="num">
					<option value =" ${num}:00:00">${num}:00</option>
				</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<th>예약자명</th>
			<td>
				<input type="text" name="schName" id="schName" />
			</td>
		</tr>
		<tr>
			<th>예약자 수(최대 3명)</th>
			<td>
				<input type="radio" name = "schNum" value="1"/> 1인
				<input type="radio" name = "schNum" value="2"/> 2인
				<input type="radio" name = "schNum" value="3"/> 3인
			</td>
		</tr>
		<tr>
			<th>관리사 선택</th>
			<td>
				<input type="radio" name="oseNo" value='107'/> 김나린 &nbsp;&nbsp;
				<input type="radio" name="oseNo" value='108'/> 진유라 &nbsp;&nbsp;
				<input type="radio" name="oseNo" value='109'/> 김태리 &nbsp;&nbsp;
				<input type="radio" name="oseNo" value='110'/> 박연우 &nbsp;&nbsp;
				<input type="radio" name="oseNo" value='111'/> (첫 방문)없음
			</td>
		</tr>
		<tr>
			<th>추가요청사항</th>
			<td>
				<input type="text" name="schContent" id="schContent" />
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="[예약]"/>
<!-- 				<a href="javascript:osempResult();" > [예약] </a> -->
				<a href='therapyList'>[취소]</a> 
			</th>
		</tr>
	</table>	
</form>
</body>
</html>

<!-- <script type="text/javascript"> -->
<!-- 	function pay(){ -->
<!-- 	if (schType == "basic") { -->
<!-- 		if(schNum== 1){ -->
<!-- 			30,000원 -->
<!-- 		}else(schNum == 2){ -->
<!-- 			60,000원 -->
<!-- 		}else(schNum2){ -->
<!-- 			90,000원 -->
<!-- 		} -->
<!-- 	} else (schType == "color"){ -->
<!-- 		if(schNum == 1){ -->
<!-- 			200,000원 -->
<!-- 		}else(schNum == 2){ -->
<!-- 			400,000원 -->
<!-- 		}else(schNum == 3){ -->
<!-- 			600,000원 -->
<!-- 		} -->
<!-- 	} else (schType == "base"){ -->
<!-- 		if(schNum == 1){ -->
<!-- 			350,000원 -->
<!-- 		}else(schNum == 2){ -->
<!-- 			700,000원 -->
<!-- 		}else(schNum == 3){ -->
<!-- 			1,150,000원 -->
<!-- 		} -->
<!-- 	} else (schType == "perfection"){ -->
<!-- 		if(schNum == 1){ -->
<!-- 			520,000원 -->
<!-- 		}else(schNum == 2){ -->
<!-- 			1,020,000원 -->
<!-- 		}else(schNum == 3){ -->
<!-- 			1,540,000원 -->
<!-- 		} -->
<!-- 	} -->
<!-- 	function osempResult(){ -->
<!-- 		if(confirm( "예약을 완료하시겠습니까?")){ -->
<!-- 			console.log(pay); -->
<!-- 			location.href="therapyList"; -->
<!-- 		} else(!confirm(예약취소)){ -->
<!-- 			location.href="therapyList"; -->
<!-- 		} -->
<!-- 	} -->
<!-- } -->
<!-- </script> -->
<!-- 		<tr> -->
<!-- 			<th colspan="2"> -->
<!-- 				결제 예상금액 :  -->
<%-- 				<c:choose> --%>
<%-- 					<c:when test="schType == schType1"> --%>
<%-- 						<c:if test="schNum == schNum1"> 30,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 60,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 90,000 </c:if> --%>
<%-- 					</c:when> --%>
<%-- 					<c:when test="schType == schType2"> --%>
<%-- 						<c:if test="schNum == schNum1"> 200,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 400,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 600,000 </c:if> --%>
<%-- 					</c:when> --%>
<%-- 					<c:when test="schType == schType3"> --%>
<%-- 						<c:if test="schNum == schNum1"> 350,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 700,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 1,150,000 </c:if> --%>
<%-- 					</c:when> --%>
<%-- 					<c:otherwise> --%>
<%-- 						<c:if test="schNum == schNum1"> 520,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 1,020,000 </c:if> --%>
<%-- 						<c:if test="schNum == schNum2"> 1,540,000 </c:if> --%>
<%-- 					</c:otherwise> --%>
<%-- 				</c:choose> --%>
<!-- 			</th> -->
<!-- 		</tr> -->

