/**
 * 
*/

//장바구니 목록 가져오기
// showList();

// function showList() {
// 	//document.getElementById('cartTbody').innerHTML = "";
// 	const xthp = new XMLHttpRequest();
// 	xthp.open('get', 'selectCart.do');
// 	xthp.send();
// 	xthp.onload = function() {
// 		let data = JSON.parse(xthp.responseText);
// 		console.log(data);
// 		if (data.retCode == "NO") {
// 			alert("로그인좀ㅋ");
		
		// 		} else {
		// 			data.forEach(cart => {
		// 				console.log(cart);
		// 				document.getElementById('cartTbody').appendChild(cartList(cart));
		// 			})
		// 		}
		// 	};
		// }


		// const fields = ['image', 'productName', 'mainInfo', 'memberId', 'count'];

		// function cartList(cart = {}) {
		// 	//let tr = document.querySelector('#cart_temp');
		// 	let tr = document.createElement('tr');
		// 	tr.setAttribute('logId', cart.memberId);

		// 	fields.forEach(field => {
		// 		let td = document.createElement('td');
		// 		td.innerHTML = cart[field];
		// 		tr.appendChild(td);
		// 	})
		// 		return tr;
		// };




		//장바구니 삭제

		 let delicon = document.getElementById('#delicon');
		// delicon.setAttribute('data-delicon', cart.productName);
		// delicon.addEventListener('click', removeCartFnc);

		function removeCartFnc(e) {
			let delicon = this.dataset.delicon;
			console.log(this);
			let tr = document.getElementById(delicon);
			// ==> temp.querySelector('.icon_close').setAttribute("data-id", cart.cartNo);에서 삭제이벤트가 발생할 cartNo를 알려줬으니까 필요없지 않을까....

			const delCart = new XMLHttpRequest();
			delCart.open('get', 'deleteCart.do?cartNo=' + cartNo);
			delCart.send();
			delCart.onload = function() {
				let result = JSON.parse(delCart.responseText);
				if (result.retCode == 'OK') {
					alert('정상적으로 삭제되었습니다!');
					showList();
				}
			}

		}


		//장바구니 수량조절

		//document.querySelector('input[name=cnt]').addEventListener('change', totalPrice());
		//==>수량inputbox의 값이 변동되면(change이벤트) totalPrice함수 실행
		function totalPrice() {
			console.log(event);
			//let total = "${cart.price}" * e.target.value;
			//console.log(total);
			//document.querySelector('.shoping__cart__total').innerHTML = total;
		}

		//document.querySelector('.dec').addEventListener('click', function() {
		//	let cnt = document.querySelector('input[name=cnt]');
		//	if (cnt.value > 0) {
		//		cnt.value--;
		//		totalPrice(event);
		//	}
		//})

		//document.querySelector('.inc').addEventListener('click', function() {
		//	let cnt = document.querySelector('input[name=cnt]');
		//	if (cnt.value < 99999) {
		//		cnt.value++;
		//		totalPrice(event);
		//	}
		//})


		//장바구니 갱신



