<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>option.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- range slider JS -->
<script>
	$(function() {
		var slider = document.getElementById("myRange"); 
		var output = document.getElementById("checkRange");
		output.innerHTML = slider.value;
		
		slider.oninput = function() {
		output.innerHTML = this.value;
		}
	});
</script>

	
<style>
.optionDiv {
	padding: 15px;
}

.title {
	text-align: center;
	font-size: 50px;
	font-weight: bold;
}


thead {
	font-size: 50px;
	font-weight: bold;
}

td {
	font-size: 50px;
	padding: 20px;
}

button {
	width: 200px;
	height: 100px;
	font-size: 50px;
	font-weight: bold;
	background: #FE9191;
	border-radius: 30px;
	color: white;
	border: none;
}


/*************toggle switch**********************/

.switch {
  position: relative;
  display: inline-block;
  width: 100px;
  height: 50px;
  float: right;
  margin: 0 20px 0 0;
  
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 50px;
  width: 50px;
  left: 4px;
  background-color: white;
  box-shadow: 3px 3px 10px 0px #0000004a;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #FE9191;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(49px);
  -ms-transform: translateX(26px);
  transform: translateX(46px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

/***********range slidar************************/

.slidecontainer {
  width: 100%;
}

.rangeSlider {
  -webkit-appearance: none;
  width: 100%;
  height: 30px;
  border-radius: 5px;
  background: #cccccca3; 
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
}

.rangeSlider:hover {
  opacity: 1;
}

.rangeSlider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  background: #FE9191; <!--슬라이더  동그라미 색상 -->
  cursor: pointer;
}

.rangeSlider::-moz-range-thumb {
  width: 25px;
  height: 25px;
  border-radius: 50%;
  background: #4CAF50;
  cursor: pointer;
}


</style>	

	
</head>

<body>

<div class="optionDiv">
  <div class="title" style="height: 100px;">환경설정</div>
  <hr>
	<table class="alarmTable">
		<thead>
			<tr>
				<td>알람설정</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="1050">반짝 풀방시 알람</td>
				<td width="150">
					<label class="switch">
					  <input type="checkbox" checked>
					  <span class="slider round"></span>
					</label>
				</td>
			</tr>
			<tr>
				<td>범위내 등록된 반짝 알람</td>
				<td>
					<label class="switch">
					  <input type="checkbox" checked>
					  <span class="slider round"></span>
					</label>
				</td>
			</tr>
			<tr>
				<td>범위내 등록된 용병 알람</td>
				<td>
					<label class="switch">
					  <input type="checkbox" checked>
					  <span class="slider round"></span>
					</label>
				</td>
			</tr>
			<tr>
				<td>범위내 등록된 동아리매치 알람</td>
				<td>
					<label class="switch">
					  <input type="checkbox" checked>
					  <span class="slider round"></span>
					</label>
				</td>
			</tr>
			
			
		</tbody>
	</table>
	<br>
	<table class="rangeTable">
		<thead>
			<tr>
				<td>범위설정 </td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="2">
					<div class="slidecontainer">
					  <input type="range" min="1" max="15" value="5" class="rangeSlider" id="myRange">
					</div>
				</td>
			</tr>
			<tr>
				<td width="800">　　　반경범위: <span id="checkRange"></span>km</td>
				<td width="400"><button>적용</button></td>
			</tr>
		</tbody>
	</table>
</div>


</body>
</html>