/**
 * 
 */

//장바구니 목록 갱신






// 장바구니 삭제.
function removeCartFnc(e) {
	console.log(e);// e ==> span icon_close
	let delicon = this.dataset.delicon;
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


//장바구니 수량조절(직접 수량값을 변경하는 경우)

document.addEventListener('DOMContentLoaded', function() {

	formInit();
})
//console.log(item.parentElement.firstElementChildren.previousElementSibling);
function formInit() {

	document.querySelectorAll('.dec.qtybtn').forEach(dec => {
		//inputbox(item)의 값이 변경되면 합계 td에 반영해서 출력
		dec.addEventListener('click', function(e) {

			let currentValue = e.target.nextElementSibling.value;
			currentValue--;
			currentValue = currentValue < 0 ? 0 : currentValue;
			let price = e.target.parentElement.parentElement.parentElement.previousElementSibling.dataset.price;
			e.target.parentElement.parentElement.parentElement.nextElementSibling.innerText = ((currentValue * price) + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

		});
	});  // 감소 * 가격 = 합계.

	document.querySelectorAll('.inc.qtybtn').forEach(dec => {
		//inputbox(item)의 값이 변경되면 합계 td에 반영해서 출력
		dec.addEventListener('click', function(e) {

			let currentValue = e.target.previousElementSibling.value;
			currentValue++;
			let price = e.target.parentElement.parentElement.parentElement.previousElementSibling.dataset.price;
			e.target.parentElement.parentElement.parentElement.nextElementSibling.innerText = ((currentValue * price) + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

		});
	}); // 증가 * 가격 = 합계.

	document.querySelectorAll('input[name=cnt]').forEach(item => {

		item.addEventListener('change', function(cnt) {
			fetch('updateCart.do?cno=cno&cnt='+cnt)
				.then(result => result.json())
				.then(result => {
					if(result.retCode == "OK") {
						console.log("업뎃완")
					} else {
						console.log("업뎃X")
					}
				})
			//console.log(cnt);
			let price = item.parentElement.parentElement.parentElement.previousElementSibling.innerHTML;
			let total = item.parentElement.parentElement.parentElement.nextElementSibling.innerHTML;

			//가격 값이 들어있는 td, 수량값이 들어있는 td를 찾고 곱하고 합계 td에 출력
			total = (price.replace(/,/g, '') * item.value.replace(/,/g, ''));
			item.parentElement.parentElement.parentElement.nextElementSibling.innerText = (total + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		});

	})

}

