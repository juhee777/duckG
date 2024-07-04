//장바구니 
const xhtp = new XMLHttpRequest();
xhtp.open('get', 'addCart.do');
xhtp.send();
xhtp.onload = function(){
	console.log(xthp)
	let data = JSON.parse(xhtp.responseText);
	data.forEach(emp => {
		document.getElementById('product__item__pic__hover').appendChild(makeRow(emp))
	})
}

async function upCart(data){
	try{
		const response = await fetch("addCart.do", {
			method: "PUT",
			body: data,
		});
		const result = await response.json();
		console.log("성공:", result);
		if(result.retCode == 'OK'){
			let cart = document.getElementById('cart').value;
			alert("정상등록")
		}else{
			alert('실패')
		}
	}catch(error){
		conole.error("실패:", error)
	}
}
	

//등록

// document.getElementById("cart").addEventListener('click', function(){
//   if(logId != ""){
//         let cnt = document.getElementById('cnt').value;
//         fetch(`addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}`)
//     }else{
//         alert("로그인후 사용해 주세요")
//     }
// })

fetch(`addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}`)
.then(result => result.json())
.then(result => {
	let cart = result.data;
	console.log(cart);
	return fetch('addCart.do', {
		method: 'post',
		headers: {}
	})
})
.then(result => result.json())

