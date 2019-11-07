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
	opacity: 0.2;
    width: 100%;
    height: 300px;
    object-fit: cover;
}


</style>
</head>

<body>

<div class="card" style="width:500px;">
  <img class="card-img-top" src="${pageContext.request.contextPath }/images/about.jpg" alt="Card image">
  <div class="card-img-overlay">
    <h4 class="card-title">같이 달리기 하실 분!</h4>
    <p class="card-text">3월 8일 오전 10시 30분</p>
    <a href="#" class="btn btn-primary">See Profile</a>
  </div>
</div>

</body>
</html>