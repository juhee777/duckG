<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Hero Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="product__details__pic">
					<div class="product__details__pic__item">
						<img class="product__details__pic__item--large"
							src="img/product/details/product-details-1.jpg" alt="" id="image" onerror="this.src='img/productDetail/no_img.jpg'">
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<h3 id="productName">상품명</h3>
					<div class="product__details__rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
					</div>
					<div class="product__details__price" id="price">10,000&#8361</div>
					<p id="semiInfo">제품 설명.</p>
					<div class="product__details__quantity">
						<div class="quantity">
							<div class="pro-qty"  >
								<input type="text" id="cnt" value="1"  >
							</div>
						</div>
					</div>
						<table style=" width:300px; height: 70px">
							<tr>
								<td ><h3 style="margin: 0">합계</h3></td>
								<td ><h3 id="priceBox" style="margin: 0">10,000&#8361</h3></td>
							</tr>
						</table>
					<br> <a href="javascript:void(0);" class="primary-btn" id="addCart">장바구니</a> <a href="javascript:void(0);"
						class="primary-btn">바로구매</a> <a href="javascript:void(0)" id="jjim" class="heart-icon" style="text-decoration: none;"><span
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
								<h6>Products Infomation</h6>
								<p id="mainInfo">Vestibulum ac diam sit amet quam vehicula
									elementum sed sit amet dui. Pellentesque in ipsum id orci porta
									dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget
									felis porttitor volutpat. Vestibulum ac diam sit amet quam
									vehicula elementum sed sit amet dui. Donec rutrum congue leo
									eget malesuada. Vivamus suscipit tortor eget felis porttitor
									volutpat. Curabitur arcu erat, accumsan id imperdiet et,
									porttitor at sem. Praesent sapien massa, convallis a
									pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet
									quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum
									primis in faucibus orci luctus et ultrices posuere cubilia
									Curae; Donec velit neque, auctor sit amet aliquam vel,
									ullamcorper sit amet ligula. Proin eget tortor risus.</p>
								<p>Praesent sapien massa, convallis a pellentesque nec,
									egestas non nisi. Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Mauris blandit aliquet elit, eget tincidunt
									nibh pulvinar a. Cras ultricies ligula sed magna dictum porta.
									Cras ultricies ligula sed magna dictum porta. Sed porttitor
									lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh
									pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum
									sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam
									sit amet quam vehicula elementum sed sit amet dui. Proin eget
									tortor risus.</p>
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
													<td class="col-md-7"><textarea id="ModalqnaAnswer" rows="3" cols="45" style="border: none"></textarea></td>
												</tr>	
											</table>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">닫기</button>
												<button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="QAnswer">답변등록</button>
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
								</div>
								<!-- table -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
<script defer src="js/product/productDetail.js"></script>