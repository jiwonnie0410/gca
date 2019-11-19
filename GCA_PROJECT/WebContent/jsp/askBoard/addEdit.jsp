<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>게시판</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/aos.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		CKEDITOR.replace('content');
		CKEDITOR.config.height = 260; //높이 설정
		CKEDITOR.config.width = 300;

		$("#list").click(function() {
			location.href = "/board/list";
		});

		$("#save").click(function() {

			//에디터 내용 가져옴
			var content = CKEDITOR.instances.content.getData();

			//널 검사
			if ($("#subject").val().trim() == "") {
				alert("제목을 입력하세요.");
				$("#subject").focus();
				return false;
			}

			if ($("#content").val().trim() == "") {
				alert("내용을 입력하세요.");
				$("#content").focus();
				return false;
			}

		});
	});
</script>


</head>
<body>
	<%--    <input type="hidden" id="board_id" name="board_id" value="${boardView.id}" /> --%>
	<div style="margin:15;" >
		<div class="panel-group">
			<div class="panel panel-success" style="border-color: #FEBABA;">
				<div class="panel-heading" style="background-color:#FEBABA; color:black;">홍보글 작성<button type="button" class="close">&times;</button></div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" action="${review_write}"method="post">
						<div class="form-group">
							<label class="control-label col-sm-2">작성자(ID):</label>
							<div class="col-sm-10">
								<input type="hidden" id="board_id" name="board_id"
									value="${boardView.writer}" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">제목:</label>
							<div class="col-sm-10">
								<input type="text" id="subject" name="subject"
									style="width: 250;" placeholder="제목"
									value="${boardView.subject}" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">내용:</label>
							<div class="col-sm-10">
								<textarea name="content" id="content" rows="10" cols="80"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10" align="center">
								<button type="submit"  class="btn btn-primary px-3 py-2" id="save" name="save">저장</button>
								<button type="reset" class="btn btn-primary px-3 py-2 ">초기화</button>
								<button class="btn btn-primary px-3 py-2" id="list" name="list">게시판</button>
							</div>
						</div>
					</form>
				</div>
				
				</div>
				<br>
				<div class="footer" align="right">
					<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
</body>
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath }/js/aos.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath }/js/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="${pageContext.request.contextPath }/js/google-map.js"></script>
<script src="${pageContext.request.contextPath }/js/main.js"></script>
<script src="ckeditor/ckeditor.js"></script>

<%-- jQuery CDN --%>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>
