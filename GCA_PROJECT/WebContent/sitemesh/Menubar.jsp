<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/menubar.css">
</head>

<body>
<div style="float:left; width:25%; height:60px">&nbsp;</div>
<div style="float:left; width:50%">
<div class="topnav" id="myTopnav">
	<a href="#home" class="active"><font size="5"><b> 운동하자 </b></font></a>
  

  
  <div class="dropdown sgroup">
    <button class="dropbtn"> 반짝 </button>
    <div class="dropdown-content">
      <a href="#"> 진행 중 반짝 </a>
      <a href="#"> 마감 반짝 </a>
    </div>
  </div>
  
  <div class="dropdown bgroup">
    <button class="dropbtn"> 동호회 매치 </button>
    <div class="dropdown-content">
      <a href="#"> 진행 중 매치 </a>
      <a href="#"> 동호회 홍보 </a>
      <a href="#"> 용병 구함 </a>
      <a href="#"> 마감 매치 </a>
    </div>
  </div>
  
  <div class="dropdown challenge">
    <button class="dropbtn"> 챌린지 및 랭킹 </button>
    <div class="dropdown-content">
      <a href="#"> 챌린지 </a>
      <a href="#"> 랭킹 </a>
    </div>
  </div>
  
  <div class="dropdown">
    <button class="dropbtn"> 문의 게시판 </button>
  </div>
  
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>
</div>
<div style="float:left; width:25%; height:60px">&nbsp;</div>

<div style="padding-left:16px">
  <h2>Responsive Topnav with Dropdown</h2>
  <p>Resize the browser window to see how it works.</p>
  <p>Hover over the dropdown button to open the dropdown menu.</p> /
  
</div>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>
