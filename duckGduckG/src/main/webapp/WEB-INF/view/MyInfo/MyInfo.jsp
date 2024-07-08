<%@page import="com.duckG.vo.OrderVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<style>
		.row {
			flex-wrap: nowrap;
		}
		
		
	html {
  box-sizing: border-box;
}
*,
*::before,
*::after {
  box-sizing: inherit;
}
body,td,th,p{
	color: #333;
  font: 16px/1.6 Arial, Helvetica, sans-serif;
}
body {
	background-color: #fdfdfd;
	margin: 0;
	position:relative;
}
h2 {
  display: inline-block;
}
#review-add-btn {
  padding: 0;
  font-size: 1.6em;
  cursor: pointer;
}
/* ====================== Review Form ====================== */
#modal {
  /* position: absolute;
  left: 10vh;
  top: 10vh; */
  /* fix exactly center: https://css-tricks.com/considerations-styling-modal/ */
  /* begin css tricks */
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  /* end css tricks */
  /* z-index: -10; */
  z-index: 3;
  display: flex;
  flex-direction: column;
  /* width: 80vw; */
  /* height: 80vh; */
  border: 1px solid #666;
  border-radius: 10px;
  opacity: 0;
  transition: all .3s;
  overflow: hidden;
  background-color: #eee;
  /* visibility: hidden; */
  display: none;
}
#modal.show {
  /* visibility: visible;   */
  opacity: 1;
  /* z-index: 10; */
  display: flex;
}
.modal-overlay {
  width: 100%;
  height: 100%;
  z-index: 2; /* places the modalOverlay between the main page and the modal dialog */
  background-color: #000;
  opacity: 0;
  transition: all .3s;
  position: fixed;
  top: 0;
  left: 0;
  display: none;
  margin: 0;
  padding: 0;
}
.modal-overlay.show {
  display: block;
  opacity: 0.5;  
}
#modal .close-btn {
  align-self: flex-end;
  font-size: 1.4em;
  margin: 8px 8px 0;
  padding: 0 8px;
  cursor: pointer;
}
form {
  max-width: 900px;
  padding: 0 20px 20px 20px;
}
/* 
input,
label {
  display: block;
  width: 100%;
}

label {
  font-weight: bold;
  margin-bottom: 5px;
} */

input,
/* input:not(input[type='radio']), */
/* input:not(type='radio'), */
select, .rate, textarea, button {
  background: #f9f9f9;
  border: 1px solid #e5e5e5;
  border-radius: 8px;
  box-shadow: inset 0 1px 1px #e1e1e1;
  font-size: 16px;
  padding: 8px;
}
input[type="radio"] {
  box-shadow: none;
}
button {
  min-width: 48px;
  min-height: 48px;
}
button:hover {
  border: 1px solid #ccc;
  background-color: #fff;
}
button#review-add-btn, 
button.close-btn, 
button#submit-review-btn {
  min-height: 40px;
}
button#submit-review-btn {
  font-weight: bold;
  cursor: pointer;
  padding: 0 16px;
}

.fieldset {
  margin-top: 20px;
}
.right {
  align-self: flex-end;
}
#review-form-container {
  width: 100%;
  /* background-color: #eee; */
  padding: 0 20px 26px;
  color: #333;
  overflow-y: auto;
}
#review-form-container h2 {
  margin: 0 0 0 6px;
}
#review-form {
  display: flex;
  flex-direction: column;
  background: #fff;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
}
#review-form label, #review-form input {
  display: block;
  /* width: 100%; */
}
#review-form label {
  font-weight: bold;
  margin-bottom: 5px;
}

#review-form .rate label, #review-form .rate input,
#review-form .rate1 label, #review-form .rate1 input {
  display: inline-block;
}
/* Modified from: https://codepen.io/tammykimkim/pen/yegZRw */
.rate {
  /* float: left; */
  /* display: inline-block; */
  height: 36px;
  display: inline-flex;
  flex-direction: row-reverse;
  align-items: flex-start;
  justify-content: flex-end;
}
#review-form .rate > label {
  margin-bottom: 0;
  margin-top: -5px;
  height: 30px;
}
.rate:not(:checked) > input {
  /* position: absolute; */
  top: -9999px;
  margin-left: -24px;
  width: 20px;
  padding-right: 14px;
  z-index: -10;
}
.rate:not(:checked) > label {
  float:right;
  width:1em;
  overflow:hidden;
  white-space:nowrap;
  cursor:pointer;
  font-size:30px;
  color:#ccc;
}
/* #star1:focus{

} */
.rate2 {
  float: none;
}
.rate:not(:checked) > label::before {
  content: '★ ';
  position: relative;
  top: -10px;
  left: 2px;
}
.rate > input:checked ~ label {
  color: #ffc700;
  /* outline: -webkit-focus-ring-color auto 5px; */
}
.rate > input:checked:focus + label, .rate > input:focus + label {
  outline: -webkit-focus-ring-color auto 5px;
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
  color: #deb217;
  /* outline: -webkit-focus-ring-color auto 5px; */
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
  color: #c59b08;
}
#submit-review {
  align-self: flex-end;
}	

.active{
	background: #7fad39;
	border-color: #7fad39;
}

</style>


	<!-- Blog Section Begin -->
<!-- 	<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg" style="width: 100%">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>내 페이지</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
 -->


	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="blog__sidebar__item">
						<h3>내 페이지</h3>
						<br/>
						<ul>
							<li><h4>나의 현황</h4></li>
							<li><a href="MyInfo.do">주문 내역</a></li>
							<li><hr></li>
							<li><h4>개인 정보</h4></li>
							<li><a href="updateMember.do">개인 정보 수정</a></li>
							<li><a href="ChangePw.do">비밀 번호 수정</a></li>
							<li><a href="deleteMember.do">회원 탈퇴</a></li>
							<li><hr></li>
						</ul>
					</div>
				</div>
				<div>
					<h3>주문 내역</h3>
					<h2 id="orderzero" style="display: none; text-align: center; padding-top: 100px; width: 500px;">구매 내역이 없습니다.</h2>
					<ul style="width: 800px" id="listli">

						<li class="clonelist" id="listid" style="display: none; list-style-type: none;">
							<div id="line"></div>
							<img src="" onerror="javascript:this.src='img/productDetail/no_img.jpg;'" style="width: 150px; float: left;">
							<div style=" padding-bottom: 20px;">
								<span class="col-sm-2" style="font-size: x-large; font-weight: bold;">주문 번호: </span> <span style="font-size: large; font-weight: bold;" class=" col-sm-2" id="orderPak"></span>
								<span class="col-sm-2">구매 일자: </span> <span class="col-sm-2" id="boughtDate"></span>
								<br>
							</div>
							<div style="padding-bottom: 20px; text-align: right;">
								<span class="col-sm-2">금액: </span> <span class="col-sm-2" id="howMuch"></span><span>원</span>
								<br>
							</div>
							<div style="padding-bottom: 20px;">
								<span class="col-sm-2" id="productName"></span>
								<br>
							</div>
							<div style="text-align: center;" id="btn">
								<span class="col-sm-2"><button class="site-btn" id="btw1"></button></span>
								<span class="col-sm-2"><button class="site-btn" id="btw2"></button></span>
								<span class="col-sm-2"><button class="site-btn" id="btw3"></button></span>
								<span class="col-sm-2"><button class="site-btn" id="btw0" aria-label="add review" title="Add Review"></button></span>

							</div>
						</li>
						<li style="list-style-type: none;">
							<div id="list"></div>
						</li>
					</ul>

				</div>
			</div>
			<br>
			<br>
		</div>

        
	
	<div class="col-lg-12">
		<span  id="clonepage" style="display: none;">
			<a class="pagelists">1</a> 
		</span>
			<!-- <a href="#"><i class="fa fa-long-arrow-right"></i></a> -->
	</div>
	<div style="text-align: center;" >
		<span><a href="" class="pagelists" id="first">&laquo;</a></span>
		<span id="pagelist" class="product__pagination blog__pagination" >
		
		</span>
		<span><a href=""class="pagelists" id="end">&raquo;</a></span>
	</div>
</section>


  
  






<div id="modal" role="dialog" aria-modal="true" aria-labelledby="add-review-header" class="">
  <button class="close-btn" aria-label="close" title="Close">x</button>
  <div id="review-form-container">
    <h2 id="add-review-header">리뷰 작성</h2>
    <form action="AddReview.do" id="review-form" method = "post" enctype="multipart/form-data">
      <div class="fieldset">
        <label for="reviewName">주문번호</label>
        <input name="reviewName" id="reviewName" readonly>
      </div>
      <div class="fieldset">
        <label for="username">구매자</label>
        <input name="username" id="username" readonly>
      </div>
      <div class="fieldset">
        <label for="prono">제품번호</label>
        <input name="prono" id="prono" readonly>
      </div>
      <div class="fieldset">
        <label for="image">파일</label>
        <input  class="form-control" type="file" name="upimage" id="images" readonly>
      </div>
      
      <div class="fieldset">
        <label>평점</label>
        <div class="rate">
          <input type="radio" id="star5" name="rate" value="5" onkeydown="navRadioGroup(event)" onfocus="setFocus(event)" required="">
          <label for="star5" title="5 stars">5 stars</label>
          <input type="radio" id="star4" name="rate" value="4" onkeydown="navRadioGroup(event)">
          <label for="star4" title="4 stars">4 stars</label>
          <input type="radio" id="star3" name="rate" value="3" onkeydown="navRadioGroup(event)">
          <label for="star3" title="3 stars">3 stars</label>
          <input type="radio" id="star2" name="rate" value="2" onkeydown="navRadioGroup(event)">
          <label for="star2" title="2 stars">2 stars</label>
          <input type="radio" id="star1" name="https://codepen.io/pen/rate" value="1" onkeydown="navRadioGroup(event)" onfocus="setFocus(event)">
          <label for="star1" title="1 star">1 star</label>
        </div>
      </div>

      <div class="fieldset">
        <label for="reviewComments">내용</label>
        <textarea name="reviewComments" id="reviewComments" cols="20" rows="5" required=""></textarea>
      </div>
      <div class="fieldset right">
        <button type="submit" id="submit-review-btn">저장</button>
      </div>
    </form>
  </div>
</div>
<div class="modal-overlay"></div>
<script>
	const id = '${loginId}';
</script>
<script src="js/myinfo/orderlist.js"></script>