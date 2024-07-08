<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
		.row {
			flex-wrap: nowrap;
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
					<h4>주문 상세 내역</h4>
					<hr/>
					<table style="width: 800px;">
						<thead>
							<tr>
								<th><span class="col-sm-2">구매 일자: </span> <span class="col-sm-2" ></span></th>
								<th><span id="boughtDate" ></span></th>
								<th><span class="col-sm-2"> </span> <span class="col-sm-2" ></span></th>
								<th><span id="orderSta" ></span> </th>
							<tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan='6' id="image"><img src="" onerror="javascript:this.src='img/productDetail/no_img.gif;'" style="width: 150px;"></td>						
							</tr>
							<tr>
								<td><span class="col-sm-2">상품 이름: </span> <span class=" col-sm-2" id="orderPak"></span></td>
								<td><span id="productName"></span>
								<td></td>
								<td rowspan='6'><button type="button" class="site-btn" onclick="location.href='Inquire.do'">문의하기</button></td>
								
							</tr>
							<tr>
								<td><span class="col-sm-2">주문 번호: </span> <span class=" col-sm-2" id="orderPak"></span></td>	
								<td><span></span>					
							</tr>
							<tr>
								<td><span class="col-sm-2">갯수 및 가격 </span></td>
								<td><span id = "count"></span></td>
								<td><span id = "price"></span>
							</tr>
							
							<tr>
								<td><span class="col-sm-2">할인금액 </span> <span class=" col-sm-2" id="orderPak"></span></td>
								<td></td>
								<td><span id = "sales"></span>
							</tr>
							<tr>
								<td><span class="col-sm-2">총 금액 </span> <span class=" col-sm-2" id="orderPak"></span></td>
								<td></td>
								<td><span id="howMuch"></span></td>
							</tr>							
						</tbody>			
					</table>
					<hr/>
					<table style="float:left" width="300px">
						<thead>
							<caption>배송 정보</caption>
							<tr><th id ="memberName"></th></tr>
						</thead>
						<tbody>
							<tr><td id = "addrNo"></td></tr>
							<tr><td id = "addrRoad"></td></tr>
							<tr><td id = "addrLocal"></td></tr>
							<tr><td id = "addrDet"></td></tr>
							<tr><td id = "phone"></td></tr>
						</tbody>
					</table>

					<table style="float:right" width="300px">
						<caption>결제 정보</caption>
						<thead>
						</thead>
						<tbody>
							<tr>
								<th>결제 방식</th>
							</tr>
							<tr>
								<th>카드/현금/페이</th><td></td>
							</tr>
							<tr>
								<th> 총 결제금액</th><td id = "howMuchs"> </td>
							</tr>
							<tr>
								<th> 총 상품금액</th><td id = "prices"> </td>
							</tr>
							<tr>
								<th> 총 할인금액</th><td id = "saless"> </td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
				<div style="text-align: center;">
					<span class="col-sm-2"><button type="button" class="site-btn" onclick="location.href='MyInfo.do'">확인</button></span>
					<span class="col-sm-2"><button type="button" class="site-btn" >영수증 출력</button></span>
					
				</div>
		</div>
</section>
<script>
	const orderNo = '${orderNo}';
</script>

<script src="js/myinfo/orderDetails.js"></script>