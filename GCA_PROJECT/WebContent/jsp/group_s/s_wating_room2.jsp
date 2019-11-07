<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

</style>

</head>
<body>
	<br /><br />
	<div class="arrow-img">
        <div class="content">
            <p style="font-size: 6px">신고<p>
        </div>
    </div>
</body>
</html>