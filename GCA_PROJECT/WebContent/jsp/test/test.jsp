<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>

$(function() {
	var slider = document.getElementById("myRange"); 
	var output = document.getElementById("checkRange");
	output.innerHTML = slider.value;
	
	slider.oninput = function() {
	output.innerHTML = this.value;
	}

	$('input[type=range]').on('input', function(){
		var value = ($(this).val() - $(this).attr('min')) / ($(this).attr('max') - $(this).attr('min'));
		var val = value * 100;
	    $(this).css('background', 'linear-gradient(to right, #FE9191 0%, #FE9191 '+ val +'%, #d5d4d3 ' + val + '%, #d5d4d3 100%)');

	  });
	
});


</script>

<style>
/***********range slidar************************/

.slidecontainer {
  width: 100%;
}

.rangeSlider {
  -webkit-appearance: none;
  width: 100%;
  height: 30px;
  border-radius: 5px;
  background: #e0e0e0; 
  outline: none;
  -webkit-transition: .2s;
  transition: opacity .2s;
  
	background-image: -webkit-gradient(linear,
	  left top, 
	  right top, 
	  color-stop(33%, #FE9191),
	  color-stop(33%, #e0e0e0));
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


<br><br>
<div class="slidecontainer">
<input type="range" value="5" class="rangeSlider" id="myRange" min="1" max="15">
  
</div>
반경범위: <span id="checkRange"></span>km


</body>
</html>