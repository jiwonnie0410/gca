<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/animate.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/magnific-popup.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/aos.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/ionicons.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/slim/css/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>



<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

		<section class="ftco-section ftco-schedule" id="schedule-section">
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
	              		<div class="img coach-img" style="background-image: url(images/trainer-1.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">기본챌린지 1</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Anthony Miller</a> <span class="position">Cardio Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-2.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Yoga Program</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Anthony Miller</a> <span class="position">Cardio Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-3.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Body Building</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Anthony Miller</a> <span class="position">Cardio Expert</span></h3>
	              		</div>
	              	</div>
	              </div>
					
				  <!-- 기본 챌린지 -->
	              <div class="tab-pane fade" id="v-pills-9" role="tabpanel" aria-labelledby="v-pills-day-9-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-4.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Body Building</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Jason Davis</a> <span class="position">Body Building</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-1.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Cardio Classes</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Jason Davis</a> <span class="position">Body Building</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-2.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Basic Exercies for Begginer</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Jason Davis</a> <span class="position">Body Building</span></h3>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-10" role="tabpanel" aria-labelledby="v-pills-day-10-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-3.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Body Building</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Mark Harlem</a> <span class="position">Health Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-4.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Cardio Classes</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Mark Harlem</a> <span class="position">Health Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-1.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Basic Exercies for Begginer</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Mark Harlem</a> <span class="position">Health Expert</span></h3>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-11" role="tabpanel" aria-labelledby="v-pills-day-11-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-2.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Body Building</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Nikki Valdez</a> <span class="position">Yoga Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-3.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Cardio Classes</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Nikki Valdez</a> <span class="position">Yoga Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-4.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Basic Exercies for Begginer</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Nikki Valdez</a> <span class="position">Yoga Expert</span></h3>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-12" role="tabpanel" aria-labelledby="v-pills-day-12-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-1.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Body Building</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Troy Watson</a> <span class="position">Boxing Trainer</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-2.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Cardio Classes</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Troy Watson</a> <span class="position">Boxing Trainer</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-3.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Basic Exercies for Begginer</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Troy Watson</a> <span class="position">Boxing Trainer</span></h3>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-13" role="tabpanel" aria-labelledby="v-pills-day-13-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-4.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Body Building</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Greg Mueller</a> <span class="position">Dance Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-1.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Cardio Classes</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Greg Mueller</a> <span class="position">Dance Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-2.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Basic Exercies for Begginer</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Greg Mueller</a> <span class="position">Dance Expert</span></h3>
	              		</div>
	              	</div>
	              </div>

	              <div class="tab-pane fade" id="v-pills-14" role="tabpanel" aria-labelledby="v-pills-day-14-tab">
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-3.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Body Building</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Jesh Stone</a> <span class="position">Muslce Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-4.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Cardio Classes</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Jesh Stone</a> <span class="position">Muslce Expert</span></h3>
	              		</div>
	              	</div>
	              	<div class="coach-wrap ftco-animate d-sm-flex">
	              		<div class="img coach-img" style="background-image: url(images/trainer-1.jpg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="time">08:00AM - 10:00AM</span>
	              			<h2><a href="#">Basic Exercies for Begginer</a></h2>
	              			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	              			<h3 class="coach-name">&mdash; <a href="#">Jesh Stone</a> <span class="position">Muslce Expert</span></h3>
	              		</div>
	              	</div>
	              </div>
	            </div>
	          </div>
	        </div>
        </div>
	    </div>
    </section>
    
    <!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="${pageContext.request.contextPath }/slim/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/aos.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath }/slim/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="${pageContext.request.contextPath }/slim/js/google-map.js"></script>

<script src="${pageContext.request.contextPath }/slim/js/main.js"></script>

</body>
</html>