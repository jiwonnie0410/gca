<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html>
<html>
<head>
    <title>운동하자 동네 한바퀴</title>
    
    <meta charset="UTF-8">
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
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html"> 운동하자 </a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <!-- 상단 메뉴바 -->
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	        	<li class="nav-item dropdown mr-5">
              		<a class="nav-link active" data-toggle="dropdown" href="#"> 활동 이력 </a>
	        			<div class="dropdown-menu">
                			<a class="dropdown-item" href="#"> 활동 히스토리 </a>
                			<a class="dropdown-item" href="#"> 챌린지 히스토리 </a>
                			<a class="dropdown-item" href="#"> 점수 히스토리 </a>
            			</div>
            	</li>

            	<li class="nav-item dropdown mr-5">
              		<a class="nav-link active" data-toggle="dropdown" href="#"> 반짝 </a>
	        			<div class="dropdown-menu">
                			<a class="dropdown-item" href="#"> 진행 중 반짝 </a>
                			<a class="dropdown-item" href="#"> 마감 반짝 </a>
            			</div>
            	</li>

            	<li class="nav-item dropdown mr-5">
              		<a class="nav-link active" data-toggle="dropdown" href="#"> 동호회 매치 </a>
	        			<div class="dropdown-menu">
                			<a class="dropdown-item" href="#"> 진행 중 매치 </a>
                			<a class="dropdown-item" href="#"> 동호회 홍보 </a>
                			<a class="dropdown-item" href="#"> 용병 구함 </a>
                			<a class="dropdown-item" href="#"> 마감 매치 </a>
            			</div>
            	</li>

            	<li class="nav-item dropdown mr-5">
              		<a class="nav-link active" data-toggle="dropdown" href="#"> 챌린지 및 랭킹 </a>
	        			<div class="dropdown-menu">
                			<a class="dropdown-item" href="#"> 챌린지 </a>
                			<a class="dropdown-item" href="#"> 랭킹 </a>
            			</div>
            	</li>

            	<li class="nav-item dropdown mr-5">
              		<a class="nav-link active" data-toggle="dropdown" href="#"> 문의 게시판 </a>
	        			<div class="dropdown-menu">
                			<a class="dropdown-item" href="#"> 문의 게시판 </a>
            			</div>
            	</li>
            </ul> 
	      </div>
	    </div>
	  </nav>

	  <!-- 각 페이지 들어갈 부분 -->
	  <decorator:body/>


    <!-- FOOTER -->
    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">ABOUT <span><a href="index.html">Us</a></span></h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Services</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Cocahes</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Schedule</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Services</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Gym Fitness</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Crossfit</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Yoa</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Aerobics</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>

  </body>
</html> 