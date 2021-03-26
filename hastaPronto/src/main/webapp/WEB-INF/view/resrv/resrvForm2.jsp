<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@charset "UTF-8";
.content {
  width: 620px;
  margin: 0 auto 100px;
}

.titleWrap {
  text-align: center;
}

.titleWrap .title {
  margin-top: 30px;
}

.titleWrap .title h2 {
  font-size: 2em;
}

.titleWrap .fieldDesc {
  padding-top: 10px;
}

.selectedServiceArea, .selectDateArea, .selectDesignerArea {
  padding: 30px 6px;
}

.selectedServiceArea, .selectDateArea {
  border-bottom: 7px solid #eee;
}

.select-title {
  padding-bottom: 15px;
  margin-bottom:  15px;
  border-bottom:  1px solid #eee; 
}

.selectedServiceArea li:first-child {
  margin-bottom: 15px;
}

.selectedServiceArea li span {
  /* margin-right: 20px; */
  width: 100px;
  display: inline-block;
  color: #808080;
}

.calendar {

}

.calendar .month {
  text-align: center;
  margin: 0 auto 10px;
}

.calendar .calendar-month {
  /* margin: 0 auto; */
  text-align: center;
}

.calendar .calendar-month::before {
  content: "";
  display: block;
  border-bottom: 1px solid #333;
}

.calendar .calendar-month li {
  padding: 10px;
  width: 32px;
  height: 30px;
  text-align: center;
  /* border: 1px solid #333; */
  display: inline-block;
}

.none-current {
  color: #e1e1e1;
}

.select-date {
  display: inline-block;
  width: 100%;
  line-height: 30px;
  background: #808080;
  border-radius: 50%;
  color: #fff;
}

.date-current input[type="radio"] {
	display:none;
}

.date-current input[type="radio"] + span{
	display: inline-block;
	cursor: pointer;
	border: none;
	border-radius: 50%;
	width: 100%;
	line-height: 30px;
	text-align: center;
	background: none;
	padding: 1px;
}

.date-current input[type="radio"]:checked +span{
	background: #333;
	color: #fff;
}

.select-designer {
	padding-bottom: 10px;
	border-bottom: 1px solid #e1e1e1;
	margin-bottom: 10px;
}

/* .designer-list { */
/* 	display: none; */
/* } */

/* .date-current input[type="radio"]:checked .designer-list { */
/* 	display: block; */
/* } */

.designer-img {
	display: inline-block;
	background: #eee;
	width: 100px;
	height: 100px;
	border: none;
	border-radius: 50%;
}

.select-designer {
	position: relative;
}

.designer-Area {
	position: absolute;
	top: 50px;
	left : 120px;
	transform: translateY(-50%);
}

.designer-name {
	display: block;
	font-weight: 700;
	padding-bottom: 4px;
}

.designer-desc {
	font-size: 14px;
	color: #808080;
}

.time-area {
	margin: 20px 0 ;
}

.time-area ul li {
	display: inline;
}

.time-area .off {
	color : red;
	font-size : 14px;
	border-radius: 15px;
	background: #eee;
	padding: 5px 15px;
	width: 120px;
}

.box-radio-input input[type="radio"] {
	display:none;
	
}

.box-radio-input input[type="radio"] + span{
	cursor: pointer;
	border: none;
	border-radius: 15px;
	background: #eee;
	padding: 5px 15px;
}

.box-radio-input input[type="radio"]:checked +span{
	background: #333;
	color: #fff;
}

/* 버튼  */
.btn-wrap {
	padding-left: 6px;
	position: relative;
	margin-top: 30px;
}

.price-area span{
	display: block;
	font-weight: 500;
	color: #808080;
}

.price-area .price {
	font-size: 18px;
	font-weight: 700;
	color: #333;
}

.btn-area {
	position: absolute;
	top: 0;
	right: 0;
/* 	transform: traslateY(-50%); */
}

.btn-area input {
	width: 200px;
	height: 50px;
	border: none;
	border-radius:5px;
	font-size: 18px;
	font-weight: 900;
	color: #fff;
	background: #333;
}

textarea  {
	width: 100%;
	height: 100px;
	resize: none;
	padding: 10px 0;}
</style>
</head>
<body>
	<div class="contentWrap">
		<!-- Content -->
		<div class="content">
			<div class="titleWrap">
				<div class="title">
					<h2>예약하기</h2>
				</div>
				<div class="fieldDesc">
					<!-- <p>서비스 메뉴 등록</p> -->
				</div>
			</div>
			<div class="selectedServiceArea">
				<!-- 예약 서비스 -->
				<ul>
					<li><span class="select-menu-name">테이블번호</span><input type="text" /></li>
					<li><span class="select-menu-price">인원수</span><input type="text" /></li>
				</ul>
				<!-- 현재일로부터 14일간만 선택 가능 -->
			</div>
			<div class="selectDateArea" id="select-date">
            <!-- 예약 서비스 -->
            <div class="select-title">날짜선택</div>
            <div class="calendar">
               <div class="month">
                  ${currMonth + 1 }월
               <input type="hidden" name="year" value="${year }"/>
               <input type="hidden" name="month" value="${currMonth }"/>
               <ul class="calendar-month">
                  <!-- 요일 -->
                  <li>일</li>
                  <li>월</li>
                  <li>화</li>
                  <li>수</li>
                  <li>목</li>
                  <li>금</li>
                  <li>토</li>
               </ul>
               <ul class="calendar-month">
                  <!-- 지난달 -->
                  <c:forEach items="${pre }" var="pre">
                     <li ><a class="date none-current">${pre }</a></li>
                  </c:forEach>
                  <!-- 이번달 -->
                  <c:forEach items="${cur }" var="cur" varStatus="status">
                     <c:set value="${status.index + pre.size() }" var="line"/>
                     <c:if test="${line % 7 eq 0 }">
                        <br />
                     </c:if>
                     <li >
<%--                         <c:if test="${cur lt date }"> --%>
<%--                            <a class="date none-current">${cur }</a> --%>
<%--                         </c:if> --%>
<%--                         <c:if test="${cur ge date }"> --%>
                           <label class="date-current">
                           <input type="radio" name="date" value="${cur }"
                              <c:if test="${cur eq date }">checked</c:if>  onclick="chkDate('${year}', '${currMonth}', '${cur }' );" />
                           <span>${cur }</span>
                           </label>
<%--                         </c:if> --%>
                     </li>
                  </c:forEach>
                  <!-- 다음달 -->
                  <c:forEach items="${next }" var="next">
                     <li><a class="date none-current" >${next }</a></li>
                  </c:forEach>
               </ul>
            </div>
         </div> <!-- 캘린더 끝 -->
			<div class="selectDesignerArea">
				<!-- 예약 서비스 -->
				<div class="select-title">디자이너/시간 선택</div>
				<div class="designer-list">
					<div class="select-designer">
						<c:set value="${fn:split(desn.desnImg,'`') }" var="img" />
						<img class="designer-img" src="/salon/designer/upload/${img[1] }" />
						<div class="designer-Area">
							<span class="designer-name">이름</span> <span class="designer-desc">취향저격
								스타일전문가(1년)</span>
						</div>
						<div class="time-area">
							<ul>
								<li class="off">디자이너 정기휴일</li>
							</ul>
						</div>
						<div class="time-area">
							<ul>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="10:00" onclick="" /><span>10:00</span>
								</label></li>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="11:00" onclick="" /><span>11:00</span>
								</label></li>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="12:00" onclick="" /><span>12:00</span>
								</label></li>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="13:00" onclick="" /><span>13:00</span>
								</label></li>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="14:00" onclick="" /><span>14:00</span>
								</label></li>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="15:00" onclick="" /><span>15:00</span>
								</label></li>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="16:00" onclick="" /><span>16:00</span>
								</label></li>
								<li><label class="box-radio-input"> <input
										type="radio" name="reservTime" value="17:00" onclick="" /><span>17:00</span>
								</label></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- Content 끝 -->
<script type="text/javascript">
	function chkDate(year, month, date) {
		console.log(year, month, date);
	}
</script>
</body>
</html>