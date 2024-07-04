<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Row Slide ( Category) -->
<section class="categories">
	<div class="container">
		<div class="row">
			<div class="categories__slider owl-carousel">
				<c:forEach var="category" items="${categoryList }">
					<div class="col-lg-3" style="width: 240px;">
						<div class="categories__item set-bg"
							data-setbg="img/productDetail/category/${category }.jpg"
							onerror="this.onerror=null; this.style.background-image=url('img/productDetail/no_img.jpg');">
							<h5>
								<a href="productForm.do?category=${category}">${category }</a>
							</h5>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6">
				<div class="latest-product__text">
					<h4>최신상품</h4>
					<div class="latest-product__slider owl-carousel">
						<c:forEach var="newProduct" items="${lastProductList }" varStatus="status">
							<c:if test="${status.index % 3 == 0 }">
                            <div class="latest-prdouct__slider__item">
							</c:if>
							<a href="#" class="latest-product__item">
								<div class="latest-product__item__pic">
									<img src="img/productDetail/${newProduct.image }" alt="${newProduct.productName }" onerror="this.onerror=null; this.src='img/productDetail/no_img.jpg';">
								</div>
								<div class="latest-product__item__text">
									<h6>${newProduct.productName }</h6>
									<span>${newProduct.price }</span>
								</div>
							</a>
                            <c:if test="${status.index % 3 == 2 || status.last}">
                            </div>
                            </c:if>
                        </c:forEach>
                    </div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="latest-product__text">
				<h4>특가세일</h4>
				<div class="latest-product__slider owl-carousel">
					<div class="latest-prdouct__slider__item">
						<a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-1.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-2.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-3.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a>
					</div>
					<div class="latest-prdouct__slider__item">
						<a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-1.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-2.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-3.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="latest-product__text">
				<h4>최신 리뷰</h4>
				<div class="latest-product__slider owl-carousel">
					<div class="latest-prdouct__slider__item">
						<a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-1.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-2.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-3.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a>
					</div>
					<div class="latest-prdouct__slider__item">
						<a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-1.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-2.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a> <a href="#" class="latest-product__item">
							<div class="latest-product__item__pic">
								<img src="img/latest-product/lp-3.jpg" alt="">
							</div>
							<div class="latest-product__item__text">
								<h6>Crab Pool Security</h6>
								<span>$30.00</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</section>
<!-- Latest Product Section End -->

<script src="js/main/mainPage.js"></script>