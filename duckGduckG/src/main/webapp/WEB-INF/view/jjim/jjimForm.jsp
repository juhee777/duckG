<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
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
									<img src="img/productDetail/${item.image}" alt="" width="70px" onerror="this.src='img/productDetail/no_img.gif'"></td>
									<td class="shoping__cart__item" onClick="location.href='productDetailForm.do?productNo=${item.productNo}'"><h5>${item.productName}</h5></td>
									<td class="shoping__cart__price" price="${item.price}">
									
									<c:if test="${item.discount == 0}">
										<span class="sale-price"><fmt:formatNumber value="${item.price}" pattern="#,###" /> 원</span>
									</c:if>									
									<c:if test="${item.discount != 0}">
										<span class="original-price" style="text-decoration-line:line-through; font-weight:normal;"> <fmt:formatNumber value="${item.price}" pattern="#,###" /> 원</span>
										<span class="sale-price"> <fmt:formatNumber value="${item.price - item.price * item.discount / 100}" pattern="#,###" /> 원</span>										
									</c:if>									
									</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1" id="${item.productNo}" class="cntBox" pno="${item.productNo}" price="${item.price - item.price * item.discount / 100}">
											</div>
										</div>
									</td>
									<td class="shoping__cart__total" id="${item.productNo}P">
									<c:if test="${item.discount == 0}">
										<span class="sale-price"><fmt:formatNumber value="${item.price}" pattern="#,###" /> 원</span>
									</c:if>									
									<c:if test="${item.discount != 0}">
										<span class="sale-price"> <fmt:formatNumber value="${item.price - item.price * item.discount / 100}" pattern="#,###" /> 원</span>										
									</c:if>	
									</td>
									<td class="shoping__cart__total"><a href="javascript:void(0);" class="primary-btn cart"  pno="${item.productNo}" jjimId=${item.productNo }>장바구니</a></td>
									<td class="shoping__cart__total"><a href="javascript:void(0);"class="primary-btn jjim" jjimId=${item.productNo }>찜취소</a></td>
								</tr>
							</c:forEach>	
						</tbody>
					</table>
					<!-- paging -->
					<div class="center">
						<div class="pagination">					
					
							<c:if test="${paging.prev }">
								<a href="jjimForm.do?page=${paging.startPage -1}}">&laquo;</a>
							</c:if>
					
					
							<c:forEach var="p" begin="${paging.startPage }" end="${paging.endPage }" step="1">
								<a href="jjimForm.do?page=${p }" class="${p == paging.page ? 'active' : ''}">${p }</a>
							</c:forEach>
					
							<c:if test="${paging.next }">
								<a href="jjimForm.do?page=${paging.endPage +1}">&raquo;</a>
							</c:if>
					
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</section>

<script>
	const logId = '${logId}';
</script>

<script defer src="js/jjim/jjim.js"></script>