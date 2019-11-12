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
		var output = document.getElementById("demo");
		output.innerHTML = slider.value;
		
		slider.oninput = function() {
		output.innerHTML = this.value;
		}
	});
</script>

	
<style>
.title {
 text-align: center;
 font-size: 50px;
 font-weight: bold;
}

thead {
	font-size: 40px;
	font-weight: bold;
}

td {
	font-size: 40px;
}


/*************toggle switch**********************/

.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
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
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
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
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
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
  height: 15px;
  border-radius: 5px;
  background: #d3d3d3; <!--슬라이더 막대 색상 -->
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
  width: 25px;
  height: 25px;
  border-radius: 50%;
  background: #FE9191; <!--슬라이더 색상 -->
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
  <div class="title">환경설정</div>
  <hr>
	<table class="alarmTable">
		<thead>
			<tr>
				<td>알람설정</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>알람1</td>
				<td>
					<label class="switch">
					  <input type="checkbox" checked>
					  <span class="slider round"></span>
					</label>
				</td>
			</tr>
			<tr>
				<td>알람2</td>
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
				<td>범위설정</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>반경범위</td>
				<td>
					<div class="slidecontainer">
					  <input type="range" min="1" max="10" value="5" class="rangeSlider" id="myRange">
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<h1><p>범위: <span id="demo"></span>km</p></h1>
	
</div>

</body>
</html>