<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.row{
    flex-wrap:nowrap;
}

</style>


 <!-- Checkout Section Begin -->
    <section class="update">
        <div class="container">
            <div class="uptae__form">
                <h4>개인 정보 수정</h4>
                <form action="#">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                    		<div class="blog__sidebar">
                        		<div class="blog__sidebar__item">
                        		    <ul>
		                            	<h4>나의 현황</h4>
		                                <li><a href="#">주문 내역</a></li>
		                                <li><a href="#">찜 리스트</a></li>
		                                <hr>
		                                <h4>개인 정보</h4>
		                                <li><a href="#">개인 정보 수정</a></li>
		                                <li><a href="#">비밀 번호 수정</a></li>
		                                <li><a href="#">회원 탈퇴</a></li>
		                                <hr>
		                                <h4>고객 센터</h4>
		                                <li><a href="#">1:1 문의</a></li>
                            	</ul>
                        	</div>
                    	</div>
                	</div>
                         <div class="col-lg-12 col-md-6">
                            <div class="row" >
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>성<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>이름<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>휴대폰<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>E-mail<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>우편 번호<span>*</span></p>
                                <input type="text" id="sample2_postcode">
                                <input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
                            </div>
                            <div class="checkout__input">
                                <p>도로명 주소<span>*</span></p>
                                <input type="text" id="sample2_address" placeholder="주소" class="checkout__input__add">
                            </div>
                            <div class="checkout__input">
                                <p>상세 주소<span>*</span></p>
                                <input id="sample2_detailAddress" type="text">
                            </div>
                            <div style="text-align: center;">
                                <button type="submit" class="site-btn">수정</button>
                   				<button type="reset" class="site-btn">취소</button>
                        	</div>
                        </div>  
                    </div>

                </form>
            </div>
        </div>
    </section>
    
    
    <script src="js/updateMember.js"></script>
   
