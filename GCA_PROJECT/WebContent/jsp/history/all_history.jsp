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
	
<!-- 달력(fullcalendar) 디폴트 css, js파일 -->
    <link href='${pageContext.request.contextPath }/fullcalendar/core/main.css' rel='stylesheet' />
    <link href='${pageContext.request.contextPath }/fullcalendar/daygrid/main.css' rel='stylesheet' />
    <script src='${pageContext.request.contextPath }/fullcalendar/core/main.js'></script>
    <script src='${pageContext.request.contextPath }/fullcalendar/daygrid/main.js'></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
  
    
</head>


<!-- 달력디폴트 JS -->
<script>

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'dayGrid' ]

    });
     calendar.setOption('contentHeight', 450);
     calendar.render();
  });
  

</script>

<style>
.historyDiv {
  position: absolute;
  top: 25%;
  left: 15%;
}

th {
	text-align: center;
}

</style>


<body>
	
<div class="container-fluid">
	<div class="row">
		<div class="col-md-8">
			<div style="text-align:center; font-size: 40px;">활동 내역</div><br>
			<div id="calendar" class="calendar"></div>
		</div>
		<div class="col-md-4">
		  <div class="historyDiv">
			<table>
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
			<br>
		  </div>
		</div>
	</div>
</div>

    
</body>
</html>