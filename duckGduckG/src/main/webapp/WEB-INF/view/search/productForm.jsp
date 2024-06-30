<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

</style>
<body>
    <form action="productForm.do">
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>${search}</h2>
                            <div class="breadcrumb__option">
                                <a href="./main.do">Home</a> <span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->
        
        <div class="product-list-container">
            <div class="product-list-row">
                <c:forEach var="product" items="${products}">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${product.image}">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${product.productName}</a></h6>
                                <h5>
                                  <c:choose>
                                    <c:when test="${product.discount > 0}">
                                        <span class="original-price">${product.price}원</span>
                                        <span class="sale-price">
                                           <script>
                                                document.write(parseInt(${product.price - (product.price * product.discount / 100)})+"원");
                                            </script>
                                        </span>
                                    </c:when>
                                    <c:otherwise>
                                        ${product.price}원
                                    </c:otherwise>
                                </c:choose>
                            </h5>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </form>
</body>