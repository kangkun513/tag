<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rock-paper-scissor</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet" />
<style type="text/css">
	
	html { 
		font-size: 16px; 
	}
	
	.header {
		height: 10rem;
		min-width: 60rem;
	}
	
	.logo {
		transition: 0.25s;
	}
	
	.logo:hover {
		box-shadow: 0px 0px 1em white, 0.5em 0.5em rgba(0,0,0,0.3);
	}
	
	.res {
	 	font-family: "Anton", sans-serif;
	 	font-weight: 400;
	 	font-style: normal;
	}
	
	.card {
		width: 256px;
		border-radius: 10px;
	}
	
	.btn_me:hover {
		border: 1px solid #5555FF !important;
	}
	
	.btn_me:active,
	.btn_me:focus {
		border: 1px solid blue !important;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script type="text/javascript" src="./js/mainjs.js" defer="defer"></script>
<script type="text/javascript" src="./js/rps.js" defer="defer"></script>

</head>

<body>
<div class="header" style="display: flex; align-items: center; justify-content: space-around; width: 100%;">
	<img class="logo" alt="logo" src="./images/tag_logo1.png" onclick="location.href='index'" style="max-height: 80px;">
	
	<div style="display: flex; justify-content: center; flex-grow: 1;">
		<button type="button" class="btn btn-outline-dark" style="width: 25%;" onclick="location.href='index'"><i class="bi bi-house">Index</i></button>
		<button type="button" class="btn btn-outline-dark" style="width: 25%;" onclick="location.href='list'"><i class="bi bi-list">Trend</i></button>
		<button type="button" class="btn btn-outline-dark" style="width: 25%;" onclick="location.href='list2'"><i class="bi bi-joystick">Games</i></button>
	</div>
	
	<div id="searchbox" style="display: none;">
		<form id="search" action="search" method="post">
			<div style="display: flex;">
				<input type="text" class="form-control" name="searchval" maxlength="10" placeholder="Search">
				<button type="submit"
					style="-webkit-backdrop-filter: invert(100%);
					backdrop-filter: invert(100%);"
					class="btn btn-outline-light">Search</button>
			</div>
		</form>
	</div>
	<div style="width: 5rem;">
		<button type="button" class="btn btn-outline-dark" onclick="showloginbox()"><i class="bi bi-person"></i></button>
	</div>
</div>


	<div id="com" style="display: flex; justify-content: center; background-color: #FAC8B5">
		<button class="btn" style="opacity: 0.1">가위<img class="card" alt="가위" src="./images/scissors.jpeg"></button>
		<button class="btn" style="opacity: 0.1">바위<img class="card" alt="바위" src="./images/rock.jpeg"></button>
		<button class="btn" style="opacity: 0.1">보<img class="card" alt="보" src="./images/paper.jpeg"></button>
	</div>
	
	<div class="res" style="text-align: center; vertical-align: middle; width: 100%; height: 2em; background-color: #FD7979;">CPU WIN : <span id="comScore">0</span></div>
	<div class="res" style="display: flex; justify-content: center; width: 100%; height: 6em; background-color: #CDCDCD;">
		<div style="width: 22.5em;">
			[POINTS]<br/>
			당신이 얻을 수 있는 포인트 : <span id="point">0</span><br/>
			※ 계산법 : (YOU WIN - CPU WIN) * 최고 기록
		</div>
		<div style="width: 15em;">
			[RECORD]<br/>
			<span id="tryScore">0</span>번째 결과 : <span id="res"></span><br/>
			최고 기록 : <span id="winsrec">0</span>연승<br/>
			현재 기록 : <span id="wins">0</span>연승<br/>
		</div>
		<div style="overflow: auto; width: 15em;">
			[HISTORY]<br/>
			<span id="result"></span>
		</div>
	</div>
	<div class="res" style="text-align: center; vertical-align: middle; width: 100%; height: 2em; background-color: #7979FD;">YOU WIN : <span id="myScore">0</span></div>
	
	<div id="me" style="display: flex; justify-content: center; background-color: #B5C8FA;">
		<button class="btn btn_me" onclick="select('가위')">가위<img class="card" alt="가위" src="./images/scissors.jpeg"></button>
		<button class="btn btn_me" onclick="select('바위')">바위<img class="card" alt="바위" src="./images/rock.jpeg"></button>
		<button class="btn btn_me" onclick="select('보')">보<img class="card" alt="보" src="./images/paper.jpeg"></button>
	</div>
	
</body>
</html>