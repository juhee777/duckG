//장바구니 등록
function addCart(productNo){
	const addCartAjax = new XMLHttpRequest();
	let url = 'addCart.do?productNo=' + productNo + '&count=1' +'&memberId=' + logId;
	//addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}
	addCartAjax.open('get', url);
	addCartAjax.send();
	addCartAjax.onload = function(){
		let result = JSON.parse(addCartAjax.responseText)
		if(result.retCode == 'OK'){
			alert("장바구니에 추가되었습니다.")
		}else if(result.retCode == 'OKUp'){
			alert("장바구니에 추가되었습니다.")
		}else{
			alert("장바구니 추가 실패" + result.retMsg)
		}
	}
}
//이벤트
document.querySelectorAll('.cart').forEach(ele => {
ele.addEventListener('click', function(e){
	
	e.preventDefault(); //기존에 있던 링크 동작 방지
	let productNo = this.getAttribute('cart')
	console.log(this);//모달창에 들어가는 상품 tr
	
	if(logId == null || logId == ''){
		alert("로그인이 필요합니다.")
		return;
	}
	
	addCart(productNo);
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

function modalclick(e,pno){
	let myProduct = document.getElementById(pno);
	//이미지 가격 제품이름 제품번호
	let productNo = myProduct.querySelector('input[name=ppno]').value;
	let image = myProduct.querySelector('input[name=ppimg]').value;
	let productName = myProduct.querySelector('input[name=ppname]').value;
	let price = myProduct.querySelector('input[name=ppprice]').value;
	
	let modal = document.querySelector('#cartModal tbody > tr');
	console.log(modal);
	modal.querySelector('td:nth-child(1) img').src = "img/productDetail/"+image;
	modal.querySelector('td:nth-child(2)').innerHTML = productName;
	modal.querySelector('td:nth-child(3)').innerHTML = price;
	document.querySelector('#total').innerHTML = price;
	
	//modal.querySelector('input[name=ppno]').value = productNo;
	

	document.addEventListener('change', function() {
	document.getElementById('total').innerHTML = (input1.value*price);
	
	addCart(productNo);
	})
}



//로그인 확인
// document.getElementById("cart").addEventListener('click', function(){

// 	if(logId == null || logId == ''){
// 		alert("로그인이 필요합니다.")
// 		return;
// 	}
// })

	



// document.getElementById("cart").addEventListener('click', function(){
//   if(logId != ""){
//         let cnt = document.getElementById('cart');
//         fetch(`addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}`)
//     }else{
//         alert("로그인후 사용해 주세요")
//     }
// })


