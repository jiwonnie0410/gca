<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<!-- 부트스트랩용 링크 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 모달 링크용 modal -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- 참가버튼 css -->	
<style type="text/css">
.page {
  width: 200px;
  height: 100px;
}

/* add animation to bg color  */

@keyframes random-bg {
  from {
    filter: hue-rotate(0);
  }
  to {
    filter: hue-rotate(360deg);
  }
}

.join-btn {
  /* change bg color to get different hues    */
  background-color: salmon;
  width: 200px;
  height: 80px;
  color: white;
  border: none;
  border-radius: 5px;
  outline: none;
  cursor: pointer;
  font-weight: bold;
  font-size : 30px;
}

.join-btn:hover {
  animation: random-bg .5s linear infinite, grow 1300ms ease infinite;
}

.start-challenge {
  background-color: #fff !important;
  /* change color of button text when fun is started   */
  color: salmon !important;
  font-size : 40px;
}

/* pulsating effect on button */
@keyframes grow {
  0% {
    transform: scale(1);
  }
  14% {
    transform: scale(1.3);
  }
  28% {
    transform: scale(1);
  }
  42% {
    transform: scale(1.3);
  }
  70% {
    transform: scale(1);
  }
}
</style>	

<!-- 참가버튼 JS -->
<script>
$(function() {
	//참가버튼 클릭시 색상설정
/* 		$('.join-btn').on('click', function(event) {
			  $(this).toggleClass('start-challenge');
			  var $page = $('.page');
			  $page.toggleClass('color-bg-start')
			    .toggleClass('bg-animate-color');
	
			  $(this).hasClass('start-challenge') ?
			    $(this).text('참가중') :
			    $(this).text('참가');
		}); */
	
	//기본 챌린지 버튼 클릭시 모달창 팝업
	    $("#basic-join").click(function(){
	    	if ( $(this).attr('class')!='join-btn start-challenge' ) {
	    		$("#basicModal").modal();
	    	}
	    });
		
        $("#basic-join-add").click(function(){
        	$("#basic-join").toggleClass('start-challenge');
			  var $page = $('.page');
			  $page.toggleClass('color-bg-start')
			    .toggleClass('bg-animate-color');
	
			  $("#basic-join").hasClass('start-challenge') ?
				  $("#basic-join").text('참가중') :
				  $("#basic-join").text('참가');
        });
	
	//스페셜 챌린지 버튼 클릭시 모달창 팝업
	    $("#special-join").click(function(){
	    	if ( $(this).attr('class')!='join-btn start-challenge' ) {
	       		 $("#specialModal").modal();
	       }
	    });
	
        $("#special-join-add").click(function(){
        	$("#special-join").toggleClass('start-challenge');
			  var $page = $('.page');
			  $page.toggleClass('color-bg-start')
			    .toggleClass('bg-animate-color');
	
			  $("#special-join").hasClass('start-challenge') ?
				  $("#special-join").text('참가중') :
				  $("#special-join").text('참가');
        });
	
	    

})//

</script>
	
</head>



<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


	<section class="ftco-section ftco-schedule" id="schedule-section">
      
		 <!-- 기본챌린지용 모달 -->
		  <div class="modal fade" id="basicModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <h4 class="modal-title">기본챌린지</h4>
		          <button type="button" class="close" data-dismiss="modal">×</button>
		        </div>
		        <div class="modal-body">
		          <p>자전거 1주일에 3번 타기</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-primary" data-dismiss="modal" id="basic-join-add">Join</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>
		  
		  
		  <!-- 스페셜챌린지용 모달 -->
		  <div class="modal fade" id="specialModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <h4 class="modal-title">스페셜 챌린지</h4>
		          <button type="button" class="close" data-dismiss="modal">×</button>
		        </div>
		        <div class="modal-body">
		          <p>12월 25일에 눈보기</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-primary" data-dismiss="modal" id="special-join-add">Join</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>


      
      
      <!-- 챌린지 카드 시작 -->
      <div class="container">
        <div class="row justify-content-center pb-5">
	        <div class="col-md-12 heading-section text-center ftco-animate">
	        	<span class="subheading">특별한 당신을 위한</span>
	          <h2 class="mb-4">챌린지 목록</h2>
	          <p>의지를 돈으로 사십시오!</p>
	        </div>
	      </div>
	      <div class="ftco-schedule">
					<div class="row">
            <div class="col-md-4 nav-link-wrap">
	            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	            <!-- 기본 챌린지 -->
	              <a class="nav-link ftco-animate active" id="v-pills-8-tab" data-toggle="pill" href="#v-pills-8" role="tab" aria-controls="v-pills-8" aria-selected="true">기본 챌린지 <span>Basic Challenges</span></a>
	            <!-- 스페셜 챌린지 -->
	              <a class="nav-link ftco-animate" id="v-pills-9-tab" data-toggle="pill" href="#v-pills-9" role="tab" aria-controls="v-pills-9" aria-selected="false">스페셜 챌린지 <span>Special Challenges</span></a>
	            </div>
	          </div>
	          
	          <!-- 기본 챌린지 -->
	          <div class="col-md-8 tab-wrap">
	            
	            <div class="tab-content" id="v-pills-tabContent">

	              <div class="tab-pane fade show active" id="v-pills-8" role="tabpanel" aria-labelledby="day-8-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(${pageContext.request.contextPath }/images/trainer-1.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">12월 15일 ~ 23일(7일)</span>
	              			<h2><a href="#">자전거관련 반짝 3번 참여하기</a></h2>
	              			<p>자전거는 유산소운동으로 건강에 좋습니다</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Anthony Miller</a> <span class="position">Cardio Expert</span></h3>
	              			<br>
	              			<div class="page">
							 <button type="button" class="join-btn" id="basic-join">참가</button>
							</div>
	              		</div>
	              	</div>
	              </div>
					
				  <!-- 스페셜 챌린지 -->
	              <div class="tab-pane fade" id="v-pills-9" role="tabpanel" aria-labelledby="v-pills-day-9-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(${pageContext.request.contextPath }/images/trainer-4.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">12월 25일(수)</span>
	              			<h2><a href="#">크리스마스에 홈트레이닝하기</a></h2>
	              			<p>나가봐야 사람만 많아요</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Jason Davis</a> <span class="position">Body Building</span></h3>
	              			<br>
	              			<div class="page">
							 <button type="button" class="join-btn" id="special-join">참가</button>
							</div>
	              		</div>
	              	</div>
	              </div>
	            </div>
	           </div>
	        </div>
        </div>
	   </div>
    </section>
    

<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath }/js/aos.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath }/js/scrollax.min.js"></script>
<script src="${pageContext.request.contextPath }/js/main.js"></script>

</body>
</html>