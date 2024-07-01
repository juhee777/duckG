<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>장바구니 폼</h3>

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
								<tr id="cart_temp" style="display: none;">
									<td class="shoping__cart__item"><img src=""
										alt="이미지">
										<h5 id="cart_P_Name"></h5></td>
									<td class="shoping__cart__price"></td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<span class="dec qtybtn">-</span>
												<input type="text" value="1" name="cnt">
												<span class="inc qtybtn">+</span>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total"></td>
									<td class="shoping__cart__item__close">
									<span class="icon_close" onclick="removeCartFnc(event)"></span></td>
								</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__btns">
					<a href="#" class="primary-btn cart-btn">쇼핑 계속하기</a> <a href="#"
						class="primary-btn cart-btn cart-btn-right"><span
						class="icon_loading"></span> 장바구니 갱신</a>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="shoping__continue">
					<div class="shoping__discount">
						<h5>할인 코드</h5>
						<form action="#">
							<input type="text" placeholder="Enter your coupon code">
							<button type="submit" class="site-btn">쿠폰 적용</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="shoping__checkout">
					<h5>장바구니 합계</h5>
					<ul>
						<li>합계 <span>$454.98</span></li>
					</ul>
					<a href="#" class="primary-btn">결제하기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shoping Cart Section End -->

<script src="js/cart/cartForm.js" />

