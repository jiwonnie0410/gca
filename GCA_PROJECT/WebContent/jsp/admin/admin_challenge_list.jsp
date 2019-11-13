<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
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
		
		<style>
			.table-tr:hover{
				  background-color:#FAF0F0;
			}
			
			.button-general {
				  background: #fff;
				  border: 3px solid #FE9191;
				  border-radius: 7px;
				  color: #FE9191;
				  font-size: 15px;
				  font-weight: bold;
				  margin: 0.3em auto;
				  padding: 2px 4px;
				  position: relative;
				  text-transform: uppercase;
				  height: 35px;
				  width: 300px;
			}
			
			.button-general:hover {
				  background-color: #FE9191;
				  color: white;
			}
			
			.check-box {
				display: inline-block;
				width: 20px;
				height: 20px;
				border: 2px solid #FE9191;
				background-color: white;
				cursor: pointer;
			}
		</style>
		
		<!-- 체크박스 하나만 선택 되게 하기 (복수 선택 방지) -->
		<script type="text/javascript">
		    function oneCheckbox(a){
		        var obj = document.getElementsByName("checkbox1");
		        for(var i=0; i<obj.length; i++){
		            if(obj[i] != a){
		                obj[i].checked = false;
		            }
		        }
		    }
		</script>
</head>
<body>
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
					<!-- 여기 밑에다 쓰세요 -->
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8" align="center" style="padding-top:30px;">
								<font size="4"><b> 현재 진행 중인 챌린지 목록 </b></font><br /><br /><br />
									<div align="right">
										<form role="form" id="searchfrm" name="searchfrm" action="admin_deliverListForm.do" method="post">
											<input type="hidden" name="p" value="1">
											<input type="hidden" name="status" value="${param.status }">
											<table>
												<tr><td><select id="selectKey" name="selectKey" class="btn btn-outline-warning btn-sm dropdown-toggle">
														<option	value="o_id" selected> 챌린지 이름 </option></select></td>
												<td width="300"><input type="text" id='keyword' name='keyword' class="form-control"></td>
												<td><button id='searchBtn' name='searchBtn' onclick='searchBtn' class="btn btn-outline-warning btn-sm">검색</button></td>
												<td><button id='searchBtn' name='searchBtn' onclick='#' class="btn btn-outline-warning btn-sm">챌린지 생성</button></td>
												</tr>
											</table><br />
										</form>
									</div>
										
								<table class="table">
									<tr id='tr' align="center" style="background-color:#FEBABA;">
										<th width="5%"> NO </th>
										<th width="10%"> 구분 </th>
										<th width="45%"> 챌린지 이름 </th>
										<th width="12%"> 시작 날짜 </th>
										<th width="12%"> 마감 날짜 </th>
										<th width="10%"> 참여인원 </th>
									</tr>
									<tr class="table-tr" data-toggle="modal" data-target="#challenge-going">
										<td align="center"> 1 </td>
										<td align="center"> 스페셜 </td>
										<td> 돈 내고 돈 먹기 </td>
										<td align="center"> 2019-11-13 </td>
										<td align="center"> 2019-12-02 </td>
										<td align="center"> 30명 </td>
								</table>
									
									<!-- 페이징 -->
									<nav aria-label="Page navigation example">
									  <ul class="pagination justify-content-center">
									    <li class="page-item">
									      <a class="page-link" href="#" aria-label="Previous" style="color:#FE9191;">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
									    </li>
									    	
									    <li class="page-item">
									      <a class="page-link" href="#" aria-label="Next" style="color:#FE9191;">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
									    </li>
									  </ul>
									</nav>
								<button class="button-general" data-toggle="modal" data-target="#challenge-create"> 챌린지 생성 </button>
						</div>
						<div class="col-md-2"></div>
					
					
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
	</div>
	
	
	
<!-- 챌린지 생성 모달 시작 -->
<div class="container">
	<div class="modal fade" id="challenge-create">
		<div class="modal-dialog">
			<div class="modal-content">
      
<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title"><b> 챌린지 생성 </b></h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
        
<!-- Modal body -->
				<div class="modal-body">
						<div>
							<table border="1">
								<tr>
									<th width="30%"> 챌린지 구분 </th><td width="20%"></td>
									<td width="50%">
										<form name="sendForm">
											<input type="checkbox" name="checkbox1" value="basic" onclick="oneCheckbox(this)" class="check-box"> 기본
											<input type="checkbox" name="checkbox1" value="basic" onclick="oneCheckbox(this)" class="check-box"> 스페셜
										</form></td>
								</tr>
							</table>
							
								
						</div>
					
					
					
    				
    				
    				<input type="checkbox">
    				<label> 체크박스 </label> <br />


					<!-- 단수 선택  체크박스 -->
					<form name="sendForm" method="get" >
					    <input type="checkbox" name="checkbox1" value="a1" onclick="oneCheckbox(this)" id="cb1">a1
					    <input type="checkbox" name="checkbox1" value="a2" onclick="oneCheckbox(this)" id="cb1">a2
					    <input type="checkbox" name="checkbox1" value="a3" onclick="oneCheckbox(this)" id="cb1">a3
					</form>
				</div>
<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="button-general"> 생성 </button>
				</div>
        
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->

<!-- 챌린지 현황 보여주는 모달 시작 -->
<div class="container">
	<div class="modal fade" id="challenge-going">
		<div class="modal-dialog">
			<div class="modal-content">
      
<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title"><b> 챌린지 진행 현황 </b></h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
        
<!-- Modal body -->
				<div class="modal-body">
				
					엳다가 챌린지 현황을 보여 주세요

				</div>
<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="button-general"> 생성 </button>
				</div>
        
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->

</body>
</html>