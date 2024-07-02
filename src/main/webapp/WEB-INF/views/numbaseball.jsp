<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 야구</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script type="text/javascript" src="./js/mainjs.js"></script>
<script type="text/javascript" src="./js/numbaseball.js"></script>
<style type="text/css">

	.header {
		height: 10rem;
		min-width: 60rem;
	} 

</style>
</head>
<body>
<div class="header" style="display: flex; align-items: center; justify-content: space-around; width: 100%;">
	<img class="logo" alt="logo" src="./images/tag_logo1.png" onclick="location.href='index'" style="max-height: 80px;">

	<div style="display: flex; justify-content: center; flex-grow: 1;">
		<button type="button" class="btn btn-outline-dark" style="width: 25%;" onclick="location.href='index'"><i class="bi bi-house">Index</i></button>
		<button type="button" class="btn btn-outline-dark" style="width: 25%;" onclick="location.href='list'"><i class="bi bi-list">Trend</i></button>
		<button type="button" class="btn btn-outline-dark" style="width: 25%;" onclick="location.href='list2'"><i class="bi bi-joystick">Games</i></button>
	</div>
	
	<div style="width: 5rem;">
		<button type="button" class="btn btn-outline-dark" onclick="showloginbox()"><i class="bi bi-person"></i></button>
	</div>
</div>

<%-- 세션 정보 받아오기 --%>
<%
	session = request.getSession();
	String nickname = (String) session.getAttribute("nickname");
	String point = String.valueOf(session.getAttribute("point"));
%>


<!-- 로그인, 회원가입, 마이페이지 박스 -->
<div id="loginbox" style="position: absolute;
				top: 6.5rem;
				right: 2rem;
				padding: 1rem;
				display: none;
				border: 1px solid silver;
				background-color: white;
				z-index: 2;">

	<%-- 비 로그인시 --%>
	<c:if test="${nickname == null}">
		<%-- 로그인 / 회원가입 / 프로필 버튼 --%>
		<div class="d-flex justify-content-left align-items-center form-outline mb-2">
			<button class="btn btn-outline-dark" id="tab-login" onclick="pills_login()"> SignIn </button>
			<button class="btn btn-outline-dark" id="tab-register" onclick="pills_register()" style="margin-left: 3%; margin-right: 43%"> SignUp </button>

				<%-- 창 닫기 버튼 --%>
			<div style="width: 10%;">
				<button type="button" class="btn-close" aria-label="Close" onclick="pills_close()"></button>
			</div>
		</div>

		<div class="tab-content">
			<div id="pills-login" style="width: 20rem; display: block;">
				<form>
					<!-- ID input -->
						<%-- 수정 - type="email"에서 type="text"로 변경 및 id 변경--%>
					<div data-mdb-input-init class="form-outline mb-4">
						<input type="text" id="loginId" class="form-control" placeholder="Username"/>
					</div>

					<!-- Password input -->
					<div data-mdb-input-init class="form-outline mb-4">
						<input type="password" id="loginPassword" class="form-control" placeholder="Password"/>
					</div>

					<!-- 2 column grid layout -->
					<div class="row mb-4">
						<div class="col-md-6 d-flex justify-content-center">
							<!-- Checkbox -->
							<div class="mb-3 mb-md-0">
								<input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
								<label class="form-check-label" for="loginCheck"> Remember me </label>
							</div>
						</div>

						<div class="col-md-6 d-flex justify-content-center">
							<!-- Simple link -->
							<a href="#!">Forgot password?</a>
						</div>
					</div>

					<!-- Submit button -->
						<%-- 수정 - onclick 이벤트 추가 --%>
					<button type="button" style="width: 100%;" data-mdb-button-init data-mdb-ripple-init class="btn btn-dark btn-block mb-4" onclick="SignInOk()">Login</button>

					<div class="text-center mb-4">
						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-google"></i>
						</button>

						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-twitter"></i>
						</button>

						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-facebook"></i>
						</button>

						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-github"></i>
						</button>
					</div>

					<!-- Register buttons -->
					<div class="text-center">
						<p>Not a member? <a href="#!">Register</a></p>
					</div>
				</form>
			</div>
			<div id="pills-register" style="width: 20rem; display: none;">
				<form>
					<div class="text-center mb-2">
						<div class="text-center mb-2">Sign up with:</div>
						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-google"></i>
						</button>

						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-twitter"></i>
						</button>

						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-facebook"></i>
						</button>

						<button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-dark btn-floating mx-1">
							<i class="bi bi-github"></i>
						</button>
					</div>

					<div class="text-center mb-2">or:</div>
						<%-- 수정 - 회원가입 폼 --%>
					<!-- 닉네임 입력 -->
					<div data-mdb-input-init class="form-outline mb-4">
						<input type="text" id="nickname" class="form-control" placeholder="Nickname" oninput="NickCheck()"/>
						<span id="NickCheckMsg"></span>
					</div>

					<!-- 이메일 입력 -->
					<div data-mdb-input-init class="form-outline mb-4">
						<input type="email" id="email" class="form-control" placeholder="Email"/>
					</div>

					<!-- 아이디 입력 -->
					<div data-mdb-input-init class="form-outline mb-4">
						<input type="text" id="userid" class="form-control" placeholder="ID" oninput="IdCheck()"/>
						<span id="IdCheckMsg"></span>
					</div>

					<!-- 비밀번호 입력 -->
					<div data-mdb-input-init class="form-outline mb-4">
						<input type="password" id="pw" class="form-control" placeholder="Password" oninput="PwCheck()"/>
					</div>

					<!-- 비밀번호 입력 및 비밀번호 확인 -->
					<div data-mdb-input-init class="form-outline mb-4">
						<input type="password" id="pwCheck" class="form-control" placeholder="Repeat Password" oninput="PwCheck()"/>
						<span id="PwCheckMsg"></span>
					</div>

						<%-- 생년월일 추가 --%>
					<div data-mdb-input-init class="form-outline mb-4">
						<label for="birth">생년월일(선택)</label>
						<input type="date" id="birth" class="form-control"/>
					</div>
						<%-- 윗줄까지 복사 --%>

					<!-- Checkbox -->
					<div class="form-check d-flex justify-content-center mb-4">
						<input class="form-check-input me-2" type="checkbox" value="" id="registerCheck" checked
							   aria-describedby="registerCheckHelpText"/>
						<label class="form-check-label" for="registerCheck">
							I have read and agree to the terms
						</label>
					</div>

					<!-- Submit button -->
					<button type="submit" style="width: 100%;" data-mdb-button-init data-mdb-ripple-init class="btn btn-dark btn-block mb-3" onclick="SignUpOK()">Sign in</button>
				</form>
			</div>
		</div>
	</c:if>

	<%-- 로그인시 --%>
	<c:if test="<%=nickname != null %>">
		<%-- 로그인 / 회원가입 / 프로필 버튼 --%>
		<div class="d-flex justify-content-right align-items-right form-outline mb-2">

				<%-- 창 닫기 버튼 --%>
			<div style="width: 10%;">
				<button type="button" class="btn-close" aria-label="Close" onclick="pills_close()"></button>
			</div>
		</div>

		<div class="tab-content">
			<div id="pills-mypage" style="width: 10rem; display: block;">
				<div data-mdb-input-init class="form-outline mb-4">
					<div class="d-flex align-items-center justify-content-center"
						 style="width: 100%; height: 100%; max-height: 5rem; border-radius: 0.5rem; background-color: #eae2e2;">
							<span class="loginInfo" style="height:70px; align-content: center">
								<%-- 수정 - 닉네임 부분을 세션으로 변경 --%>
								<%
									out.println("<strong>"+nickname+"</strong>");
									out.println("<br>");
									out.println("ⓟ "+point);
								%>
							</span><br/>
					</div>
				</div>
				<div data-mdb-input-init class="form-outline mb-4">
					<button type="button" class="btn btn-outline-dark btn-floating mx-1" style="width: 100%;" onclick="location.href='./Myinfo'">
						내 정보
					</button>
				</div>

				<div data-mdb-input-init class="form-outline mb-4">
					<button type="button" class="btn btn-outline-dark btn-floating mx-1" style="width: 100%;" onclick="location.href='./Scrap'">
						스크랩
					</button>
				</div>

				<div data-mdb-input-init class="form-outline mb-4">
					<button type="button" class="btn btn-outline-dark btn-floating mx-1" style="width: 100%;" onclick="location.href='./MyComment'">
						내 댓글
					</button>
				</div>

				<div data-mdb-input-init class="form-outline mb-4">
					<button type="button" class="btn btn-outline-dark btn-floating mx-1" style="width: 100%;">
						Game
					</button>
				</div>

				<div data-mdb-input-init class="form-outline mb-4">
					<button type="button" class="btn btn-outline-dark btn-floating mx-1" style="width: 100%; color: red" onclick="location.href='./logout'">
						Logout
					</button>
				</div>
			</div>
		</div>
	</c:if>
</div>



	<div class="mt-5 container text-center">
		<h3>숫자 야구 <i class="bi bi-dribbble" style="color: green;"></i></h3>
		<br />
		<p>숫자만 일치하면 ball, 숫자와 자리까지 일치하면 strike!</p>
		<p>랜덤한 숫자를 맞춰보세요! 기회는 단 10번입니다.</p>
		<div id="levelContainer">
            <input type="text" id="levelInput" placeholder="3 ~ 9 사이의 레벨을 숫자로 입력하세요" style="width: 20%"/>
            <button id="levelBtn" class="btn btn-primary btn-sm">레벨 입력</button>
        </div>
		<br/><div id="gameContainer" class="container text-center algin-middle" style="display: none;">
			<div>
	            <input type="text" id="userInput" placeholder="level 자리 숫자를 입력하세요" maxlength=level>
	            <button id="guessBtn" class="btn btn-danger btn-sm">Guess</button>
			</div>           
     	</div>
        <br/><div id="result" style="color: red;"></div><br/>
        <div id="history"></div>
        <button id="retryBtn" class="btn btn-dark btn-sm" style="display:none;">다시하기</button>
    </div><br/>
</body>
</html>







