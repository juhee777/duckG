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
	console.log(productNo)
	addCart(productNo);
})
})
//삭제
function dleCart(productNo){
	const dleCartAjax = new XMLHttpRequest();
	let url = 'deleteCart.do?productNo=' + productNo + '&count=1' +'&memberId=' + logId;
	dleCartAjax.open('get', url)
	dleCartAjax.send();
	dleCartAjax.onload = function(){
		let result = JSON.parse(dleCartAjax.responseText)
		if(result.retCode == 'OK'){
			alert("삭제되었습니다.")
		}else{
			alert("삭제실패" + result.retMsg)
		}
	}
}


const toggling = document.querySelectorAll('.cart');
toggling.forEach(function(btn){
	btn.addEventListener("click", function(){
		btn.classList.ftoggle('fas') // 토글 구현 시에 사용할 가상 클래스
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
			alert("장바구니에 추가되었습니다.")
		}else{
			alert("장바구니 추가 실패" + result.retMsg)
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
	})
})

//로그인 확인
document.getElementById("cart").addEventListener('click', function(){

	if(logId == null || logId == ''){
		alert("로그인이 필요합니다.")
		return;
	}
})
// const xhtp = new XMLHttpRequest();
// xhtp.open('get', 'addCart.do');
// xhtp.send();
// xhtp.onload = function(){
// 	console.log(xthp)
// 	let data = JSON.parse(xhtp.responseText);
// 	data.forEach(emp => {
// 		document.getElementById('product__item__pic__hover').appendChild(makeRow(emp))
// 	})
// }

// async function upCart(data){
// 	try{
// 		const response = await fetch("addCart.do", {
// 			method: "PUT",
// 			body: data,
// 		});
// 		const result = await response.json();
// 		console.log("성공:", result);
// 		if(result.retCode == 'OK'){
// 			let cart = document.getElementById('cart').value;
// 			alert("정상등록")
// 		}else{
// 			alert('실패')
// 		}
// 	}catch(error){
// 		conole.error("실패:", error)
// 	}
// }
	

//등록

document.getElementById("cart").addEventListener('click', function(){
  if(logId != ""){
        let cnt = document.getElementById('cart');
        fetch(`addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}`)
    }else{
        alert("로그인후 사용해 주세요")
    }
})

// fetch(`addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}`)
// .then(result => result.json())
// .then(result => {
// 	let cart = result.data;
// 	console.log(cart);
// 	return fetch('addCart.do', {
// 		method: 'post',
// 		headers: {}
// 	})
// })
// .then(result => result.json())
