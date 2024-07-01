<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/login/loginForm.css">

<div class="login_wrapper">
  <div class="login_container">
    <div class="sign-up-container">
      <form action="addMember.do" method="post">
        <h2>회원가입</h2>
        <div class="social-links">
          <div>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
          </div>
        </div>
        <input type="text" name="name" placeholder="이름">
        <input type="text" name="id" placeholder="아이디">
        <input type="password" name="pw" placeholder="비밀번호">
        <button type="submit" class="form_btn">회원가입</button>
      </form>
    </div>
    <div class="sign-in-container">
      <form action="login.do" method="post">
        <h2>로그인</h2>
        <div class="social-links">
          <div>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
          </div>
        </div>
        <input type="text" name="id" placeholder="아이디">
        <input type="password" name="pw" placeholder="비밀번호">
        <button type="submit" class="form_btn">로그인</button>
      </form>
    </div>
    <div class="overlay-container">
      <div class="overlay-left">
        <h2>환영합니다</h2>
        <p>저희와 연결을 유지하려면 개인 정보로 로그인하세요</p>
        <button id="signIn" class="overlay_btn">로그인</button>
      </div>
      <div class="overlay-right">
        <h2>어서오세요</h2>
        <p>개인 정보를 입력하고 저희와 함께 여행을 시작하세요</p>
        <button id="signUp" class="overlay_btn">회원가입</button>
      </div>
    </div>
  </div>
</div>

<script src="js/login/login.js"></script>