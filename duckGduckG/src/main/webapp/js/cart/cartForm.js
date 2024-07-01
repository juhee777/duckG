/**
 * 
 */
//장바구니 목록 가져오기

const xthp = new XMLHttpRequest();
xthp.open('get', 'cartForm.do?memberId=?');
xthp.send();
xthp.onload = function () {
	console.log(xthp);
	let data = JSON.parse(xthp.responseText);
	data.forEach(cart => {
		document.getElementById('cartTbody').appendChild(makeRow(cart));
	});
};

const fields = ['image', 'productName', 'mainInfo', 'memberId', 'count'];

function makeRow(cart = {}) {
	let tr = document.createElement('tr');
	tr.setAttribute('memberId', cart.memberId);

	fields.forEach(field => {
		let td = document.createElement('td');
		td.innerHTML = cart[field];
		tr.appendChild(td);
	})
	let delicon = document.getElementById('#delicon');
	delicon.setAttribute('data-delicon', cart.productName);
	delicon.addEventListener('click', removeCartFnc);
}

function removeCartFnc(e) {
	let dicon = this.dataset.delicon;
	let tr = document.getElementById(dicon);
	const delCart = new XMLHttpRequest();
	delCart.open('get', 'deleteCart.do?productName=' + dicon);
	delCart.send();
	delCart.onload = function () {
		let result = "";
	}

}



//장바구니 수량조절

//let qtBox = document.getElementById('#quantityBox').value();
let decBtn = document.getElementById('#decqtybtn');
let incBtn = document.getElementById('#incqtybtn');

//수량증가
// qtBox.addEventListener("change", function(){
// 	document.getElementById('#quantityBox').value(++qtBox);
// });

//수량감소
// decBtn.addEventListener("click", function(){
// 	document.getElementById('#decqtybtn').value(--qtBox);
// });


//장바구니 삭제


document.querySelector('input[name=cnt]').addEventListener('change', totalPrice(event));
function totalPrice() {
	console.log(e);
	// let total = "${cart.price}" * e.value;
	// console.log(total);
	// document.querySelector('.shoping__cart__total').innerHTML = total;
}

let cnt = document.querySelector('input[name=cnt]');
document.querySelector('.dec').addEventListener('click', function () {
	if (cnt.value > 0) {
		cnt.value--;
		totalPrice(event);
	}
})

document.querySelector('.inc').addEventListener('click', function () {
	if (cnt.value < 99999) {
		cnt.value++;
		totalPrice(event);
	}
})

function cartList(cart) {
	let temp = document.querySelector('#cart_temp').cloneNode(true);
	temp.style.display = "";
	temp.querySelector('.shoping__cart__item img').src = cart.image;
	temp.querySelector('#cart_P_Name').innerHTML = cart.prodcutName;
	temp.querySelector('.shoping__cart__price').innerHTML = cart.price;
	temp.querySelector('.shoping__cart__total').innerHTML = cart.price * temp.querySelector('.pro-qty input').value;
	temp.querySelector('.icon_close').setAttribute("data-id", cart.cartNo);
	
	return temp;
}