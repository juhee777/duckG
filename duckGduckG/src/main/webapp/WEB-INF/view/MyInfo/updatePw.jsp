<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.row{
    flex-wrap:nowrap;
}
#row2{
	margin-left: 100%;
}
</style>


 <!-- Checkout Section Begin -->
    <section class="update">
        <div class="container">
            <div class="uptae__form">
                <h4>개인 정보 수정</h4>
                <form action="#">
                    <div class="row">
                        <div class="col-md-5">
                    		<div class="blog__sidebar">
                        		<div class="blog__sidebar__item">
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
                	</div>
                         <div class="col-lg-12 col-md-6" id="row2">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>현재 비밀번호<span>*</span></p>
                                        <input type="password">
                                    </div>
                                </div>
                            </div>
                              <div class="row">
                                 <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>비밀번호<span>*</span></p>
                                        <input type="password">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                 <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>비밀번호 확인<span>*</span></p>
                                        <input type="password">
                                    </div>
                                </div>
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
    
 
