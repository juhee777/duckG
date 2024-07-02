<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!-- Hero Section Begin -->
<section class="hero">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="hero__categories">
					<div class="hero__categories__all">
						<i class="fa fa-bars"></i> <span>All departments</span>
					</div>
					<ul style="display: none;">
						<li><a href="productForm.do?category=스킨케어">스킨케어</a></li>
						<li><a href="productForm.do?category=마스크팩">마스크팩</a></li>
						<li><a href="productForm.do?category=클랜징">클랜징</a></li>
						<li><a href="productForm.do?category=선케어">선케어</a></li>
						<li><a href="productForm.do?category=메이크업">메이크업</a></li>
						<li><a href="productForm.do?category=헤어케어">헤어케어</a></li>
						<li><a href="productForm.do?category=바디케어">바디케어</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="hero__search">
					<div class="hero__search__form">
						<form action="productForm.do">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <c:choose>
                                  <c:when test="${!empty search }">
                                  <input type="text" name="keyword" placeholder="검색어: ${search}">
                                  </c:when>
                                  <c:when test="${!empty category }">
                                  <input type="text" name="keyword" placeholder="카테고리: ${category}">
                                  </c:when>
                                  <c:otherwise>
                                  <input type="text" name="keyword" placeholder="What do yo u need?">
                                  </c:otherwise>
                                </c:choose>
                                <button type="submit" class="site-btn" onclick="search()">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>010-9698-2738</h5>
                                <span>팀장 번호임</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- Hero Section End -->

