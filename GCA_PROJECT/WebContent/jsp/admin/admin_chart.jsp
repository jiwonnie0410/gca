<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title> 운동하자 관리자 페이지 </title>
		
		<!-- Custom fonts for this template-->
		<link href="${pageContext.request.contextPath }/jsp/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"	type="text/css">
		<!-- Page level plugin CSS-->
		<link href="${pageContext.request.contextPath }/jsp/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		<!-- Custom styles for this template-->
		<link href="${pageContext.request.contextPath }/jsp/admin/css/sb-admin.css" rel="stylesheet">
		<!-- Bootstrap core JavaScript-->
		<script src="${pageContext.request.contextPath }/jsp/admin/vendor/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath }/jsp/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="${pageContext.request.contextPath }/jsp/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script src="${pageContext.request.contextPath }/jsp/admin/vendor/chart.js/Chart.min.js"></script>
		<script src="${pageContext.request.contextPath }/jsp/admin/vendor/datatables/jquery.dataTables.js"></script>
		<script src="${pageContext.request.contextPath }/jsp/admin/vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="${pageContext.request.contextPath }/jsp/admin/js/sb-admin.min.js"></script>
		<!-- Demo scripts for this page-->
		<script src="${pageContext.request.contextPath }/jsp/admin/js/demo/datatables-demo.js"></script>
		<script src="${pageContext.request.contextPath }/jsp/admin/js/demo/chart-area-demo.js"></script>
		
		
		<!-- 통계 차트 그리기 -->
	    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	    <!-- 반짝 운동별 통계 도넛 -->
	    <script type="text/javascript">
		      google.charts.load("current", {packages:["corechart"]});
		      google.charts.setOnLoadCallback(drawChart);
		      function drawChart() {
		        var data = google.visualization.arrayToDataTable([
		          ['Task', 'Hours per Day'],
		          ['배드민턴',     11],
		          ['달리기',      2],
		          ['자전거',  2],
		          ['수영', 2],
		          ['농구',    7],
		          ['볼링', 2],
		          ['등산', 2]
		        ]);
		
		        var options = {
		          title: ' ',
		          pieHole: 0.4,
		        };
		
		        var chart = new google.visualization.PieChart(document.getElementById('div_sgroup_exercise'));
		        chart.draw(data, options);
		      }
	    </script>
	    
	    <!-- 동호회 매치 운동별 통계 도넛 -->
	    <script type="text/javascript">
		      google.charts.load("current", {packages:["corechart"]});
		      google.charts.setOnLoadCallback(drawChart);
		      function drawChart() {
		        var data = google.visualization.arrayToDataTable([
		          ['Task', 'Hours per Day'],
		          ['축구',     11],
		          ['야구',      2],
		          ['농구',  2],
		          ['볼링', 2],
		          ['기타',    7]
		        ]);
		
		        var options = {
		          title: ' ',
		          pieHole: 0.4,
		        };
		
		        var chart = new google.visualization.PieChart(document.getElementById('div_bgroup_exercise'));
		        chart.draw(data, options);
		      }
	    </script>
	    
	    <!-- 성별 연령대 통계 컬럼 차트 -->
	    <script type="text/javascript">
			    google.charts.load('current', {'packages':['bar']});
			    google.charts.setOnLoadCallback(drawChart);
		
			    function drawChart() {
			        var data = google.visualization.arrayToDataTable([
			          ['Year', '여성', '남성'],
			          ['20대', 1000, 400],
			          ['30대', 1170, 460],
			          ['40대', 660, 1120],
			          ['50대 이상', 1030, 540]
			        ]);
		
			        var options = {
			          chart: {
			        	  title: ' '
			          }
			        };
		
			        var chart = new google.charts.Bar(document.getElementById('div_age_gender'));
		
			        chart.draw(data, google.charts.Bar.convertOptions(options));
			      }
    	</script>
    
    	    <!-- 지역별 통계 지도 -->
		<script type="text/javascript">
		      google.charts.load('current', {'packages':['corechart']});
		      google.charts.setOnLoadCallback(drawChart);
		
		      function drawChart() {
		        var data = google.visualization.arrayToDataTable([
		          ['Year', '서울', '부산', '대구', '인천', '광주', '대전', '울산'],
		          ['2004',  1000,      400,				430,		490,		390,		230,		590],
		          ['2005',  1170,      460,				420,		450,		490,		430,		560],
		          ['2006',  660,       1120,			440,		430,		380,		270,		520],
		          ['2007',  1030,      540,				430,		460,		320,		430,		390]
		        ]);
		
		        var options = {
		          title: 'Company Performance',
		          curveType: 'function',
		          legend: { position: 'bottom' }
		        };
		
		        var chart = new google.visualization.LineChart(document.getElementById('div_city'));
		
		        chart.draw(data, options);
		      }
	    </script>
</head>

	<!-- 맨 위에 바 부분 -->
	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
		<!-- 삼선 메뉴모양이랑 페이지 이름 -->
		<button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
			<i class="fas fa-bars" style="color:#FE9191;"></i>
		</button>
		<a class="navbar-brand mr-1" href="#"> 운동하자 관리자 </a>

		<!-- Navbar 맨 위에 검색하는 부분 -->
		<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색" aria-label="Search" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-primary" style="background-color: #FE9191; border-color: #FE9191;"type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>
	</nav>

	<!-- 메뉴 -->
	<div id="wrapper">
		<ul class="sidebar navbar-nav">
			<li class="nav-item active" ><a class="nav-link">
				<i class="fas fa-fw fa-tachometer-alt"></i><span>&nbsp; MENU </span></a>
			</li>
			
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-fw fa-folder"></i> <span> 회원 관리 </span>
				</a>
				<!-- 여기는 일단 그냥 달아놨음 
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<a class="dropdown-item" href="#"> 회원 목록 </a>
					<a class="dropdown-item" href="#"> 신고 관리 </a>
				</div>
				 -->
			</li>
			
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown"	role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-fw fa-folder"></i> <span> 게시판 관리 </span>
				</a>
			</li>
			
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown"	role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-fw fa-folder"></i> <span> 챌린지 관리 </span>
				</a>
			</li>
			
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown"	role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-fw fa-folder"></i> <span> 통계 관리 </span>
				</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<a class="dropdown-item" href="#"> 매출 </a>
					<a class="dropdown-item" href="#"> 통계 </a>
				</div>	
			</li>
		</ul>
		
		<!-- 각 메뉴마다 안에 들어가는 내용 부분 -->
		<div id="content-wrapper">
			<div class="container-fluid">
			
				<!-- /.container-fluid -->
				<div style="display:inline-block; text-align:center;">
					<font size="4"><b> 반짝 운동별 통계 </b></font>
					<div id="div_sgroup_exercise" style="width:700px; height:380px;"></div>
				</div>
				<div style="display:inline-block; text-align:center;">
					<font size="4"><b> 동호회 매치 운동별 통계 </b></font>
					<div id="div_bgroup_exercise" style="width:700px; height:380px;"></div>
				</div>
				<div style="display:inline-block; text-align:center;">
					<font size="4"><b> 연령대 및 성별 통계 </b></font>
					<div id="div_age_gender" style="width:700px; height:380px; vertical-align: top;"></div>
				</div>
				<div style="display:inline-block; text-align:center;">
					<font size="4"><b> 지역별 통계 </b></font>
					<div id="div_city" style="width:800px; height:380px;"></div>
				</div>
				
			</div>
		</div>
		
	</div>

	<!-- FOOTER (스티키) -->
	<footer class="sticky-footer">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
            	<span>Copyright © 운동하자 TEAM Girls Can do Anything 2019</span>
          	</div>
        </div>
	</footer>
</body>

</html>
