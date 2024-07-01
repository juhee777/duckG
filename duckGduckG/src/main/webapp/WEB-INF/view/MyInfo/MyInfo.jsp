<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.row {
	flex-wrap: nowrap;
}
</style>
<%

%>

<!-- Blog Section Begin -->
<section class="breadcrumb-section set-bg"
	data-setbg="img/breadcrumb.jpg" style="width: 100%">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>내 페이지</h2>
				</div>
			</div>
		</div>
	</div>
</section>



<section class="blog spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
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
			<div id = "list">
			
				<div>
				<ul style="width: 100%">
					<h3>구매내역</h3>
					<li><hr /></li>
<!-- 					<li style="display: none"> -->
					<li>
					    <img src="img/001.jpg" alt="모코코" style="width: 120px; float: left;">
						<div style="font-size: large; font-weight: bold;">
							<span class="col-sm-2">주문 번호: </span> <span class="col-sm-2">123-456789</span>
						</div>
						<div>
							<span class="col-sm-2">구매 일자: </span> <span class="col-sm-2">2024.06.30</span>
						</div>
						<div style="font-size: large; float: left;">
							<span class="col-sm-2">상품이름예정</span> <span class="col-sm-2"></span>
						</div>
						<div style="text-align: center; float: left;">
							<span class="col-sm-2"><button class="btn btn-danger" onclick="deleteRow(event)">구매 완료</button></span> 
							<span class="col-sm-2"><button class="btn btn-danger" onclick="deleteRow(event)">반품 신청</button></span>
						</div>
					</li>
				</ul>
				</div>					

			</div>
		</div>
	</div>
</section>



			


<script src="js/myinfo/review.js"></script>
<!-- 
<script src="js/reviewService.js"></script>
<script src="js/review.js"></script>
 -->