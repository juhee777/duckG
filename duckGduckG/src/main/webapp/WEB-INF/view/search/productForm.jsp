<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
.product__item__text h6 a {
    color: #333;
    text-decoration: none;
}
.product__item__text h5 {
    color: #7fad39;
    font-weight: bold;
}
.product-list-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 15px;
}
.product-list-row {
    display: flex;
    flex-wrap: wrap;
    margin: 0 -15px;
}
.original-price {
    font-size: 0.8em;
    color: #888;
    text-decoration: line-through;
    margin-right: 5px;
}
.sale-price {
    color: #dd2222;
}

/* 페이지 */
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

.pagination a:hover:not(.active) {background-color: #ddd;}

/*모달창*/


</style>
<body>
    <form action="productForm.do">
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
            
        </section>
        <!-- Breadcrumb Section End -->
        
        <div class="product-list-container">
            <div class="product-list-row">
                <c:forEach var="product" items="${products}">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/productDetail/${product.image}">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#" class="heart" heart="${product.productNo }"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#" class="cart" cart="${product.productNo }"><i class="fa fa-shopping-cart"></i></a></li>
                                    <!-- 모달창 -->
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Launch modal</button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
                          </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="productDetailForm.do?productNo=${product.productNo }">${product.productName}</a></h6>
                                <h5>
                                  <c:choose>
                                    <c:when test="${product.discount > 0}">
                                        <span class="original-price"><fmt:formatNumber value="${product.price}" pattern="#,###" />원</span>
                                        <span class="sale-price">
                                           <fmt:formatNumber value="${product.price - (product.price * product.discount / 100)}" pattern="#,###" />원
                                        </span>
                                    </c:when>
                                    <c:otherwise>
                                        <span><fmt:formatNumber value="${product.price}" pattern="#,###" />원</span>
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
                    <a href="productForm.do?page${paging.startPage-1}&keyword=${search}&category=${category}">&laquo;</a>
                </c:if>
                <c:forEach var="p" begin="${paging.startPage}" end="${paging.endPage}">
                    <a href="productForm.do?page=${p }&keyword=${search}&category=${category}" class=${p == paging.page ? 'active' : '' }>
                       <c:out value="${p }" />
                    </a>
                </c:forEach>
                <c:if test="${paging.next}">
                    <a href="productForm.do?page=${paging.endPage+1}&keyword=${search}&category=${category}">&raquo;</a>
                </c:if>
            </div>
        </div>
    </form>
</body>
<script>
	const logId = '${logId}';
	const productNo = '${productNo}';
	const count = '${cnt}';
</script>
<script src="js/product/product.js"></script>