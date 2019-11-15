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
	
	$('input[type=range]').on('input', function(){

	    var val = $(this).val();
	    $(this).css('background', 'linear-gradient(to right, #FE9191 0%, #FE9191 '+ val +'%, #d5d4d3 ' + val + '%, #d5d4d3 100%)');

	  });
	
});



</script>

<style>

input[type=range] {

    -webkit-appearance: none;

    width: 100%;

    height: 6px;

    background: #d5d4d3;

    cursor: pointer;

    border-radius: 0; /* iOS */

   transition: background 450ms ease-in;

  }

 

 

  input[type=range]:focus {

    outline: none;

  }

 

 

  input[type=range]::-webkit-slider-thumb{

    -webkit-appearance: none;

    width: 12px;

    height: 12px;

    background: #fff;

    border: 1px solid dodgerblue;

    border-radius:50%;

    cursor: pointer;

  }

  input[type=range]::-moz-range-thumb{

    -webkit-appearance: none;

    width:10px;

    height:10px;

    background: #fff;

    border: 1px solid dodgerblue;

    border-radius:50%;

    cursor: pointer;

  }

</style>

</head>

<body>


<input type="range" value="0">

</body>
</html>