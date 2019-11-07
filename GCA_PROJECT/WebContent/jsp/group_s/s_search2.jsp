<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함께 운동할 상대를 찾아보세요!</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script>

</script>

<style>

.card-img-top {
    width: 100%;
    height: 300px;
    object-fit: cover;
}

.card-img-overlay {
	opacity: 0.8;
}

.btn {
	float: right;
	margin-right: 10px;
}

</style>
</head>

<body>

<div class="card" style="width:500px;">
  <img class="card-img-top" src="${pageContext.request.contextPath }/images/bg_1.jpg" alt="Card image">
  <div class="card-img-overlay bg-white m-4">
    <h4 class="card-title font-weight-bold">같이 달리기 하실 분!</h4>
    <p class="card-text font-weight-bold pl-2">3월 8일 오전 10시 30분</p>
    <p class="card-text font-weight-bold pl-2">진성 초등학교 운동장</p>
    <p class="card-text pl-2">배드민턴 (초급 이상)</p>
    <p class="card-text pl-2">여성 20대 (4/4)</p>
    <a href="#" class="btn btn-info">참여하기</a>
  </div>
</div>

</body>
</html>