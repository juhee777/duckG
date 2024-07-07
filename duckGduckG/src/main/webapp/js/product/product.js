document.addEventListener('DOMContentLoaded', function() { //페이지 로딩 시 실행되는 초기화 코드
	// 모달 창 표시 버튼 이벤트 (제품 목록의 장바구니 아이콘)
	document.querySelectorAll('.product__item__pic__hover li:last-child button').forEach(button => {
    	button.addEventListener('click', function(e) { //클릭 이벤트
        	e.preventDefault(); //버튼 기본 동작 막기
        	let productNo = this.closest('.product__item').id;
        	modalclick(e, productNo);
    	});
	});
});

function modalclick(e,pno){
	let myProduct = document.getElementById(pno);
	//이미지 가격 제품이름 제품번호(제품정보 가져오기)
	let productNo = myProduct.querySelector('input[name=ppno]').value;
	let image = myProduct.querySelector('input[name=ppimg]').value;
	let productName = myProduct.querySelector('input[name=ppname]').value;
	let price = myProduct.querySelector('input[name=ppprice]').value;
	let discount = parseFloat(myProduct.querySelector('input[name=ppdiscount]').value);
	
	//할인된 가격
	let discountedPrice;
	if (discount > 0){
		discountedPrice =  price - (price * discount / 100);
	}else{
		discountedPrice = price;
	}
	
	//모달창에 내용 설정
	let modal = document.querySelector('#cartModal tbody > tr');
	console.log(modal); //cartModal 요소 안에 있는 tbody의 직계자식인 tr
	modal.querySelector('td:nth-child(1) img').src = "img/productDetail/"+image;
	modal.querySelector('td:nth-child(2)').innerHTML = productName;
	
	let priceF = modal.querySelector('td:nth-child(3)')
	
	// 할인 여부에 따라 가격 표시 방식 변경 /toLocaleString()-천단위로 콤마
    priceF.innerHTML = `${discountedPrice.toLocaleString()}원`; 
	
	let input1 = document.getElementById('input1');
	input1.value = 1 //수량 1로 초기화

 	function updateTotal() { //총액 계산
        let total = (input1.value * discountedPrice);
        document.getElementById('total').innerHTML = total.toLocaleString();
    }
	
	//수량변경 이벤트
	updateTotal(); //총액을 초기화하고 업데이트
    input1.addEventListener('input', updateTotal);
	
	
	let modalCartBtn = document.querySelector('.btn-success'); 
    modalCartBtn.onclick = function(e) {
        e.preventDefault();
        addCart(productNo, input1.value);
    };
}
//장바구니 등록
function addCart(productNo, count){
	if(logId == null || logId == ''){
		alert("로그인이 필요합니다.")
		return;
	}
 
	fetch(`addCart.do?productNo=${productNo}&count=${count}&memberId=${logId}`)
    .then(result => result.json())
    .then(result => {
        if(result.retCode == 'OK'){
            if(confirm("해당상품이 " + count + "개 장바구니에 추가되었습니다.\n장바구니로 이동하시겠습니까?")) {
                location.href = 'cartForm.do';
            }
        } else if(result.retCode == 'OKUP'){
            if(confirm("해당상품이 " + count + "개로 변경되었습니다.\n장바구니로 이동하시겠습니까?")) {
                location.href = 'cartForm.do';
            }
        } else {
            alert("장바구니 담기 실패!");
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert("장바구니 담기 중 오류가 발생했습니다.");
    });
}
//이벤트
document.querySelectorAll('.cart').forEach(ele => {
	ele.addEventListener('click', function(e){
	
		e.preventDefault(); //기존에 있던 링크 동작 방지
		let productNo = this.getAttribute('cart')
		console.log(this);//모달창에 들어가는 상품 tr
		let count = 1; //기본수랑을 1로 설정
		addCart(productNo,count);
	})
})

//찜버튼
function addHeart(productNo){
	const addHeartAjax = new XMLHttpRequest();
	let url = 'addJjim.do?productNo=' + productNo + '&count=' + '0' +'&memberId=' + logId;
	//addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}
	addHeartAjax.open('get', url);
	addHeartAjax.send();
	addHeartAjax.onload = function(){
		let result = JSON.parse(addHeartAjax.responseText)
		if(result.retCode == 'OK'){
			alert("찜에 추가되었습니다.")
		}else if(result.retCode == 'overlap'){
			alert("찜에 이미 있습니다.")
		}else{
			alert("찜 추가 실패" + result.retMsg)
		}
	}
}

//찜 이벤트
document.querySelectorAll('.heart').forEach(item => {
	item.addEventListener('click', function(e){
		e.preventDefault();
		let productNo = this.getAttribute('heart')
		console.log(productNo)
		addHeart(productNo)
		
		if(logId == null || logId == ''){
		alert("로그인이 필요합니다.")
		return;
	}
	})
})

//장바구니 모달
//$(document).ready(function() {  
//  $('#cartModal').modal('show');
  
//});




