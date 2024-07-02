<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<style>
		.row {
			flex-wrap: nowrap;
		}
		

	</style>


	<!-- Blog Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg" style="width: 100%">
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
				
				<div>
					<h3>주문 내역</h3>
					<ul style="width: 800px" id="listli">

						<li class="clonelist" id="listid" style="display: none; list-style-type: none;">
							<div id="line"></div>
							<img src="" onerror="javascript:this.src='img/zeroimage.jpg;'" style="width: 150px; float: left;">
							<div style=" padding-bottom: 20px;">
								<span class="col-sm-2" style="font-size: x-large; font-weight: bold;">주문 번호: </span> <span style="font-size: large; font-weight: bold;" class=" col-sm-2" id="orderPak"></span>
								<span class="col-sm-2">구매 일자: </span> <span class="col-sm-2" id="boughtDate"></span>
								<br>
							</div>
							<div style="padding-bottom: 20px; text-align: right;">
								<span class="col-sm-2">금액: </span> <span class="col-sm-2" id="howMuch"></span><span>원</span>
								<br>
							</div>
							<div style="padding-bottom: 20px;">
								<span class="col-sm-2" id="productName"></span>
								<br>
							</div>
							<div style="text-align: center;" id="btn">
								<span class="col-sm-2"><button class="site-btn" id="btw1"></button></span>
								<span class="col-sm-2"><button class="site-btn" id="btw2"></button></span>
								<span class="col-sm-2"><button class="site-btn" id="btw3"></button></span>

							</div>
						</li>
						<li style="list-style-type: none;">
							<div id="list"></div>
						</li>
					</ul>

				</div>
			</div>
			<br>
			<br>
		</div>
	<div class="col-lg-12" style="text-align: center;">
		<div class="product__pagination blog__pagination">
			<a href="#">1</a> 
			<a href="#">2</a> 
			<a href="#">3</a> 
			<a href="#">
			<i class="fa fa-long-arrow-right"></i>
			</a>
		</div>
	</div>
</section>






	<script src="js/myinfo/orderlist.js"></script>