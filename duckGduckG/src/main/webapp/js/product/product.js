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
		
		if(logId == null || logId == ''){
		alert("로그인이 필요합니다.")
		return;
	}
	})
})



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


