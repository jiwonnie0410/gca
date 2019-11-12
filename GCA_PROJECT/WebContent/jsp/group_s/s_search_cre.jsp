<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반짝 방 생성하기</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- private : icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mihy/nouislider.min.css">
<script src="${pageContext.request.contextPath }/js/mihy/nouislider.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mihy/nouislider.css">
<script src="${pageContext.request.contextPath }/js/mihy/nouislider.min.js"></script>

<script>
$(document).ready(function(){
	$('#sg_sport').change(function(){
		var status = $('#sg_sport option:selected').val();
		if(status == 'basketball' || status == 'badminton' || status == 'etc-sport'){
			$('#sg_option1').show();
		}
		if(status == 'running'){
			$('#sg_option2').show();
		}
	});
});
	
</script>
<style>

body{
	padding: 10px;
	font-size: 12px;
}

.sg_name {
	font-size: 10px;
}

.custom-checkbox {
	font-size: 12px;
}

.title {
	font-size: 12px;
	color: #FE9191;
	border-color: #FE9191;
	border-radius: 5px;
	padding: 3px;
}


/* 라디오 버튼 */

/* The container */
.radio_label {
  display: block;
  position: relative;
  padding-left: 18px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 12px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.radio_label input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 2px;
  left: 0;
  height: 15px;
  width: 15px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.radio_label:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.radio_label input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.radio_label input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.radio_label .checkmark:after {
 	top: 4px;
	left: 4px;
	width: 7px;
	height: 7px;
	border-radius: 50%;
	background: white;
}

</style>
</head>

<body>

<form action="/action_page.php" class="was-validated">
	
	<table>
		<tr>
			<td>
				<span class="title mr-2">방 이름</span>
			</td>
			<td colspan="3">
				<input type="text" class="form-control sg_name" id="sg_name" placeholder="모임의 이름을 적어주세요." name="sg_name" required>
			</td>
		</tr>
		<tr>
			<td>
				<span class="title mr-2">종목</span>
			</td>
			<td>
				<select id="sg_sport" name="sg_sport" class="btn btn-outline-secondary btn-sm dropdown-toggle">
					<option selected>운동 종목 선택</option>
					<option value="basketball">농구</option>
					<option value="running">달리기/산책</option>
					<option value="hiking">등산</option>
					<option value="badminton">배드민턴</option>
					<option value="bowling">볼링</option>
					<option value="swimming">수영</option>
					<option value="bicycle">자전거</option>
					<option value="etc-sport">기타</option>
				</select>
			</td>
			<td>
				<span class="title mr-2">숙련도</span>
			</td>
			<td>
				<select id="sg_skill" name="sg_skill" class="btn btn-outline-secondary btn-sm dropdown-toggle">
					<option selected></option>
					<option value="a">입문</option>
					<option value="b">초급</option>
					<option value="c">중급</option>
					<option value="d">고급</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<span class="title mr-2">마감 날짜</span>
			</td>
			<td>
				<input type="date" id="sg_end" name="sg_end">
			</td>
			<td>
				<span class="title mr-2">인원</span>
			</td>
			<td>
				<select id="sg_finish" name="sg_finish" class="btn btn-outline-secondary btn-sm dropdown-toggle">
					<option selected></option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<span class="title mr-2">성별</span>
			</td>
			<td colspan="3">
				<label class="radio_label float-left">남자만&nbsp;&nbsp;&nbsp;
					<input type="radio" checked="checked" name="sg_gender" id="sg_gender" value="m">
					<span class="checkmark"></span>
				</label>
				<label class="radio_label float-left">여자만&nbsp;&nbsp;
					<input type="radio" name="sg_gender" id="sg_gender" value="w">
					<span class="checkmark"></span>
				</label>
				<label class="radio_label float-left">혼성&nbsp;&nbsp;
					<input type="radio" name="sg_gender" id="sg_gender" value="r">
					<span class="checkmark"></span>
				</label>
			</td>
		</tr>
		<tr>
			<td>
				<span class="title mr-2">연령대</span>
			</td>
			<td colspan="3">
				<input type="checkbox" id="sg_age1" name="sg_age1" value="전체">
				<label class="custom-control-label">전체</label>
				<input type="checkbox" id="sg_age2" name="sg_age2" value="20s">
				<label class="custom-control-label">20대</label>
				<input type="checkbox" id="sg_age2" name="sg_age2" value="30s">
				<label class="custom-control-label">30대</label>
				<input type="checkbox" id="sg_age2" name="sg_age2" value="40s">
				<label class="custom-control-label">40대</label>
				<input type="checkbox" id="sg_age2" name="sg_age2" value="50s">
				<label class="custom-control-label">50대</label>
				<input type="checkbox" id="sg_age2" name="sg_age2" value="60s">
				<label class="custom-control-label">60대 이상</label>
			</td>
		</tr>
	</table>
	
	
	<div class="row m-1">
		<input type="text" class="form-control sg_name" id="sg_name" placeholder="모임 이름(제목)" name="sg_name" required>
	</div>
	
	<div class="row m-1">
		<select id="sg_sport" name="sg_sport" class="btn btn-outline-secondary btn-sm dropdown-toggle">
			<option selected>운동 종목</option>
			<option value="basketball">농구</option>
			<option value="running">달리기/산책</option>
			<option value="hiking">등산</option>
			<option value="badminton">배드민턴</option>
			<option value="bowling">볼링</option>
			<option value="swimming">수영</option>
			<option value="bicycle">자전거</option>
			<option value="etc-sport">기타</option>
		</select>
	</div>
	
	<div class="row m-1">
		<div class="form-group">
			<select id="sg_skill" name="sg_skill" class="btn btn-outline-secondary btn-sm dropdown-toggle">
				<option selected>숙련도</option>
				<option value="1">입문</option>
				<option value="2">초급</option>
				<option value="3">중급</option>
				<option value="4">고급</option>
			</select>
		</div>
	</div>
	
	<div class="row m-1">
		<span class="title mr-2">마감 날짜</span>
		<input type="date" id="sg_end" name="sg_end">
	</div>
	
	<div class="row m-1">
		<select id="sg_finish" name="sg_finish" class="btn btn-outline-secondary btn-sm dropdown-toggle">
			<option selected>인원</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
		</select>
	</div>
	
	<div class="row m-1">
		<label class="radio_label">남자만&nbsp;&nbsp;&nbsp;
			<input type="radio" checked="checked" name="sg_gender" id="sg_gender" value="1">
			<span class="checkmark"></span>
		</label>
		<label class="radio_label">여자만&nbsp;&nbsp;
			<input type="radio" name="sg_gender" id="sg_gender" value="2">
			<span class="checkmark"></span>
		</label>
		<label class="radio_label">혼성&nbsp;&nbsp;
			<input type="radio" name="sg_gender" id="sg_gender" value="3">
			<span class="checkmark"></span>
		</label>
	</div>
	
	<div class="custom-control custom-checkbox mb-3">
		<input type="checkbox" class="custom-control-input" id="sg_option1" name="sg_option1" value="1">
		<label class="custom-control-label" for="sg_option1">개인 도구 필요(예. 농구공, 배드민턴 라켓, 셔틀콕 등)</label>
	</div>
	
	<div class="custom-control custom-checkbox mb-3">
		<input type="checkbox" class="custom-control-input" id="sg_option2" name="sg_option2" value="2">
		<label class="custom-control-label" for="sg_option2">반려 동물 동반</label>
	</div>

	<button type="submit" class="btn btn-primary">Submit</button>
</form>

	<div id="skipstep"></div>
	<span class="example-val" id="skip-value-lower"></span>
	<span class="example-val" id="skip-value-upper"></span>

<script>
var skipSlider = document.getElementById('skipstep');

noUiSlider.create(skipSlider, {
    range: {
        'min': 10,
        '20%': 20,
        '40%': 30,
        '60%': 40,
        '80%': 50,
        'max': 60
    },
    snap: true,
    start: [20, 70]
});

var skipValues = [
    document.getElementById('skip-value-lower'),
    document.getElementById('skip-value-upper')
];

skipSlider.noUiSlider.on('update', function (values, handle) {
	console.log(skipValues[handle].innerHTML);

	skipValues[handle].innerHTML = values[handle] + "대 이상";
});
</script>

</body>
</html>