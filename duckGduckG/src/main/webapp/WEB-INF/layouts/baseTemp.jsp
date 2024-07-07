<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>DuckG</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="main.do"><img src="img/logo/logo.png" alt=""></a>
		</div>
		<div class="humberger__menu__cart">
			<c:if test="${logId != null }">
			<ul>
				<li><a href="jjimForm.do"><i class="fa fa-heart"></i> <span
						class="jjimCnt">1</span></a></li>
				<li><a href="cartForm.do"><i class="fa fa-shopping-bag"></i>
						<span class="cartCount">3</span></a></li>
			</ul>
			</c:if>
		</div>
		<div class="humberger__menu__widget">
			<c:if test="${logId != null }">
				<div class="header__top__right__language">
					<a href="MyInfo.do"><i class="fa fa-user"></i> 내정보</a>
				</div>
			</c:if>
			<div class="header__top__right__auth">
				<c:choose>
					<c:when test="${logId != null }">
						<a href="logout.do"><i class="fa fa-user"></i> 로그아웃</a>
					</c:when>
					<c:otherwise>
						<a href="loginForm.do"><i class="fa fa-user"></i> 로그인</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li><a href="/">메인페이지</a></li>
				<li><a href="productForm.do">전체 상품</a></li>
				<li><a href="#">고객센터</a>
					<ul class="header__menu__dropdown">
						<li><a href="Inquire.do">1:1 문의</a></li>
					</ul></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="header__top__right__social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-pinterest-p"></i></a>
		</div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i> alscjf2738@gmail.com</li>
			</ul>
		</div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i>alscjf2738@gmail.com</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<c:if test="${logId != null }">
								<div class="header__top__right__language">
									<a href="MyInfo.do"><i class="fa fa-user"></i> 내정보</a>
								</div>
							</c:if>
							<div class="header__top__right__auth">
								<c:choose>
									<c:when test="${logId != null }">
										<a href="logout.do"><i class="fa fa-user"></i> 로그아웃</a>
									</c:when>
									<c:otherwise>
										<a href="loginForm.do"><i class="fa fa-user"></i> 로그인</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="main.do"><img src="img/logo/logo.png" alt=""
							style="display: block; padding-left: 35px; height: 75px;"></a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu">
						<ul>
							<li><a href="/">메인페이지</a></li>
							<li><a href="productForm.do">전체 상품</a></li>
							<li><a href="#">고객센터</a>
								<ul class="header__menu__dropdown">
									<li><a href="Inquire.do">1:1 문의</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<c:if test="${logId != null }">
					<div class="header__cart">
						<ul>
							<li><a href="jjimForm.do"><i class="fa fa-heart"></i> <span
									class="jjimCnt">1</span></a></li>
							<li><a href="cartForm.do"><i class="fa fa-shopping-bag"></i>
									<span class="cartCount">3</span></a></li>
						</ul>
					</div>
					</c:if>
				</div>
			</div>
			<div class="humberger__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<tiles:insertAttribute name="search" />

	<tiles:insertAttribute name="body" />

	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="main.do"><img src="img/logo/logo.png" alt=""></a>
						</div>
						<ul>
							<li>Address: 대구 중구 중앙대로 403</li>
							<li>Phone: 010-9698-2738</li>
							<li>Email: alscjf2738@naver.com</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
					<div class="footer__widget">
						<!--<img src="../../img/footer/MOKOKOS_06_햇살반.png" alt="회사 로고">-->
					</div>
				</div>
				<div class="col-lg-4 col-md-12">
					<div class="footer__widget">
						<h6>Join Our Newsletter Now</h6>
						<p>Get E-mail updates about our latest shop and special
							offers.</p>
						<form action="#">
							<input type="text" placeholder="Enter your mail">
							<button type="submit" class="site-btn">Subscribe</button>
						</form>
						<div class="footer__widget__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="footer__copyright__payment">
							<img src="img/payment-item.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/cart/cartCount.js"></script>

</body>

</html>