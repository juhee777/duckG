<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
		.row {
			flex-wrap: nowrap;
		}
		
		tr,td,th {
			border: 1px solid gray;
		}

		caption {
			caption-side: top;
		}
</style>

<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="blog__sidebar__item">
						<h4>개인 정보 수정</h4>
						<ul>
							<li><h4>나의 현황</h4></li>
							<li><a href="MyInfo.do">주문 내역</a></li>
							<li><hr></li>
							<li><h4>개인 정보</h4></li>
							<li><a href="updateMember.do">개인 정보 수정</a></li>
							<li><a href="ChangePw.do">비밀 번호 수정</a></li>
							<li><a href="#">회원 탈퇴</a></li>
							<li><hr></li>
							<li><h4>고객 센터</h4></li>
							<li><a href="Inquire.do">1:1 문의</a></li>
						</ul>
					</div>
				</div>
				
				<div>
					<h4>주문 상세 내역</h4>
					<hr/>
					<table style="border: 1px solid gray; width: 800px;">
						<thead>
							<tr>
								<th><span class="col-sm-2">구매 일자: </span> <span class="col-sm-2" ></span></th>
								<th><span id="boughtDate" ></span>2024/07/04</th>
								<th><span class="col-sm-2">현재 상황: </span> <span class="col-sm-2" ></span></th>
								<th><span id="boughtDate" ></span> 반품 완료</th>
							<tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan='6'><img src="" onerror="javascript:this.src='img/zeroimage.jpg;'" style="width: 150px;"></td>						
							</tr>
							<tr>
								<td><span class="col-sm-2">상품 이름: </span> <span class=" col-sm-2" id="orderPak"></span></td>
								<td><span>어짼든 상품</span>
								<td></td>
								<td rowspan='6'> 문의하기</td>
							</tr>
							<tr>
								<td><span class="col-sm-2">주문 번호: </span> <span class=" col-sm-2" id="orderPak"></span></td>	
								<td><span>어짜구 저짜꾸</span>					
							</tr>
							<tr>
								<td><span class="col-sm-2">판매가 </span></span></td>
								<td><span>갯수</span></td>
								<td><span>돈</span>
							</tr>
							
							<tr>
								<td><span class="col-sm-2">할인금액 </span> <span class=" col-sm-2" id="orderPak"></span></td>
								<td></td>
								<td><span>돈돈</span>
							</tr>
							<tr>
								<td><span class="col-sm-2">총 금액 </span> <span class=" col-sm-2" id="orderPak"></span></td>
								<td></td>
								<td><span>돈+돈돈</span></td>
							</tr>							
						</tbody>			
					</table>
					<hr/>
					<table style="float:left">
						<thead>
							<caption>배송 정보</caption>
							<tr><th>이름</th></tr>
						</thead>
						<tbody>
							<tr><td>12345</td></tr>
							<tr><td>대구광역시 중구 중앙대로 403 (남일동 135-1)</td></tr>
							<tr><td>5층</td></tr>
							<tr><td>053-421-2460</td></tr>
						</tbody>
					</table>

					<table style="float:right">
						<caption>결제 정보</caption>
						<thead>
						</thead>
						<tbody>
							<tr>
								<th>결제 방식</th>
							</tr>
							<tr>
								<th>카드/현금/페이</th><td>금액임</td>
							</tr>
							<tr>
								<th> 총 결제금액</th><td> 금액</td>
							</tr>
							<tr>
								<th> 총 상품금액</th><td> 금액</td>
							</tr>
							<tr>
								<th> 총 할인금액</th><td> 금액</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
				<div style="text-align: center;">
					<span class="col-sm-2"><button class="site-btn" id="btw1">확인</button></span>
					<span class="col-sm-2"><button class="site-btn" id="btw2">영수증 출력</button></span>
				</div>
		</div>
</section>

<script src="js/myinfo/orderDetails.js"></script>