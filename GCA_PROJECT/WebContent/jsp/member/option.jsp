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

<!-- range slider JS ; https://jsfiddle.net/daltonrenaldo/4zxm7fw0/  참조-->

<script>
$(function() {
	var slider = $('#myRange');
	var output = $("#checkRange");
	output.html(slider.val());
	
	slider.on('input', function() {
		output.html( slider.val() );
	});
	 
	// 페이지로딩시 슬라이더 기본값만큼 색칠 ( value= 기본값 - 민값/맥스값 - 민값) FE9191=색칠색(핑크) d5d4d3=백그라운드색(회색)
	var value = ($('#myRange').val() - $('#myRange').attr('min')) / ($('#myRange').attr('max') - $('#myRange').attr('min'));
	var percent = value * 100;
	$('#myRange').css('background', 'linear-gradient(to right, #FE9191 0%, #FE9191 '+ percent +'%, #d5d4d3 ' + percent + '%, #d5d4d3 100%)');

	//슬라이더 동그라미 이동시 변경값만큼 동적으로 색칠
	$('#myRange').on('input', function(){
		var value = ($(this).val() - $(this).attr('min')) / ($(this).attr('max') - $(this).attr('min'));
		var percent = value * 100;
	    $(this).css('background', 'linear-gradient(to right, #FE9191 0%, #FE9191 '+ percent +'%, #d5d4d3 ' + percent + '%, #d5d4d3 100%)');

	  });
});
	
</script>

	
<style>
.optionDiv {
	padding: 45px;
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
	height : 150px;
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
/** 출처: https://proto.io/freebies/onoff/  ios디자인 **/

.onoffswitch {
    position: relative; width: 150px;
    -webkit-user-select:none; -moz-user-select:none; -ms-user-select: none;
}
.onoffswitch-checkbox {
    display: none;
}
.onoffswitch-label {
    display: block; overflow: hidden; cursor: pointer;
    height: 67px; padding: 0; line-height: 67px;
    border: 2px solid #999999; border-radius: 67px;
    background-color: #c8c8c8;
    transition: background-color 0.2s ease-in;
}
.onoffswitch-label:before {
    content: "";
    display: block; width: 60px; margin: 0px;
    background: #FFFFFF;
    position: absolute; top: 0; bottom: 0;
    right: 81px;
    border: 6px solid #999999; border-radius: 67px;
    transition: all 0.2s ease-in 0s; 
}
.onoffswitch-checkbox:checked + .onoffswitch-label {
    background-color: #FE9191;
}
.onoffswitch-checkbox:checked + .onoffswitch-label, .onoffswitch-checkbox:checked + .onoffswitch-label:before {
   border-color: #FE9191;
}
.onoffswitch-checkbox:checked + .onoffswitch-label:before {
    right: 0px; 
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
  outline: none;
  -webkit-transition: .2s;
  transition: opacity .2s;
  background: #e0e0e0;
  	
}

.rangeSlider:hover {
  opacity: 1;
}

/* 동그라미 옵션 webkit: chrome; moz: firefox */
.rangeSlider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background: #FE9191;
  cursor: pointer;
  box-shadow: 0 0 0 10px white;
}

.rangeSlider::-moz-range-thumb {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background: #FE9191;
  cursor: pointer;
  box-shadow: 0 0 0 10px white;
  
}

.rangeSlider::-webkit-range-progress {
	background: red;
	height: 10px;

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
				<td width="1040">반짝 풀방시 알람</td>
				<td width="160">
					<div class="onoffswitch">
					    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch1" checked>
					    <label class="onoffswitch-label" for="myonoffswitch1"></label>
					</div>
				</td>
			</tr>
			<tr>
				<td>범위내 등록된 반짝 알람</td>
				<td>
					<div class="onoffswitch">
					    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch2" checked>
					    <label class="onoffswitch-label" for="myonoffswitch2"></label>
					</div>
				</td>
			</tr>
			<tr>
				<td>범위내 등록된 용병 알람</td>
				<td>
					<div class="onoffswitch">
					    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch3" checked>
					    <label class="onoffswitch-label" for="myonoffswitch3"></label>
					</div>
				</td>
			</tr>
			<tr>
				<td>범위내 등록된 동아리매치 알람</td>
				<td>
					<div class="onoffswitch">
					    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch4" checked>
					    <label class="onoffswitch-label" for="myonoffswitch4"></label>
					</div>
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