<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함께 운동할 상대를 찾아보세요!</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- private : icon 1 & slide 2 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mihy/swiper.min.css">
<script src="${pageContext.request.contextPath }/js/mihy/swiper.min.js"></script>

<script>
$(document).ready(function(){
	
	var swiper = new Swiper('.swiper-container', {
		slidesPerView: 'auto',
		centeredSlides: false,
		spaceBetween: 30,
		grabCursor: true
	});
	
	
	
});


</script>

<style>

.swiper-container {
	width: 100%;
	height: 30px;
	margin: 5px auto;
	padding: 0 15px 0 15px;
}

.swiper-slide {
	text-align: center;
	font-size: 15px;
	color: #FE9191;
	width: auto;
	
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.swiper-slide:hover {
	background-color: #FE7E7E;
	border-radius: 8px;
	color: #FFFFFF;
}

.btn {
	border: 2px solid #FE7E7E;
	background-color: #FE9191;
}

.td1 {
	width: 50px;
}

.td2 {
	width: 200px;
	display:block;
	overflow: hidden; 
	text-overflow: ellipsis;
	white-space: nowrap; 
}

.td3 {
	width: 90px;
	white-space: nowrap;
}

.content {
	line-height: 0.1;
}

.p1 {
	font-size: 20pt;
}

.p2 {
	font-size: 8pt;
}

.p3 {
	font-size: 9pt;
}
.p4 {
	font-size: 11pt;
	font-weight: bold;
}
.p5 {
	font-size: 8pt;
}
.p6 {
	font-size: 9pt;
}
.p7 {
	font-size: 10pt;
	color: #FE7E7E;
}
.p8 {
	font-size: 8pt;
}

</style>
</head>

<body>

<button class="btn btn-info" style="width:100%">방 생성</button>

<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide p-2"><i class="fas fa-cloud pr-2"></i>전체</div>
		<div class="swiper-slide p-2"><i class="fas fa-basketball-ball pr-2"></i>농구</div>
		<div class="swiper-slide p-2"><i class="fas fa-running pr-2"></i>달리기 &amp; 산책</div>
		<div class="swiper-slide p-2"><i class="fas fa-hiking pr-2"></i>등산</div>
		<div class="swiper-slide p-2"><img class="pr-3" src="${pageContext.request.contextPath }/images/badminton-pink.png" width="35px">배드민턴</div>
		<div class="swiper-slide p-2"><i class="fas fa-bowling-ball pr-2"></i>볼링</div>
		<div class="swiper-slide p-2"><i class="fas fa-swimmer pr-2"></i>수영</div>
		<div class="swiper-slide p-2"><i class="fas fa-bicycle pr-2"></i>자전거</div>
	</div>
</div>

<table class="table table-striped">
	<tr>
		<td class="td1" align="center">
			<p class="content p1"><i class="fas fa-running pr-2"></i></p>
			<p class="content p2"><span class="badge badge-pill badge-dark">중급▲</span></p>
		</td>
		
		<td class="td2">
			<p class="content p3">진성 초등학교</p>
			<p class="content p4">같이 달리기 하실 분!</p>
			<p class="content p5"><span class="badge badge-info mr-2">여성</span>20 ~ 30대</p>
		</td>
		
		<td class="td3" align="center">
			<p class="content p6">19.12.25(수)</p>
			<p class="content p7">오후10:30</p>
			<p class="content p8"><span class="badge badge-pill badge-warning mr-1"><font color="red">3</font>&nbsp;/&nbsp;4명</span></p>
		</td>
	</tr>
		<tr>
		<td class="td1" align="center">
			<p class="content p1"><i class="fas fa-running pr-2"></i></p>
			<p class="content p2"><span class="badge badge-pill badge-dark">중급▲</span></p>
		</td>
		
		<td class="td2">
			<p class="content p3">진성 초등학교</p>
			<p class="content p4">같이 달리기 하실 분!</p>
			<p class="content p5"><span class="badge badge-info mr-2">여성</span>20 ~ 30대</p>
		</td>
		
		<td class="td3" align="center">
			<p class="content p6">19.12.25(수)</p>
			<p class="content p7">오후10:30</p>
			<p class="content p8"><span class="badge badge-pill badge-warning mr-1"><font color="red">3</font>&nbsp;/&nbsp;4명</span></p>
		</td>
	</tr>
		<tr>
		<td class="td1" align="center">
			<p class="content p1"><i class="fas fa-running pr-2"></i></p>
			<p class="content p2"><span class="badge badge-pill badge-dark">중급▲</span></p>
		</td>
		
		<td class="td2">
			<p class="content p3">진성 초등학교</p>
			<p class="content p4">같이 달리기 하실 분!</p>
			<p class="content p5"><span class="badge badge-info mr-2">여성</span>20 ~ 30대</p>
		</td>
		
		<td class="td3" align="center">
			<p class="content p6">19.12.25(수)</p>
			<p class="content p7">오후10:30</p>
			<p class="content p8"><span class="badge badge-pill badge-warning mr-1"><font color="red">3</font>&nbsp;/&nbsp;4명</span></p>
		</td>
	</tr>
		<tr>
		<td class="td1" align="center">
			<p class="content p1"><i class="fas fa-running pr-2"></i></p>
			<p class="content p2"><span class="badge badge-pill badge-dark">중급▲</span></p>
		</td>
		
		<td class="td2">
			<p class="content p3">진성 초등학교ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
			<p class="content p4">같이 달리기 하실 분ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
			<p class="content p5"><span class="badge badge-info mr-2">여성</span>20 ~ 30대</p>
		</td>
		
		<td class="td3" align="center">
			<p class="content p6">19.12.25(수)</p>
			<p class="content p7">오후10:30</p>
			<p class="content p8"><span class="badge badge-pill badge-warning mr-1"><font color="red">3</font>&nbsp;/&nbsp;4명</span></p>
		</td>
	</tr>
</table>


</body>
</html>
