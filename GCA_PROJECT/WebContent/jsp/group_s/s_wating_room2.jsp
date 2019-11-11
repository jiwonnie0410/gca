<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 안쓴 반짝 대기방</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=0, user-scalable=no, target-densitydpi=medium-dpi" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- <style>
.arrow-img{
    position: relative;
    background-image: url(${pageContext.request.contextPath }/images/arrowNoArrow.JPG);                                                               
    height: 20px;
    width: 40px;
    background-size: cover;
    
}

.arrow-img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 1;
     text-align: center;
}

</style> -->
<style>

body {
	margin: 0;
}

div { text-align: center; padding-top:30px; }



#over img {
	margin-left: auto;
	margin-right: auto;
	display: block;
}


.button-title {
  background: #fff;
  border: 3px solid #FE9191;
  border-radius: 7px;
  color: #FE9191;
  font-size: 15px;
  font-weight: bold;
  margin: 0.3em auto;
  padding: 2px 6px;
  position: relative;
  text-transform: uppercase;

}
	
.button-general {
  background: #FE9191;
  border: 3px solid #fff;
  border-radius: 7px;
  color: #fff;
  font-size: 15px;
  font-weight: bold;
  margin: 0.3em auto;
  padding: 2px 6px;
  position: relative;
  text-transform: uppercase;
}

.wrap{
     width: 1000px;
     height: 300px;
     overflow-x: scroll;
     white-space:nowrap;
   }




</style>



</head>
<body>

    <div style="padding-top:0px;">
    
    	<div style="padding-left:30px; text-align:left;">
      		<button class="button-title">#원화여고 운동장</button>
      		<button class="button-title">#12/25</button>
      		<button class="button-title">#10:30</button>
      		<button class="button-title">#배드민턴</button>
      		<button class="button-title">#여성</button>
      		<button class="button-title">#(4/4)</button>
    	</div>
    		
    	<div style="padding-top:0px; padding-bottom:20px">
    		<div>
      			<textarea style="background-color:#FE9191;border-radius:5px;border:3px double #FFF;padding:10px; resize:none; width:80%; height:300px;"><000님이 참가하셨습니다.></textarea>
      			<div style="padding-top:10px;">
      				<span style="padding-left:5px; padding-right:3px; vertical-align: middle;">
      					<textarea style="border-radius:5px; padding:10px; resize:none; width:65%; height:70px; ">입력하세요</textarea>
      				</span>
      				<span style="vertical-align:middle">
      					<button class="button-general">전송</button>
      				</span>
      			</div>
    		</div>
    	</div>
    	
     	<div style="border-top: thick double #FE9191; border-bottom: thick double #FE9191; padding-top:15px; padding-bottom:15px;">

        		<span style="padding:10px">
          			<img width="60px" height="60px" src="${pageContext.request.contextPath }/images/trainer-1.jpg" class="rounded-circle">
        		</span>
        	
          		<span style="padding:10px">
          			<img width="60px" height="60px" src="${pageContext.request.contextPath }/images/trainer-2.jpg" class="rounded-circle">
        		</span>
        	
          		<span style="padding:10px">
          			<img width="60px" height="60px" src="${pageContext.request.contextPath }/images/trainer-3.jpg" class="rounded-circle">
        		</span>
        	
          		<span style="padding:10px">
          			<img width="60px" height="60px" src="${pageContext.request.contextPath }/images/trainer-1.jpg" class="rounded-circle">
        		</span>

    	</div>
    			
    </div> 													
 															
    <div style="padding-bottom:30px">
      	<button class="button-general">참가인증</button>&nbsp;<button class="button-general">참가취소</button>&nbsp;
      	<button class="button-general">공유</button>&nbsp;<button class="button-general">목록</button>
    </div>

    
</body>
</html>