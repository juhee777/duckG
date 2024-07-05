/**
 * 
 */

cartCount();

//장바구니 아이콘 숫자 변경

const cartCountText = document.querySelectorAll('.cartCount'); 
//아이콘의 숫자배지가 갈 자리

function cartCount() {
	fetch('IconCount.do' )
		.then(result => result.json())
		.then(result => {
			console.log(result.count);
			cartCountText.forEach(span => {
				span.innerHTML = result.count;
			})
		})
	

}