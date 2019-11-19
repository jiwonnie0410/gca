<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업적 히스토리</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=0, user-scalable=no, target-densitydpi=medium-dpi" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath }/css/jey/nouislider.js"></script>
<script src="${pageContext.request.contextPath }/css/jey/nouislider.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jey/nouislider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jey/nouislider.min.css">


<!-- <style>
.fluid-slider {
  -webkit-appearance: none;
  width: 200px;
  height: 25px;
  background: #c20042;
  border-radius: 2px;
  margin: 0;
  position: relative;
}

.fluid-slider::-webkit-slider-thumb {
 -webkit-appearance: none;
 appearance: none;
 border-radius: 0;
 width: 20px;
 height: 20px;
 border-radius: 50%;
 cursor: pointer;
 background: #fff;
 opacity: 0.65;
 border: 4px solid #c20042;
 position: relative;
 transition: all ease-in-out 0.05s;
}

.fluid-slider::-moz-range-thumb {
 -moz-appearance: none;
 appearance: none;
 border-radius: 0;
 width: 18px;
 height: 18px;
 border-radius: 50%;
 cursor: pointer;
 background: #fff;
 opacity: 0.65;
 border: 4px solid #c20042;
 position: relative;
 transition: all ease-in-out 0.05s;
}

.fluid-slider:focus { outline: none; }
.fluid-slider:active::-webkit-slider-thumb {
 background: transparent;
}

.fluid-slider:active::-moz-range-thumb {
 background: transparent;
}

.fluid-slider:active + .range-label {
  visibility: visible;
  opacity: 1;
  top: -75px;
}

.fluid-slider:before, .fluid-slider::after {
  position: absolute;
  content: '';
  width: 50px;
  padding: 0.5em;
  background: #d0d0d0;
  top: 50%;
  transform: translateY(-50%);
  box-sizing: border-box;
  text-align: center;
  font-weight: bold;
  border-radius: 2px;
}

.fluid-slider:before {
  left: -50px;
  content: attr(min);
}

.fluid-slider:after {
  right: -50px;
  content: attr(max);
}

.range-label {
  position: relative;
  display: block;
  width: 40px;
  height: 40px;
  top: -65px;
  visibility: hidden;
  opacity: 0;
  background: #fff;
  border-radius: 50%;
  line-height: 30px;
  text-align: center;
  font-weight: bold;
  font-size: 0.8em;
  transform: translateX(-50%);
  box-sizing: border-box;
  border: 6px solid #c20042;
  left: attr(value)20;
  transition: all ease-in .05s;
  z-index: -1;
}

.range-label:after {
  position: absolute;
  content: '';
  top: 33px;
  left: 50%;
  transform: translateX(-50%);
  width: 10px;
  height: 8px;
  background-repeat: no-repeat;
  background-image: radial-gradient(circle, white 50%, transparent 50%), radial-gradient(circle, white 50%, transparent 50%), linear-gradient(#c20042, #c20042);
  background-size: 180% 100%, 180% 100%, 100% 100%;
  background-position: 150% 0%, -50% 0%, 100% 100%;
}

::-moz-range-track {
 background: #c20042;
 border: 0;
}

 input::-moz-focus-inner, input::-moz-focus-outer {
 border: 0;
}
</style> -->

<!-- <script type="text/javascript">

$(function() { 
	var rangeSlider = document.getElementById("range-slider");

	var rangeLabel = document.getElementById("range-label");

	rangeSlider.addEventListener("input", showSliderValue, false);

	function showSliderValue() {
  	rangeLabel.innerHTML = rangeSlider.value;
  	var labelPosition = (rangeSlider.value /rangeSlider.max);
  
	  if(rangeSlider.value === rangeSlider.min) {
	 	rangeLabel.style.left = ((labelPosition * 100) + 2) + "%";
	  } else if (rangeSlider.value === rangeSlider.max) {
	 	rangeLabel.style.left = ((labelPosition * 100) - 2) + "%";
	  } else {
	  	rangeLabel.style.left = (labelPosition * 100) + "%";
	  }
	}
});
</script> -->

<style>

.Range {
	height: 230px;
}
/** * Restyle the range slider */
 .noUi-target {
	 width: 6px;
}
 .noUi-base {
	 margin-left: 22px;
	 background: #e4dfd3;
}
 .noUi-pips-vertical {
	 top: 0;
	 left: calc(100% + 16px);
	 height: 100%;
	 padding: 0 10px;
}
 .noUi-origin {
	 background: #fe9996;
}
 .noUi-handle {
	 left: -2px;
	 top: 0;
	 height: 20px;
	 width: 20px;
	 border: none;
	 border-radius: 50%;
	 background: #fe9996;
	 transform: translateX(-100%) translateY(-50%);
	 box-shadow: none;
}
 .noUi-handle::before {
	 display: none;
}
 .noUi-handle::after {
	 position: absolute;
	 top: 50%;
	 right: 2px;
	 width: 0;
	 height: 0;
	 border-style: solid;
	 border-width: 7px 0 7px 5px;
	 border-color: transparent transparent transparent #fe9996;
	 background: transparent;
	 transform: translateX(100%) translateY(-50%);
	 content: "";
}
 .noUi-value {
	 display: none;
}
 .noUi-marker, .noUi-marker-large {
	 width: 10px;
	 height: 2px;
	 margin-top: -1px;
	 background: #e4dfd3;
	 transform-origin: left;
	 transition: 0.2s transform ease;
}

/* 버튼크기줄이기 */
.noUi-handle.noUi-handle-lower{
	width:20px;
	height:20px;
}
/* 버튼위치조정 */
.noUi-vertical .noUi-handle{
	width:20px;
	height:20px;
	left: -10px;
	top: -5px;
}


/** * Modifiers to highlight the markers */
 .noUi-marker--is-inRange, .noUi-marker--is-current {
	 background: #fe9996;
}
 .noUi-marker--is-current {
	 transform: scaleX(2);
}
/** * Resets and presentational style */
 *, *::before, *::after {
	 box-sizing: border-box;
}
 html, body {
	 height: 100%;
}
 body {
	 display: flex;
	 align-items: center;
	 justify-content: center;
}
/** * Default style from noUiSlider, but removed all unused styles */
 .noUi-base {
	 width: 100%;
	 height: 100%;
	 position: relative;
	 z-index: 1;
}
 .noUi-target, .noUi-target * {
	 touch-action: none;
	 user-select: none;
	 box-sizing: border-box;
}
 .noUi-target {
	 position: relative;
	 direction: ltr;
}
 .noUi-origin {
	 position: absolute;
	 right: 0;
	 top: 0;
	 left: 0;
	 bottom: 0;
}
 .noUi-handle {
	 position: relative;
	 z-index: 1;
}
 .noUi-state-tap .noUi-origin {
	 transition: left 0.3s, top 0.3s;
}
 .noUi-state-drag * {
	 cursor: inherit !important;
}
 .noUi-pips, .noUi-marker {
	 position: absolute;
}
 

</style>

<script>

/**
 * Inspired by Flat Sliders from Ana Tudor
 * https://www.smashingmagazine.com/2016/04/inspiring-ui-demos-logins-menus-toggles-and-more/#pure-css-flat-sliders
 * https://codepen.io/thebabydino/pen/RNEEZP
 */

$(function() { 
 
const rangeSlider = document.querySelector('[data-js="range-slider"]');
const minRange = 0;
const maxRange = 100;

noUiSlider.create(rangeSlider, {
	range: {
    'min': [minRange],
    'max': [maxRange]
  },
	start: 0,
	orientation: 'vertical',
  direction: 'rtl',
	pips: {
		mode: 'range',
		density: 3
	}
});

function mapRange(value, low1, high1, low2, high2) {
  return low2 + (high2 - low2) * (value - low1) / (high1 - low1);
}

/**
 * Set the state of the markers
 */
function setMarkers() {
  const pips = document.querySelectorAll('.noUi-marker');
  const currentValue = rangeSlider.noUiSlider.get();
  const mappedValue = Math.round(mapRange(currentValue, minRange, maxRange, 0, pips.length - 1));
  
  console.log("pips : "+pips); 
  console.log("currentValue : "+currentValue); /*currentValue => 0~100까지 막대 비율인듯 */ 
  console.log("mappedValue : "+mappedValue); /* mappedValue => 0~33까지 몇번째 pipe인지 pipe 번호(marker). */
  
  
  for (let i = 0; i < pips.length; i++) {
    pips[i].classList.remove('noUi-marker--is-current');
    pips[i].classList.remove('noUi-marker--is-inRange');
  }
  
  for (let i = 0; i < mappedValue; i++) {;
    pips[i].classList.add('noUi-marker--is-inRange');
  }
  
  pips[mappedValue].classList.add('noUi-marker--is-current');
}

rangeSlider.noUiSlider.on('slide', setMarkers);
setMarkers();

});
</script>

</head>
<body>
	<!-- <div style="position:absolute; left:100px; top:100px;" class="slider-wrapper">
  		<input id="range-slider" class="fluid-slider" type="range" value="8000" min="0" max="10000">
  		<span id="range-label" class="range-label"></span>
	</div> -->
	
	<div class="Range" data-js="range-slider"></div>

</body>
</html>