/**
 * 
 */
//장바구니 목록 가져오기
showList();

function showList() {
	const xthp = new XMLHttpRequest();
	xthp.open('get', 'cartForm.do');
	xthp.send();
	xthp.onload = function() {
		console.log(xthp);
		let data = JSON.parse(xthp.responseText);
		data.forEach(cart => {
			document.getElementById('cartTbody').appendChild(makeRow(cart));
		});
	};

}

const fields = ['image', 'productName', 'mainInfo', 'memberId', 'count'];

function makeRow(cart = {}) {
	let tr = cartList(cart);
	tr.setAttribute('memberId', cart.memberId);

	fields.forEach(field => {
		let td = document.createElement('td');
		td.innerHTML = cart[field];
		tr.appendChild(td);
	})
	return tr;
};

function cartList(cart) {
	let temp = document.querySelector('#cart_temp').cloneNode(true); //true: 깊은복제(자식노드까지 복사!)
	temp.style.display = ""; //원본 노드의 style : none ==> 초기화!!
	temp.querySelector('.shoping__cart__item img').src = cart.image;
	temp.querySelector('#cart_P_Name').innerHTML = cart.productName;
	temp.querySelector('.shoping__cart__price').innerHTML = cart.price;
	temp.querySelector('.shoping__cart__total').innerHTML = cart.price * temp.querySelector('.pro-qty input').value;
	//상품의 개당 가격 * 현재 수량inputbox의 값
	temp.querySelector('.icon_close').setAttribute("data-id", cart.cartNo);
	//삭제 아이콘class에 cartNo 속성을 부여 ==> onclick 이벤트 발생했을 때 해당 cartNo만 삭제가능
	return temp;
}


//장바구니 삭제

// let delicon = document.getElementById('#delicon');
// delicon.setAttribute('data-delicon', cart.productName);
// delicon.addEventListener('click', removeCartFnc);

function removeCartFnc(e) {
	let id = this.dataset.id;
	//let tr = document.getElementById(delicon);
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

document.querySelector('input[name=cnt]').addEventListener('change', totalPrice(event));
//==>수량inputbox의 값이 변동되면(change이벤트) totalPrice함수 실행

function totalPrice() {
	console.log(e);
	// let total = "${cart.price}" * e.value;
	// console.log(total);
	// document.querySelector('.shoping__cart__total').innerHTML = total;
}

let cnt = document.querySelector('input[name=cnt]').value;

document.querySelector('.dec').addEventListener('click', function() {
	if (cnt.value > 0) {
		cnt.value--;
		totalPrice(event);
	}
})

document.querySelector('.inc').addEventListener('click', function() {
	if (cnt.value < 99999) {
		cnt.value++;
		totalPrice(event);
	}
})
