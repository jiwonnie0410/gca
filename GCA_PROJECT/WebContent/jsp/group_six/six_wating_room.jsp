<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>용병 대기방</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<style>

body {
	margin: 0;
}

#over img {
	margin-left: auto;
	margin-right: auto;
	display: block;
}

	/* GENERAL BUTTON STYLING */
button {
  background: #FE9191;
  border: 3px solid #fff;
  border-radius: 10px;
  color: #fff;
  font-size: 15px;
  font-weight: bold;
  margin: 1em auto;
  padding: 3px 9px;
  position: relative;
  text-transform: uppercase;
}

.pink{
	border: 3px solid #FE9191;
	border-radius: 10px;
}

</style>



</head>
<body>
<!-- 	<br /><br />
	<div class="arrow-img">
        <div class="content">
            <p style="font-size: 6px">신고<p>
        </div>
    </div> -->
    <div class="container" id="img_container">
  <div class="row">						<!--row1-->
    <div class="col-md-8">
      	<button>#원화여고 운동장</button><button>#12/25</button><button>#10:30</button><button>#배드민턴</button><button>#여성</button><button>#(2/1)</button>
      <div class="row">                       <!--row1_1-->
        <div style="text-align: center" class="col-4 col-md-6">
        	<div style="padding-top:40px" id="over" class="row">
          		<img width="150px" height="150px" src="${pageContext.request.contextPath }/images/trainer-1.jpg" class="rounded-circle">
        	</div>
        	<div class="row">
        		<button>신고</button><button>강퇴</button>
        	</div>
        </div>
        <div style="text-align: center" class="col-4 col-md-6">
          	<div style="padding-top:40px" id="over" class="row">
          		<img width="150px" height="150px" src="${pageContext.request.contextPath }/images/trainer-2.jpg" class="rounded-circle">
        	</div>
        	<div class="row">
        		<button>신고</button><button>강퇴</button>
        	</div>
        </div>
      </div> 								<!-- end row1_1 -->
      <div class="row">						<!-- row1_2 -->
      	<div style="text-align: center" class="col-4 col-md-6">
          	<div style="padding-top:40px" id="over" class="row">
          		<img width="150px" height="150px" src="${pageContext.request.contextPath }/images/trainer-3.jpg" class="rounded-circle">
        	</div>
        	<div class="row">
        		<button>신고</button><button>강퇴</button>
        	</div>
        </div>
        <div style="text-align: center" class="col-4 col-md-6">
          	<div style="padding-top:40px" id="over" class="row">
          		<img width="150px" height="150px" src="${pageContext.request.contextPath }/images/trainer-1.jpg" class="rounded-circle">
        	</div>
        	<div class="row">
        		<button>신고</button><button>강퇴</button>
        	</div>
        </div>
      </div>								<!-- end row1_2 -->
    </div> 															<!-- col-md-8 -->
    <div style="padding-top:70px;" class="col-md-4">
    	<div style="text-align: center;">
      		<textarea style="background-color:#FE9191;border:3px solid #FFF;padding:10px; resize:none; width:300px; height:400px;">hi my name is aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</textarea>
      		<textarea style="padding:10px; resize:none; width:300px; height:100px;">입력하세요</textarea>
      	</div>
    </div> 															<!-- col-md-4 -->
    <div style="padding-top:30px; text-align: center" class="col-md-12">
      	<button>목록</button><button>참가취소</button>
    </div>															<!-- col-md-12 -->
  </div> 									<!-- end row1 -->
</div>										<!-- container -->
    
</body>
</html>