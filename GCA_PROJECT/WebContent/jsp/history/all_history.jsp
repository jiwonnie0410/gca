<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>all_history.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
<!-- 달력(fullcalendar) css/js파일 -->
<link href='${pageContext.request.contextPath }/fullcalendar/core/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath }/fullcalendar/daygrid/main.css' rel='stylesheet'/>

<script src='${pageContext.request.contextPath }/fullcalendar/core/main.js'></script>
<script src='${pageContext.request.contextPath }/fullcalendar/daygrid/main.js'></script>
<script src='${pageContext.request.contextPath }/fullcalendar/interaction/main.js'></script>
    

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
 
 <!-- 달력 JS 옵션 -->

<script>

document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');

	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    plugins: [ 'interaction', 'dayGrid'], //interaction: 일정 추가등의 이벤트용;  dayGrid:달력 달별로 보기기능
/* 	    header: {
	        left: 'title',
	        center: 'prev,next today',
	        right: 'dayGridMonth'
	      }, */
	    
	    editable: true, //일정 드래그 등 하여 수정가능
	    selectable: true, // 날짜클릭하여 이벤트 추가 가능
	    
	    dateClick: function(info) {
	      alert('clicked ' + info.dateStr);
	    },
	    select: function(info) {
	      alert('selected ' + info.startStr + ' to ' + info.endStr);
	    }
	  });
	  
	 // 캘린더 날짜부분의 높이 이거보다 작으면 스크롤생김
	  calendar.setOption('contentHeight', 450);
	  calendar.render();
	});

</script>
 
    

<style>
.historyDiv {
} 

.title {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	height: 40px;
}

th {
	text-align: center;
}

</style>

</head>


<body>


<div class="historyDiv">
  <br>
  <!-- Nav tabs 캘린더/전체보기 버튼 -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#calendarDiv">캘린더</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#allMenu">전체보기</a>
    </li>
    

  </ul>

  <!-- Tab panes 캘린더/전체보기 안의 내용 넣는곳 -->
  <div class="tab-content">
  	<!-- 캘린더 -->
    <div id="calendarDiv" class="container tab-pane active"><br>
      		<div id="calendar" class="calendar"></div>
    </div>
    <!-- 전체히스토리 테이블 -->
    <div id="allMenu" class="container tab-pane fade"><br>
		<table class="historyTable">
			<thead>
				<tr>
					<td colspan="2" style="text-align:center;"><p></p></td>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<th>순서</th>
					<th>내용</th>
				</tr>
				<tr>
					<td width="50">1</td>
					<td>
						일시: 11/05 18:00<br>
						장소: 대구 228공원<br>
						디테일: 배드민턴(초급이상)<br>
						성공여부: 성공
					</td>
				</tr>
				
				<tr>
					<td>2</td>
					<td>
						일시: 11/05 18:00<br>
						장소: 대구 228공원<br>
						디테일: 배드민턴(초급이상)<br>
						성공여부: 실패
					</td>
				</tr>
			</tbody>
		</table>    
    
    </div>
  </div>
</div>


</body>
</html>