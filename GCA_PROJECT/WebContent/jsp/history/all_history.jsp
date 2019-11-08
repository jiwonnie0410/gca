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
</head>


<!-- 달력디폴트 JS -->
<script>

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'dayGrid' ]
    });

    calendar.render();
  });

</script>

<style>

.calendar {
  position: absolute;
  top: 13%;
  left: 33%;
  width: 800px;
  height: 500px;
  margin: -50px 0 0 -50px;
}

</style>


<body>
	<div style="text-align:center"><h1>활동 내역</h1></div>
	<!-- 달력 -->
    <div id='calendar' class='calendar'></div>
    

</body>
</html>