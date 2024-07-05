<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<section class="shoping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__table">
					<table>
						<thead>
							<tr>
								<th class="col-md-1"  style="text-align: left;">찜목록</th>
								<th class="col-md-4"></th>
								<th class="col-md-1">가격</th>
								<th class="col-md-1">개수</th>
								<th class="col-md-1">합계</th>
								<th class="col-md-2"></th>
								<th class="col-md-2"></th>
							</tr>
						</thead>
						<tbody>						
							<c:forEach var="item" items="${jjim}">
								<tr>
									<td>
									<img src="img/productDetail/${item.image}" alt="" width="70px" onerror="this.src='img/productDetail/no_img.jpg'"></td>
									<td class="shoping__cart__item"><h5>${item.productName}</h5></td>
									<td class="shoping__cart__price" price="${item.price}">${item.price} 원</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1" id="${item.productNo}" class="cntBox" pno="${item.productNo}" price="${item.price}">
											</div>
										</div>
									</td>
									<td class="shoping__cart__total" id="${item.productNo}P">${item.price} 원</td>
									<td class="shoping__cart__total"><a href="javascript:void(0);" class="primary-btn cart"  pno="${item.productNo}">장바구니</a></td>
									<td class="shoping__cart__total"><a href="javascript:void(0);"class="primary-btn jjim" jjimId=${item.productNo }>찜취소</a></td>
								</tr>
							</c:forEach>	
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>

<script>
	const logId = '${logId}';
</script>

<script defer src="js/jjim/jjim.js"></script>