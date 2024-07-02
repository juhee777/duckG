<%@page import="com.duckG.member.service.MemberService"%>
<%@page import="com.duckG.member.service.MemberServiceImpl"%>
<%@page import="com.duckG.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.row {
	flex-wrap: nowrap;
}
</style>

<%
String loginId = (String) session.getAttribute("logId");
MemberVO mvo = (MemberVO)request.getAttribute("mvo");
%>

<section class="breadcrumb-section set-bg"
	data-setbg="img/breadcrumb.jpg" style="width: 100%">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>개인 정보 수정</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Checkout Section Begin -->
<section class="update">
	<div class="container">
		<form action="updateMemberFin.do" method = "post">
			<div class="row">
				<div class="col-lg-4">
					<div class="blog__sidebar__item">
						<h4>개인 정보 수정</h4>
						<ul>
							<li><h4>나의 현황</h4></li>
							<li><a href="#">주문 내역</a></li>
							<li><hr></li>
							<li><h4>개인 정보</h4></li>
							<li><a href="#">개인 정보 수정</a></li>
							<li><a href="#">비밀 번호 수정</a></li>
							<li><a href="#">회원 탈퇴</a></li>
							<li><hr></li>
							<li><h4>고객 센터</h4></li>
							<li><a href="#">1:1 문의</a></li>
						</ul>
					</div>
				</div>


				<div class="col-md-6" id="row2">
					<div class="row" style="padding-top: 50px;">
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>ID</p>
								<input name="id" type="text" value="<%=loginId%>" readonly>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>
									이름<span>*</span>
								</p>
								<input type="text" name="name" value="<%=mvo.getMemberName()%>" readonly>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>
									휴대폰<span>*</span>
								</p>
								<input type="text" name="Phone" value="<%=mvo.getPhone()%>"> 
							</div>
						</div>
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>
									E-mail<span>*</span>
								</p>
								<input type="text" name="Email" value="<%=mvo.getEmail()%>">
							</div>
						</div>
					</div>
					<div class="checkout__input">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
						<br>
						<p>
							우편 번호<span>*</span>
						</p>
						<input type="text" name="sample4_postcode" placeholder="우편 번호" value="<%=mvo.getAddrNo()%>">
					</div>
					<div class="checkout__input">
						<p>
							도로명 주소<span>*</span>
						</p>
						<input type="text" name="add" id="sample4_roadAddress"
							placeholder="도로명 주소" class="checkout_input__add" value="<%=mvo.getAddrRoad()%>">
					</div>
					<div class="checkout__input">
						<p>
							지번 주소<span>*</span>
						</p>
						<input id="sample4_jibunAddress" placeholder="지번 주소" value="<%=mvo.getAddrLocal()%>">
					</div>
					<div class="checkout__input">
						<p>
							상세 주소<span>*</span>
						</p>
						<input id="sample4_detailAddress" placeholder="상세 주소" value="<%=mvo.getAddrDet()%>">
					</div>
					<div style="text-align: center;">
						<button type="submit" class="site-btn">수정</button>
						<button type="reset" class="site-btn"
							onclick="location.href='MyInfo.do'">취소</button>
					</div>
				</div>
			</div>

		</form>

	</div>
</section>



<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/myinfo/updateMember.js"></script>
