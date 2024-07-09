<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
/* PC TOP 버튼 */
#scrollTopPc {
	display: none;
	position: fixed;
	bottom: 64px; /* 브라우저 아래쪽 끝에서부터의 거리 */
	right: 15px; /* 브라우저 오른쪽 끝에서부터의 거리 */
	cursor: pointer;
	z-index: 99;
}

/* PC DOWN 버튼 */
#scrollDownPc {
	display: none;
	position: fixed;
	bottom: 20px; /* 브라우저 아래쪽 끝에서부터의 거리 */
	right: 15px; /* 브라우저 오른쪽 끝에서부터의 거리 */
	cursor: pointer;
	z-index: 99;
}

.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
<!-- Hero Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="product__details__pic">
					<div class="product__details__pic__item">
						<img class="product__details__pic__item--large"
							src="img/product/details/product-details-1.jpg" alt="" id="image"
							onerror="this.src='img/productDetail/no_img.gif'">
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<h3 id="productName">상품명</h3>
					<div class="product__details__rating">
						<span id="stars"></span> <span id="reciews">(18 reviews)</span>
					</div>
					<div class="product__details__price" id="price"
						style="color: black; text-decoration-line: line-through; font-weight: normal; margin: 0;">10,000&#8361</div>
					<div class="product__details__price" id="priceA">10,000&#8361</div>
					<p id="semiInfo">제품 설명.</p>
					<div class="product__details__quantity">
						<div class="quantity">
							<div class="pro-qty">
								<input type="text" id="cnt" value="1">
							</div>
						</div>
					</div>
					<table style="width: 300px; height: 70px">
						<tr>
							<td><h3 style="margin: 0">합계</h3></td>
							<td><h3 id="priceBox" style="margin: 0">10,000&#8361</h3></td>
						</tr>
					</table>
					<br> <a href="javascript:void(0);" class="primary-btn"
						id="addCart">장바구니</a> <a href="javascript:void(0);"
						class="primary-btn" id="Buy">바로구매</a> <a href="javascript:void(0)"
						id="jjim" class="heart-icon" style="text-decoration: none;"><span
						class="icon_heart_alt" id="jjimIcon" style="color: pink;"></span></a>
					<ul style="margin: 0; padding-left: 0;">
						<li><b>판매자</b> <span id="memberId">0.5 kg</span></li>
						<li><b>상품등록일</b> <span id="createDate">In Stock</span></li>
						<li><b>상품재고</b> <span id="stock">01 day shipping. <samp>Free
									pickup today</samp></span></li>
						<li><b>판매량</b> <span id="sales">0.5 kg</span></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">상품설명</a>
						</li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-3" role="tab" aria-selected="false">리뷰 <span
								id="reviewCnt">(1)</span></a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-2" role="tab" aria-selected="false">Q&A</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc">
								
							</div>
						</div>
						<div class="tab-pane" id="tabs-2" role="tabpanel">
							<div class="product__details__tab__desc">
								<table class="table table-hover" id="qnaTbl">
									<thead>
										<tr>
											<th class="col-md-1">작성자</th>
											<th class="col-md-2">제목</th>
											<th class="col-md-6">내용</th>
											<th class="col-md-2">답변상태</th>
											<th class="col-md-1">삭제</th>
										</tr>
									</thead>
									<tbody id="qna">

									</tbody>
								</table>

								<!-- Vertically centered modal -->

								<!-- Modal -->
								<div class="modal fade " id="staticBackdrop"
									data-bs-backdrop="static" data-bs-keyboard="false"
									tabindex="-1" aria-labelledby="staticBackdropLabel"
									aria-hidden="true">
									<div class="modal-dialog ">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="staticBackdropLabel">QnA상세</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">

												<table style="height: 500px;">
													<tr>
														<th class="col-md-5">제목</th>
														<td id="ModalqnaTitle" class="col-md-7">QnA제목</td>
													</tr>
													<tr>
														<th class="col-md-5">User</th>
														<td id="ModalmemberId" class="col-md-7">작성자</td>
													</tr>
													<tr>
														<th class="col-md-5">내용</th>
														<td id="ModalqnaContent" class="col-md-7">QnA내용</td>
													</tr>
													<tr>
														<th class="col-md-5">답변</th>
														<td class="col-md-7"><textarea id="ModalqnaAnswer"
																rows="3" cols="45" style="border: none"></textarea></td>
													</tr>
												</table>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">닫기</button>
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal" id="QAnswer">답변등록</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<div class="product__details__tab__desc">

								<!-- table -->
								<div class="shoping__cart__table">
									<table>
										<thead>
											<tr>
												<th>상품리뷰</th>
												<th class="shoping__product"></th>
												<th>작성자</th>
												<th>별점</th>
												<th>작성시간</th>
											</tr>
										</thead>
										<tbody id="reviews">
											<tr style="display: none;">
												<td><img src="img/cart/cart-1.jpg" alt=""
													id="reviewImage"></td>
												<td class="shoping__cart__item">
													<h5 id="reviewContent">Vegetable’s Package</h5>
												</td>
												<td id="memberId">$55.00</td>
												<td id="reviewScore"></td>
												<td id="createDate">$110.00</td>
											</tr>
										</tbody>
									</table>

									<!-- table -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- PC TOP 버튼 HTML -->
		<div onclick="topFunction()" id="scrollTopPc"
			class="hidden-md hidden-sm hidden-xs">
			<img src="img/btn/btn_top.png" width="50px" height="50px">
		</div>

		<!-- PC DOWN 버튼 HTML -->
		<div onclick="downFunction()" id="scrollDownPc"
			class="hidden-md hidden-sm hidden-xs">
			<img src="img/btn/btn_bottom.png" width="50px" height="50px">
		</div>
</section>
<!-- Product Details Section End -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script>
	const logId = '${logId}'
</script>
<script>
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 100
				|| document.documentElement.scrollTop > 100) {
			document.getElementById("scrollTopPc").style.display = "block";
			document.getElementById("scrollTopMob").style.display = "block";
			document.getElementById("scrollDownPc").style.display = "block";
			document.getElementById("scrollDownMob").style.display = "block";
		} else {
			document.getElementById("scrollTopPc").style.display = "none";
			document.getElementById("scrollTopMob").style.display = "none";
			document.getElementById("scrollDownPc").style.display = "none";
			document.getElementById("scrollDownMob").style.display = "none";
		}
	}

	// PC TOP 버튼 동작
	function topFunction() {
		$('html,body').animate({
			scrollTop : 0
		}, 50);
	}

	// PC DOWN 버튼 동작
	function downFunction() {
		$('html, body').animate({
			scrollTop : $('#doz_footer').offset().top
		}, 50);
	}
</script>
<script defer src="js/product/productDetail.js"></script>