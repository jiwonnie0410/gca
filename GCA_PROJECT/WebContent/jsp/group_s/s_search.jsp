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
	
	$('.create_room').on('click', function(){
		location.href="s_search_cre.jsp";
	});
	
	var sport_icon = $('.p1').text();
	console.log(sport_icon);
	if(sport_icon == 'basketball'){
		$('.p1').html('<i class="fas fa-basketball-ball pr-2"></i>');
	} else if(sport_icon == 'running'){
		$('.p1').html('<i class="fas fa-running pr-2"></i>');
	} else if(sport_icon == 'hiking'){
		$('.p1').html('<i class="fas fa-hiking pr-2"></i>');
	} else if(sport_icon == 'badminton'){
		$('.p1').html('<img src="${pageContext.request.contextPath }/images/badminton-black.png" width="32px">');
	} else if(sport_icon == 'bowling'){
		$('.p1').html('<i class="fas fa-bowling-ball pr-2"></i>');
	} else if(sport_icon == 'swimming'){
		$('.p1').html('<i class="fas fa-swimmer pr-2"></i>');
	} else if(sport_icon == 'bicycle'){
		$('.p1').html('<i class="fas fa-bicycle pr-2"></i>');
	} else {
		$('.p1').html('<i class="fas fa-feather-alt pr-2"></i>');
	}
	
	
});


</script>

<style>

.swiper-container { width: 100%; height: 40px; margin: 5px 0 10px 0; padding: 5px 15px 5px 15px; border-top: 1px double #FE9191; border-bottom: 1px double #FE9191;}
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
.swiper-slide:hover { background-color: #FE7E7E; border-radius: 8px; color: #FFFFFF; }

.create_room { border: 2px solid #FE7E7E; background-color: #FE9191; margin: 10px 0 5px 0; }

.td1 { width: 50px; float: top; position: relative; }
.td2 { width: 200px; float: top; position: relative; }
.td3 { width: 90px;	white-space: nowrap; float: top; position: relative; }
/* .content { line-height: 0.3; } */
.p1 { font-size: 23pt; position: absolute; margin: 0 0 0 5px;}
.p2 { font-size: 8pt; position: absolute; margin: 47px 0 0 0;}
.p3 { font-size: 10pt; position: absolute; margin: 0 0 0 5px; width: 220px; display:block; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;}
.p4 { font-size: 12pt; font-weight: bold; position: absolute; margin: 19px 0 0 5px; width: 220px; display:block; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;}
.p5 { font-size: 10pt; position: absolute; margin: 47px 0 0 5px;}
.p6 { font-size: 10pt; position: absolute; margin: 0 0 0 0;}
.p7 { font-size: 12pt; color: #FE7E7E; font-weight: bold; position: absolute; margin: 19px 0 0 0;}
.p8 { font-size: 10pt; position: absolute; margin: 47px 0 0 0;}
.badge {  font-size: 9pt;  }

#btn_badminton img:last-child {	display:none; }
#btn_badminton:hover img:first-child { display:none }
#btn_badminton:hover img:last-child { display:inline-block }

</style>
</head>

<body>

<button class="btn btn-info create_room mt-3 ml-3 mr-3" style="width:90%;">반짝 방 생성하기</button>

<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide p-2"><i class="fas fa-star-of-david pr-2"></i>전체</div>
		<div class="swiper-slide p-2"><i class="fas fa-basketball-ball pr-2"></i>농구</div>
		<div class="swiper-slide p-2"><i class="fas fa-running pr-2"></i>달리기 &amp; 산책</div>
		<div class="swiper-slide p-2"><i class="fas fa-hiking pr-2"></i>등산</div>
		<div class="swiper-slide p-2" id="btn_badminton">
			<img class="pr-3" id="img_badminton" src="${pageContext.request.contextPath }/images/badminton-pink.png" width="33px">
			<img class="pr-3" id="img_badminton" src="${pageContext.request.contextPath }/images/badminton-white.png" width="33px">
			배드민턴</div>
		<div class="swiper-slide p-2"><i class="fas fa-bowling-ball pr-2"></i>볼링</div>
		<div class="swiper-slide p-2"><i class="fas fa-swimmer pr-2"></i>수영</div>
		<div class="swiper-slide p-2"><i class="fas fa-bicycle pr-2"></i>자전거</div>
		<div class="swiper-slide p-2"><i class="fas fa-feather-alt pr-2"></i>기타</div>
	</div>
</div>

<table class="table table-striped">
	<tr height="100px">
		<td class="td1">
			<p class="content p1">etc-sport</p>
			<p class="content p2"><span class="badge badge-dark">중급▲</span></p>
		</td>
		
		<td class="td2">
			<p class="content p3">진성 초등학교진성 초등학교진성 초등학교진성 초등학교진성 초등학교</p>
			<p class="content p4">같이 달리기 하실 분!같이 달리기 하실 분!같이 달리기 하실 분!같이 달리기 하실 분!</p>
			<p class="content p5"><span class="badge badge-info mr-2">여성</span>20 ~ 30대<span class="badge badge-pill badge-warning mr-1 ml-2"><font color="red">3</font>&nbsp;/&nbsp;4명</span></p>
		</td>
		
		<td class="td3" align="center">
			<p class="content p6">19.12.25(수)</p>
			<p class="content p7">오후10:30</p>
			<p class="content p8"></p>
		</td>
	</tr>

</table>


</body>
</html>
