<%@page import="com.duckG.vo.MemberVO"%>
<%@page import="com.duckG.member.service.MemberServiceImpl"%>
<%@page import="com.duckG.member.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.row {
	flex-wrap: nowrap;
}
</style>
<% 
String loginId = (String) session.getAttribute("logId");

MemberService msv = new MemberServiceImpl();
MemberVO mvo = msv.updateMemberfind(loginId);

%>
<section class="breadcrumb-section set-bg"
	data-setbg="img/breadcrumb.jpg" style="width: 100%">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>비밀번호 변경</h2>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Checkout Section Begin -->
<section class="update">
	<div class="container">
		 <form action="ChangePwFin.do" method = "post"> 
			<div class="row">
				<div class="col-lg-4">
					<div class="blog__sidebar">
						<div class="blog__sidebar__item">
							<h4>개인 정보 수정</h4>
							<ul>
								<h4>나의 현황</h4>
								<li><a href="#">주문 내역</a></li>
								<hr>
								<h4>개인 정보</h4>
								<li><a href="#">개인 정보 수정</a></li>
								<li><a href="#">비밀 번호 수정</a></li>
								<li><a href="#">회원 탈퇴</a></li>
								<hr>
								<h4>고객 센터</h4>
								<li><a href="#">1:1 문의</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6" id="row2">
					<div class="row" style="padding-top: 50px;">
						<div class="col-lg-12">
							<div class="checkout__input">
								<p>
									현재 비밀번호<span>*</span>
								</p>
								<input type="password" name="pw" id="pw">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="checkout__input">
								<p>
									비밀번호<span>*</span>
								</p>
								<input type="password" name="pw1" id="pw1">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="checkout__input">
								<p>
									비밀번호 확인<span>*</span>
								</p>
								<input type="password" name="pw2" id="pw2">
							</div>
						</div>
					</div>
					<div style="text-align: center;">
						<button type="submit" class="site-btn" onclick="btw()">수정</button>
						<button type="reset" class="site-btn">취소</button>
					</div>
				</div>
			</div>
		 </form> 
	</div>
</section>

