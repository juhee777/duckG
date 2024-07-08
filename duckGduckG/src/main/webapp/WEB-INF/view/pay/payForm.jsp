<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>결제 목록</h4>
				<form id="payForm" action="pay.do" method="post" onsubmit="return payForm()">
					<input type="hidden" name="id" value="${logId}">
					<div class="row">
						<div class="col-lg-7 col-md-6">
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											이름<span>*</span>
										</p>
										<input type="text" name="memberName" value="${mvo.memberName}" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4">
									<div class="checkout__input">
										<p>
											우편번호<span>*</span>
										</p>
										<input type="text" name="addrNo" value="${mvo.addrNo = null ? '' : mvo.addrNo}" required readonly>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8">
									<div class="checkout__input">
										<p>
											주소<span>*</span>
										</p>
										<input type="text" placeholder="도로명주소" name="addrRoad" value="${mvo.addrRoad = null ? '' : mvo.addrRoad}" class="checkout__input__add" required readonly>
										<input type="text" placeholder="지번주소" name="addrLocal" value="${mvo.addrLocal = null ? '' : mvo.addrLocal}" class="checkout__input__add" required readonly>
										<input type="text" placeholder="상세주소" name="addrDet" value="${mvo.addrDet = null ? '' : mvo.addrDet}" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											전화번호<span>*</span>
										</p>
										<input type="text" name="phone" value="${mvo.phone = null ? '' : mvo.phone}" placeholder="ex) 010-1111-2222"  required>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											이메일<span>*</span>
										</p>
										<input type="text" name="email" value="${mvo.email = null ? '' : mvo.email}" placeholder="ex) duckG1234@naver.com"  required>
									</div>
								</div>
							</div>
							<div class="checkout__input">
								<p>
									배송 메모<span>*</span>
								</p>
								<input type="text"
									placeholder="Notes about your order, e.g. special notes for delivery.">
							</div>
						</div>
						<div class="col-lg-5 col-md-6">
							<div id="orderList" class="checkout__order">
								<h4>주문 목록</h4>
								<div class="checkout__order__products">
									상품 <span>종합</span>
								</div>
								<ul>
									<c:forEach var="cart" items="${cvo }">
									<li>${cart.productName } <span>${cart.price * cart.count } 원</span></li>
									</c:forEach>
								</ul>
								<div class="checkout__order__subtotal">
									할인된 가격 <span><fmt:formatNumber pattern="#,###" value="${disPrice = disPrice == '' ? '0' : disPrice }"/>원</span>
								</div>
								<div id="totalPrice" class="checkout__order__total">
									총합 <span></span>
								</div>
								<div class="checkout__input__checkbox">
									<label for="acc-or"> Create an account? <input type="checkbox" id="acc-or"> <span
											class="checkmark"></span>
									</label>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do
									eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="checkout__input__checkbox">
									<label for="payment"> Check Payment <input type="checkbox" id="payment"> <span
											class="checkmark"></span>
									</label>
								</div>
								<div class="checkout__input__checkbox">
									<label for="paypal"> Paypal <input type="checkbox" id="paypal"> <span
											class="checkmark"></span>
									</label>
								</div>
								<button type="submit" class="site-btn">주문하기</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->

	<script src="js/pay/payForm.js"></script>