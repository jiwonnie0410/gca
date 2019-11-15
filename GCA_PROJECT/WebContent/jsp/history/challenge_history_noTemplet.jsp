<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>챌린지 히스토리</title>

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

div.card.bg-warning{
	border-color: #FE9191;
}

div.card.bg-warning div.card-body.text-center{
	background-color:#fff;
	color:#FE9191;
}
</style>

<div class="card bg-warning"> 위 스타일 적용하였던 html 코드.
		<div class="card-body text-center">
			<p class="card-text">Some text inside the second card</p>
		</div>
</div>

-->
<style>

.container > div{
	border: 3px double;
	border-color: #FE9191;
	border-radius: 10px;
	margin-left:8px;
	margin-top:8px;
	padding-top:10px;
	padding-bottom:10px;
	padding-left:10px;
	width: 95%;
	height: 120px;

	background-color: #FAF0F0;
}
.container > div:nth-child(2n+1) { /* 홀수번째 카드 분홍색으로 했는데 스페셜챌린지만 분홍색으로 하는게 더 나을듯? */
	background-color: white;
}

</style>

</head>
<body>
<div style="margin-top: 40px" class="container">	
	<div>
		<span style="margin-top:10px;margin-bottom:10px;float:left;">기본<br />기간<br />리워드<br /></span>
		<span style="float: right;"><img width="140px" height="112px" src="${pageContext.request.contextPath }/images/challenge_ing.png"></span>
	</div>
	
	<div style="clear: both;">
		<span>챌린지22</span>
		<span style="float: right;"><img width="140px" height="112px" src="${pageContext.request.contextPath }/images/challenge_fail.png"></span>
	</div>
	
	<div style="clear: both;">
		<span>챌린지333</span>
		<span style="float: right;"><img width="140px" height="112px" src="${pageContext.request.contextPath }/images/challenge_success.png"></span>
	</div>
	
	<div style="clear: both;">
		<span>챌린지4</span>
		<span style="float: right;"><img width="140px" height="112px" src="${pageContext.request.contextPath }/images/challenge_ing.png"></span>
	</div>
	
	<div style="clear: both;">
		<span>챌린지5</span>
		<span style="float: right;"><img width="140px" height="112px" src="${pageContext.request.contextPath }/images/challenge_success.png"></span>
	</div>
</div>
	
</body>
</html>