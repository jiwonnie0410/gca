<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매치 대기방</title>
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
  width: 100%;
}
	
.button-general {
  background: #FE9191;
  border: 3px solid #fff;
  border-radius: 7px;
  color: #fff;
  font-size: 15px;
  font-weight: bold;
  margin: 0.3em auto;
  padding: 3px 9px;
  position: relative;
  text-transform: uppercase;
  height: 40px;
}

.button-general {
  background: #FE9191;
  border: 3px solid #fff;
  border-radius: 7px;
  color: #fff;
  font-size: 15px;
  font-weight: bold;
  margin: 0.3em auto;
  padding: 3px 9px;
  position: relative;
  text-transform: uppercase;
  height: 40px;
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
<!-- 방제-고치기 -->
    	<div style="background-color: #FE9191; text-align: left; padding-left:20px; color: #fff;"> 
      		방제목<span style="padding-left:78%"><button data-toggle="modal" data-target="#room-info" style="background-color:#FFC0C0;" class="button-general">방 정보</button></span>
      		
    	</div>
    	
<!-- 채팅 -->	
    	<div style="padding-top:0px; padding-bottom:20px">
    		<div>
      			<textarea style="font-size:15px; background-color:#FE9191;border-radius:5px;border:3px double #FFF;
      							padding:10px; resize:none; width:80%; height:300px;"><000님이 참가하셨습니다.></textarea>
      			<div style="padding-top:10px;">
      				<span style="padding-left:5px; padding-right:3px; vertical-align: middle;">
      					<textarea style="font-size:15px; border-radius:5px; padding:10px; resize:none; width:65%; height:70px; ">입력하세요</textarea>
      				</span>
      				<span style="vertical-align:middle;">
      					<button class="button-general">전송</button>
      				</span>
      			</div>
    		</div>
    	</div>
    	
    	
<!-- 참여자 프로필 -->
     	<div style="border-top: thick double #FE9191; border-bottom: thick double #FE9191; padding-top:15px; padding-bottom:15px;">

        		<span data-toggle="modal" data-target="#profile" style="font-size:13px; padding:10px; display:inline-block;"> <!-- inline-block : span태그에 꼭맞게 만들어줌 -->
          			<img style="padding-bottom:5px;" width="65px" height="65px"
          							src="${pageContext.request.contextPath }/images/trainer-1.jpg" class="rounded-circle">
        			<br />사람1
        		</span>
        	
          		<span data-toggle="modal" data-target="#profile" style="font-size:13px; padding:10px; display:inline-block;">
          			<img style="padding-bottom:5px;" width="65px" height="65px"
          							src="${pageContext.request.contextPath }/images/trainer-2.jpg" class="rounded-circle">
        			<br />사람2
        		</span>
        	
    	</div>
    			
    </div> 													
 	
<!-- 버튼들(아직 아무 기능 없음) -->														
    <div style="padding-bottom:30px">
      	<button class="button-general">참가취소</button>&nbsp; <!-- 방장일경우 방폭파? 매치 취소? -->
      	<button class="button-general">공유</button>&nbsp; <!-- 방정보 텍스트 복사 -->
      	<button class="button-general">목록</button>
    </div>




<!-- 프로필 모달 --><!-- 프로필 모달 --><!-- 프로필 모달 --><!-- 프로필 모달 --><!-- 프로필 모달 --><!-- 프로필 모달 --><!-- 프로필 모달 -->
<div class="container">
	<div class="modal" id="profile">
		<div class="modal-dialog">
			<div class="modal-content">
      
<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">프로필</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
        
<!-- Modal body -->
				<div class="modal-body">
					해당 회원 정보
				</div>
        
<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="button-general">신고</button>
					<button type="button" class="button-general">강퇴</button> <!-- 얘는 방장만 보이게 -->
					<button type="button" class="button-general" data-dismiss="modal">닫기</button>
				</div>
        
			</div>
		</div>
	</div>
</div>

<!-- 방정보 모달 --><!-- 방정보 모달 --><!-- 방정보 모달 --><!-- 방정보 모달 --><!-- 방정보 모달 --><!-- 방정보 모달 --><!-- 방정보 모달 -->
<div class="container">
	<div class="modal" id="room-info">
		<div class="modal-dialog">
			<div class="modal-content">
      
<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">방 정보</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
        
<!-- Modal body -->
				<div class="modal-body">
					<해당 방 정보><br /><br />
					00중학교 운동장<br />
					날짜<br />
					시간<br />
					축구<br />
					여성<br />
					11 vs 11<br />
					매치 대기중<br /> <!-- 참여 대기중/매치 대기 -->
				</div>
        
<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="button-general" data-dismiss="modal">닫기</button>
				</div>
        
			</div>
		</div>
	</div>
</div>


    
</body>
</html>