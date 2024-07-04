<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__table">
					<table>
						<thead>
							<tr>
								<th class="shoping__product">상품명</th>
								<th>가격</th>
								<th>수량</th>
								<th>합계</th>
								<th></th>
							</tr>
						</thead>
						<tbody id="cartTbody">
						<tr style="display:none;">
							<td class="shoping__cart__item" ${cart.productNo}>
							<!-- <img src="img/productDetail/${cart.image}" width=100, height=100 alt="${cart.productName}"> -->
								<h6>${cart.productName}</h6></td>
							<td class="shoping__cart__price" data-price="${cart.price}"><fmt:formatNumber value="${cart.price}" pattern="#,###"/></td>
							<td class="shoping__cart__quantity">
								<div class="quantity">
									<div class="pro-qty">
										<input type="text" name="cnt" value="${cart.count}">
									</div>
								</div>
							</td>
							<td class="shoping__cart__total"><fmt:formatNumber value="${cart.price * cart.count}" pattern="#,###"/></td>
							<td class="shoping__cart__item__close">
							<span class="icon_close" onclick="removeCartFnc(event)"></span></td>
						</tr>
							<c:choose>
								<c:when test="${empty cartList}">
									<tr>
										<td>장바구니가 비어있습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="cart" items="${cartList}">
										<tr data-no="${cart.cartNo}">
											<td class="shoping__cart__item" ${cart.productNo}>
											<img src="img/productDetail/${cart.image}" width=100, height=100 alt="${cart.productName}">
												<h6>${cart.productName}</h6></td>
											<td class="shoping__cart__price" data-price="${cart.price}"><fmt:formatNumber value="${cart.price}" pattern="#,###"/></td>
											<td class="shoping__cart__quantity">
												<div class="quantity">
													<div class="pro-qty">
														<input type="text" name="cnt" value="${cart.count}">
													</div>
												</div>
											</td>
											<td class="shoping__cart__total"><fmt:formatNumber value="${cart.price * cart.count}" pattern="#,###"/></td>
											<td class="shoping__cart__item__close">
											<span class="icon_close" data-delicon="${cart.cartNo }" onclick="removeCartFnc(event)"></span></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__btns">
					<a href="productForm.do" class="primary-btn cart-btn">쇼핑 계속하기</a> <a
						href="cartForm.do" class="primary-btn cart-btn cart-btn-right">
						<span class="icon_loading" id="renewCartBtn"></span> 장바구니 갱신</a>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="shoping__continue"></div>
			</div>
			<div class="col-lg-6">
				<div class="shoping__checkout" >
					<h5>장바구니 합계</h5>
					<ul>
						<li>합계 <span id="cartTotal"></span></li>
					</ul>
					<a href="#" class="primary-btn">결제하기</a>
				</div>
			</div>
		</div>
	</div>
</section><!-- Shoping Cart Section End -->


<script src="js/cart/cartForm.js"></script>

