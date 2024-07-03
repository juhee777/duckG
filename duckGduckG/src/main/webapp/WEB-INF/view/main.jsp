<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- Row Slide ( Category) -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                	<c:forEach var="category" items="${categoryList }">
	                    <div class="col-lg-3" style="width: 240px;">
	                        <div class="categories__item set-bg" data-setbg="img/productDetail/category/${category }.jpg">
	                            <h5><a href="#">${category }</a></h5>
	                        </div>
	                    </div>
                	</c:forEach>
                </div>
            </div>
        </div>
    </section>

    <script src="js/main/mainPage.js"></script>