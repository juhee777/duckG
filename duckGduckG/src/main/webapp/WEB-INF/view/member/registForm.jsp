<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/login/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/login/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/login/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/login/animate/animate.css">
<!--===============================================================================================-->	
<link rel="stylesheet" type="text/css" href="vendor/login/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/login/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/login/select2/select2.min.css">
<!--===============================================================================================-->	
<link rel="stylesheet" type="text/css" href="vendor/login/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/login/loginUtil.css">
<link rel="stylesheet" type="text/css" href="css/login/loginMain.css">
<!--===============================================================================================-->
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						회원가입
					</span>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="name">
						<span class="focus-input100" data-placeholder="이름"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="id">
						<span class="focus-input100" data-placeholder="아이디"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass" onkeyup="enterkey()">
						<span class="focus-input100" data-placeholder="비밀번호"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="button" id="registBtn" class="login100-form-btn">
								회원가입
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							계정이 있습니까?
						</span>

						<a class="txt2" href="loginForm.do">
							로그인
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="js/login/loginForm.js"></script>
<!--===============================================================================================-->
	<script src="vendor/login/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/login/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/login/bootstrap/js/popper.js"></script>
	<script src="vendor/login/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/login/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/login/daterangepicker/moment.min.js"></script>
	<script src="vendor/login/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/login/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/login/loginMain.js"></script>