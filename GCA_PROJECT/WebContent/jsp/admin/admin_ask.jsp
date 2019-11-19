<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
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
		
		<!-- 데이터테이블 -->
		<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.4.1.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
</head>

<body id="page-top">
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
	<div id="wrapper" >
		<ul class="sidebar navbar-nav">
			<li class="nav-item active" ><a class="nav-link">
				<i class="fas fa-fw fa-tachometer-alt"></i><span>&nbsp; MENU </span></a>
			</li>
			
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-fw fa-folder"></i> <span> 회원 관리 </span>
				</a>
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
				<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown"	role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
					<i class="fas fa-fw fa-folder"></i> <span> 통계 관리 </span>
			</li>
		</ul>
<div id="content-wrapper" >
      <div class="container"><!--    <div class="container-fluid">  -->
		<center> <h1>문의관리</h1></center>
			<section class="userlist">
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr ><a></a>
									<th >문의 번호</th>
									<th >문의 날짜</th>
									<th>답변상태</th>
									<th>상세보기</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
									<th >문의 번호</th>	
									<th >문의 날짜</th>	
									<th>답변상태</th>
									<th>상세보기</th>
									</tr>
								</tfoot>
								<tbody>
									<tr >
										<td >Tiger Nixon</a></td>
										<td>System Architect</td>
										<td><button type="button" class="btn btn-primary px-3 py-2" data-toggle="modal" data-target="#myModal" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;">답변완료</button></td>
										<td><button type="button" class="btn btn-primary px-3 py-2" data-toggle="modal" data-target="#myModal2l" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;">질문보기</button></td>
									</tr>
									<tr >
										<td>Garrett Winters</td>
										<td>Accountant</td>
										<td><button type="button" class="btn btn-primary px-3 py-2" data-toggle="modal" data-target="#myModal" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;">미완료</button></td>
										<td><button type="button" class="btn btn-primary px-3 py-2" data-toggle="modal" data-target="#myModal2" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;">질문보기</button></td>
									</tr>
									<tr>
										<td>Ashton Cox</td>
										<td>San Francisco</td>
										<td><button type="button" class="btn btn-primary px-3 py-2" data-toggle="modal" data-target="#myModal" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;">답변완료</button></td>
										<td><button type="button" class="btn btn-primary px-3 py-2" data-toggle="modal" data-target="#myModal2" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;">질문보기</button></td>
									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
	<br>
	</div>
	</div>
	 <!-- Modal -->
  	<div class="modal fade" id="myModal" role="dialog" >
    	<div class="modal-dialog modal-lg">
    
      	<!-- Modal content-->
      	<div class="modal-content">
        <div class="modal-body">
			<div class="panel-group">
			<div class="panel panel-success" style="margin-top: 10px;">
				<div class="panel-heading">문의 답변   <button type="button" class="close" data-dismiss="modal">&times;</button></div>
				<div class="panel-body">
					<%-- form --%>
					<form class="form-horizontal" role="form" action="${review_write}" method="post">
						<div class="form-group">
							<label class="control-label col-sm-2">작성자(ID):</label>
							<div class="col-sm-10">
								<input type="hidden" id="board_id" name="board_id" value="${boardView.writer}" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">내용:</label>
							<div class="col-sm-10">
								 <textarea name="content" id="content" rows="10" cols="100">${boardView.content}</textarea>
							</div>
						</div>
				
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-success px-3 py-2" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;">작 성</button>
								<button type="reset" class="btn btn-danger px-3 py-2">초기화</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info px-3 py-2" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
<!--   <!-- Modal2 _ 질문 상세 읽기 -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
      Modal content
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">문의 사항 읽기</h4>
        </div>
        <div class="modal-body">
          <textarea rows="10" class="form-control" readonly="readonly" id="content">곰 세마리가 한집에 있어 엄마곰 아빠곰 애기곰</textarea>	
        </div>
        <div class="modal-footer">
        						
          <button type="button" class="btn btn-primary px-3 py-2" data-toggle="modal" data-target="#myModal" style="background-color:#FEBABA;border: 1.5px solid #FEBABA;" >답변</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        	
        </div>
      </div>
      
    </div>
  </div>
	
	</div>
	 <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
	
	</body>
	</html>