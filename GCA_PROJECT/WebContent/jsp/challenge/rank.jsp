<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rank.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>

.rankDiv {
  position: absolute;
  top: 7%;
  left: 33%;
  width: 800px;
  height: 500px;
  margin: -50px 0 0 -50px;
}

.rankTable {
	width: 800px;
	margin: auto;
	text-align: center;
	font-size: 25px;
	border-collapse: collapse;
}

.rankTable tr:hover {
	background-color: #dcdcdc;
}

img {
	border-radius: 50%;
	width: 50px;
	height: 50px;
}


</style>

</head>
<body>

<div class="rankDiv">
<div style="text-align:center;"><h1>회원 랭킹</h1></div>
	<table class="rankTable">
	  <thead>
	    <tr style="background-color: #FE9191">
	      <th scope="col">순위</th>
	      <th scope="col" colspan="2">닉네임</th>
	      <th scope="col">점수</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">1</th>
	      <td width="60px"> <img src="${pageContext.request.contextPath }/images/cycling1.jpg"> </td>
	      <td>헬스왕</td>
	      <td>25000</td>
	    </tr>
	    <tr>
	      <th scope="row">2</th>
	      <td width="60px"> <img src="${pageContext.request.contextPath }/images/cycling1.jpg"> </td>
	      <td>오리사</td>
	      <td>23420</td>
	    </tr>
	    <tr>
	      <th scope="row">3</th>
	      <td width="60px"> <img src="${pageContext.request.contextPath }/images/cycling1.jpg"> </td>
	      <td>메르시</td>
	      <td>22000</td>
	    </tr>
	    <tr>
	      <th scope="row">4</th>
	      <td width="60px"> <img src="${pageContext.request.contextPath }/images/cycling1.jpg"> </td>
	      <td>아나</td>
	      <td>21000</td>
	    </tr>
	    <tr>
	      <th scope="row">5</th>
	      <td width="60px"> <img src="${pageContext.request.contextPath }/images/cycling1.jpg"> </td>
	      <td>윈스턴</td>
	      <td>20200</td>
	    </tr>
	  </tbody>
	</table>
<hr>
	<div style="text-align:center"><h1>나의 랭킹</h1></div>
	<div style="text-align:center"><h2><img src="${pageContext.request.contextPath }/images/cycling1.jpg">둠피스트 / 2000점 / 순위권외(1000등 이하)</h2></div>


</div>

</body>
</html>