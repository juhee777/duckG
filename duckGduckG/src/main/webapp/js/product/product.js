//장바구니 버튼
const xhtp = new XMLHttpRequest();
xhtp.open('get', 'addCart.do');
xhtp.send();
xhtp.onload = function(){
	let data = JSON.parse(xhtp.responseText);
	data.forEach(emp => {
		document.getElementById('product__item__pic__hover').appendChild(makeRow(emp))
	})
}
//등록
document.getElementById('cart').addEventListener('click', function(){
	
})

