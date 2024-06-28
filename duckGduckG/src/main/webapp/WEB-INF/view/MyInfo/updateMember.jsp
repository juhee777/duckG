<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.row{
    flex-wrap:nowrap;
}
#row2{
	margin-left: 50%;
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
                         <div class="col-lg-12 col-md-6" id="row2">
                            <div class="row">
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
                                <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                                <p>우편 번호<span>*</span></p>
                                <input type="text" id="sample4_postcode" placeholder="우편 번호">
                            </div>
                            <div class="checkout__input">
                                <p>도로명 주소<span>*</span></p>
                                <input type="text" id="sample4_roadAddress" placeholder="도로명 주소" class="checkout__input__add">
                            </div>
                            <div class="checkout__input">
                                <p>지번 주소<span>*</span></p>
                                <input id="sample4_jibunAddress" placeholder="지번 주소">
                            </div>
                            <span id="guide" style="color:#999;display:none"></span>
                            <div class="checkout__input">
                                <p>상세 주소<span>*</span></p>
                                <input id="sample4_detailAddress" placeholder="상세 주소">
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
    
    
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script src="js/updateMember.js"></script>
