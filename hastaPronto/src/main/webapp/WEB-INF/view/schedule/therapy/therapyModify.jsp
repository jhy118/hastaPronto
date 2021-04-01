<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>therapyModify.jsp</title>
</head>
<body>
<h3>예약 변경란, 괄호안은 기존선택입니다.</h3>
<form action="../therapyModifyPro" name="frm" method="post">
	<input type="hidden" name="schNo" value="${sch.schNo }" />
	<table border="1" align="left">
		<tr>
			<th>관리 종류선택<br /> 
				( 
				<c:if test="${sch.schType eq 'basic' }">기본스파</c:if>
				<c:if test="${sch.schType eq 'color' }">컬러테라피</c:if>
				<c:if test="${sch.schType eq 'base' }">헤이베스</c:if>
				<c:if test="${sch.schType eq 'perfection' }">스위스퍼펙션 스파</c:if>)</th>
			<td>
				<input type="radio" name="schType" value="basic"/> 기본스파&nbsp;&nbsp;&nbsp;
				<input type="radio" name="schType" value="color"/> 컬러테라피&nbsp;&nbsp;&nbsp;
				<input type="radio" name="schType" value="base"/> 헤이베스&nbsp;&nbsp;&nbsp;
				<input type="radio" name="schType" value="perfection"/> 스위스퍼펙션 스파&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
		<tr>
			<th>예약날짜<br />
				(${sch.schDate } ${sch.schTime })
				</th>
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
				${sch.schName }
			</td>
		</tr>
		<tr>
			<th>예약자 수(최대 3명)<br />
				(현 예약자 수 : ${sch.schNum }명)
			</th>
			<td>
				<input type="radio" name = "schNum" value="1"/> 1인
				<input type="radio" name = "schNum" value="2"/> 2인
				<input type="radio" name = "schNum" value="3"/> 3인
			</td>
		</tr>
		<tr>
			<th>관리사 선택<br />
				(기존 선택 : 
				<c:if test="${sch.oseNo eq '107' }">김나린 관리사</c:if>
				<c:if test="${sch.oseNo eq '108' }">진유라 관리사</c:if>
				<c:if test="${sch.oseNo eq '109' }">김태리 관리사</c:if>
				<c:if test="${sch.oseNo eq '110' }">박연우 관리사</c:if>
				<c:if test="${sch.oseNo eq '111' }">첫방문(미지정)</c:if>)
			</th>
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
			<input type="submit" value="수정" />
			<input type="button" value="취소" onclick="javascript:location.href='../therapyDetail?schNo=${sch.schNo}'"/>
			</th>
		</tr>
	</table>
</form>
</body>
</html>
