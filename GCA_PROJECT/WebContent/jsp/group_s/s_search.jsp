<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>함께 운동할 상대를 찾아보세요!</title>

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

<script>

</script>
<style>

</style>
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

<section class="ftco-section ftco-no-pb ftco-no-pt ftco-program bg-light" id="programs-section">
	<div class="container">
		<div class="row no-gutters">
		
			<div class="col-md-4 ftco-animate py-5 nav-link-wrap js-fullheight">
				<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
					<a class="nav-link px-4 active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true"><span class="mr-3 flaticon-gym"></span> Fitness Program</a>
					<a class="nav-link px-4" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false"><span class="mr-3 flaticon-body"></span> Fit &amp; Healthy</a>
					<a class="nav-link px-4" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false"><span class="mr-3 flaticon-woman"></span> Muscle Building</a>
					<a class="nav-link px-4" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab" aria-controls="v-pills-4" aria-selected="false"><span class="mr-3 flaticon-abs"></span> Bikini &amp; Body</a>
					<a class="nav-link px-4" id="v-pills-5-tab" data-toggle="pill" href="#v-pills-5" role="tab" aria-controls="v-pills-5" aria-selected="false"><span class="mr-3 flaticon-running"></span> Cardio Exercise</a>
					<a class="nav-link px-4" id="v-pills-6-tab" data-toggle="pill" href="#v-pills-6" role="tab" aria-controls="v-pills-6" aria-selected="false"><span class="mr-3 flaticon-meditation"></span> Power Yoga</a>
					<a class="nav-link px-4" id="v-pills-7-tab" data-toggle="pill" href="#v-pills-7" role="tab" aria-controls="v-pills-7" aria-selected="false"><span class="mr-3 flaticon-aerobic"></span> Aerobics Program</a>
					<a class="nav-link px-4" id="v-pills-08-tab" data-toggle="pill" href="#v-pills-08" role="tab" aria-controls="v-pills-08" aria-selected="false"><span class="mr-3 flaticon-gym"></span> Crossfit Program</a>
				</div>
			</div>

			<div class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center js-fullheight">
 				<div class="tab-content pl-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active py-0" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
						<span class="icon mb-3 d-block flaticon-gym"></span>
						<h2 class="mb-4">Fitness Program</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
					</div>
					<div class="tab-pane fade py-0" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
						<span class="icon mb-3 d-block flaticon-body"></span>
						<h2 class="mb-4">Fit &amp; Healthy</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
					</div>
					<div class="tab-pane fade py-0" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
						<span class="icon mb-3 d-block flaticon-woman"></span>
						<h2 class="mb-4">Muscle Building</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
 					</div>
					<div class="tab-pane fade py-0" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-4-tab">
						<span class="icon mb-3 d-block flaticon-abs"></span>
						<h2 class="mb-4">Bikini &amp; Body</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
					</div>
					<div class="tab-pane fade py-0" id="v-pills-5" role="tabpanel" aria-labelledby="v-pills-5-tab">
						<span class="icon mb-3 d-block flaticon-running"></span>
						<h2 class="mb-4">Cardio Exercise</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
					</div>
					<div class="tab-pane fade py-0" id="v-pills-6" role="tabpanel" aria-labelledby="v-pills-6-tab">
					<span class="icon mb-3 d-block flaticon-meditation"></span>
						<h2 class="mb-4">Power Yoga</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
					</div>
					<div class="tab-pane fade py-0" id="v-pills-7" role="tabpanel" aria-labelledby="v-pills-7-tab">
						<span class="icon mb-3 d-block flaticon-aerobic"></span>
						<h2 class="mb-4">Aerobics Program</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
					</div>
					<div class="tab-pane fade py-0" id="v-pills-08" role="tabpanel" aria-labelledby="v-pills-08-tab">
						<span class="icon mb-3 d-block flaticon-gym"></span>
						<h2 class="mb-4">Crossfit Program</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo pariatur quam sequi quod iusto facilis officiis nobis sit quis molestias asperiores rem, blanditiis! Commodi exercitationem vitae deserunt qui nihil ea, tempore et quam natus quaerat doloremque.</p>
						<p><a href="#" class="btn btn-primary px-4 py-3">Learn More</a></p>
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