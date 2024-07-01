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
							src="img/product/details/product-details-1.jpg" alt="" id="image">
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
							<div class="pro-qty">
								<input type="text" value="1">
							</div>
						</div>
					</div>
					<br>
					<a href="#" class="primary-btn">장바구니</a> <a href="#"
						class="primary-btn">바로구매</a> <a href="#" class="heart-icon"><span
						class="icon_heart_alt"></span></a>
					<ul>
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
							href="#tabs-3" role="tab" aria-selected="false">리뷰 <span>(1)</span></a>
						</li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-2" role="tab" aria-selected="false">Q&A</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc">
								<h6>Products Infomation</h6>
								<p id="mainInfo">Vestibulum ac diam sit amet quam vehicula elementum sed
									sit amet dui. Pellentesque in ipsum id orci porta dapibus.
									Proin eget tortor risus. Vivamus suscipit tortor eget felis
									porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
									elementum sed sit amet dui. Donec rutrum congue leo eget
									malesuada. Vivamus suscipit tortor eget felis porttitor
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
											<th style="display: inline-block; width: 100px;" >글번호</th>
											<th>제목</th>
											<th>내용</th>
											<th>답변</th>	
											<th> 삭제 </th>
										</tr>
									</thead>
									<tbody id="qna">

									</tbody>									
								</table>
							</div>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<div class="product__details__tab__desc">
								
								<h6>Products Infomation</h6>
								<p>Vestibulum ac diam sit amet quam vehicula elementum sed
									sit amet dui. Pellentesque in ipsum id orci porta dapibus.
									Proin eget tortor risus. Vivamus suscipit tortor eget felis
									porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
									elementum sed sit amet dui. Donec rutrum congue leo eget
									malesuada. Vivamus suscipit tortor eget felis porttitor
									volutpat. Curabitur arcu erat, accumsan id imperdiet et,
									porttitor at sem. Praesent sapien massa, convallis a
									pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet
									quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum
									primis in faucibus orci luctus et ultrices posuere cubilia
									Curae; Donec velit neque, auctor sit amet aliquam vel,
									ullamcorper sit amet ligula. Proin eget tortor risus.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product Details Section End -->

<script src="js/product/productDetail.js"></script>