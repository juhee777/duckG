/**
 * 
 */
//장바구니 목록 가져오기

const xthp = new XMLHttpRequest();
xthp.open('get', 'selectCart.do');
xthp.send();
xthp.onload = function() {
	console.log(xthp);
	let data = JSON.parse(xthp.responseText);
	data.forEach(cart => {
		document.getElementById('list').appendChild(makeRow(cart));
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
	});
}

//장바구니 수량조절

let qtBox = document.getElementById('#quantityBox').value();
let decBtn = document.getElementById('#decqtybtn');
let incBtn = document.getElementById('#incqtybtn');

//수량증가
incBtn.addEventListener("click", function(){
	document.getElementById('#quantityBox').value(++qtBox);
});

//수량감소
decBtn.addEventListener("click", function(){
	document.getElementById('#decqtybtn').value(--qtBox);
});


