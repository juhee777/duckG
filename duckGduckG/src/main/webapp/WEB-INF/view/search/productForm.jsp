<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" href="css/product/productForm.css" />
<body>
	<form action="productForm.do">
		<section class="breadcrumb-section set-bg"
			data-setbg=""></section>
		<!-- Breadcrumb Section End -->

		<div class="product-list-container">
			<div class="product-list-row">
				<c:forEach var="product" items="${products}">
					<div class="col-lg-3 col-md-4 col-sm-6">
						<div class="product__item" id=${product.productNo }>
							<input type="hidden" name="ppno" value="${product.productNo}">
							<input type="hidden" name="ppimg" value="${product.image}">
							<input type="hidden" name="ppname" value="${product.productName}">
							<input type="hidden" name="ppprice" value="${product.price}">
							 <input type="hidden" name="ppdiscount" value="${product.discount}">
							<div class="product__item__pic set-bg"
								data-setbg="img/productDetail/${product.image}">
								<ul class="product__item__pic__hover">
									<li><a href="#" class="heart"
										heart="${product.productNo }"><i class="fa fa-heart"></i></a></li>
									
									<!-- 여기 -->
									<li><button
											type="button" data-toggle="modal" data-target="#cartModal"
											style="border: 0; background-color:transparent; border-radius: 50%;">
											<a href="#"> <i class="fa fa-shopping-cart"></i></a>
										</button></li>

								</ul>
							</div>
							<div class="product__item__text">
								<h6>
									<a href="productDetailForm.do?productNo=${product.productNo }">${product.productName}</a>
								</h6>
								<h5>
									<c:choose>
										<c:when test="${product.discount > 0}">
											<span class="original-price"><fmt:formatNumber
													value="${product.price}" pattern="#,###" />원</span>
											<span class="sale-price"> <fmt:formatNumber
													value="${product.price - (product.price * product.discount / 100)}"
													pattern="#,###" />원
											</span>
										</c:when>
										<c:otherwise>
											<span><fmt:formatNumber value="${product.price}"
													pattern="#,###" />원</span>
										</c:otherwise>
									</c:choose>
								</h5>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!--page-->
		<div class="center">
			<div class="pagination">
				<c:if test="${paging.prev}">
					<a
						href="productForm.do?page${paging.startPage-1}&keyword=${search}&category=${category}">&laquo;</a>
				</c:if>
				<c:forEach var="p" begin="${paging.startPage}"
					end="${paging.endPage}">
					<a
						href="productForm.do?page=${p }&keyword=${search}&category=${category}"
						class=${p == paging.page ? 'active' : '' }> <c:out
							value="${p }" />
					</a>
				</c:forEach>
				<c:if test="${paging.next}">
					<a
						href="productForm.do?page=${paging.endPage+1}&keyword=${search}&category=${category}">&raquo;</a>
				</c:if>
			</div>
		</div>
	</form>
</body>

<!-- 모달창 -->

<div class="modal fade" id="cartModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered"
		role="document">
		<div class="modal-content">
			<div class="modal-header border-bottom-0">
				<h5 class="modal-title" id="exampleModalLabel">주문상세</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="">
					<table class="table table-image">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">제품</th>
								<th scope="col">가격</th>
								<th scope="col">개수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="w-25"><img
									src="img/productDetail/${product.image}"
									onerror="this.onerror=null; this.src='img/productDetail/no_img.jpg';"
									class="img-fluid img-thumbnail" alt="Sheep"></td>
								<td>Vans Sk8-Hi MTE Shoes</td> <!-- 제품이름 -->
								<td>1</td>
								<td class="qty"><input type="text" class="form-control"
									id="input1" value="1"></td> <!-- 갯수 넣는 폼 -->
							</tr>
						</tbody>
					</table>
					<div class="d-flex justify-content-end">
						<h5>
							총합계: <span class="price text-success" id="total">4</span><span>원</span>
						</h5>
					</div>
			</div>
			<div class="modal-footer border-top-0 d-flex justify-content-between">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				<button type="submit" class="btn btn-success" class="cart" cart="${product.productNo }">장바구니</button>
			</div>
			</form>
		</div>
	</div>
</div>
<script>
	const logId = '${logId}';
	const productNo = '${productNo}';
	const count = '${cnt}';
</script>
<script src="js/product/product.js"></script>