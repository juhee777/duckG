/**
 * 
 */

// 장바구니 삭제.
function removeCartFnc(e) {
	console.log(e.target);// e ==> span icon_close
	let delicon = e.target.dataset.delicon;
	let tr = e.target.parentNode.parentNode;
	console.log(tr);

	const delCart = new XMLHttpRequest();
	delCart.open('get', 'deleteCart.do?cartNo=' + delicon);
	delCart.send();
	delCart.onload = function() {
		let result = JSON.parse(delCart.responseText);
		console.log(result);
		if (result.retCode == 'OK') {
			alert('정상 삭제');
			tr.remove();
		} else {
			alert('삭제 실패')
		}
	}

}

function updateCartTotal() {
	let cartTotal = 0;
	/*
	document.querySelectorAll('input[name=cnt]').forEach(item => {
		let price = item.parentElement.parentElement.parentElement.previousElementSibling.innerHTML;
		console.log(price.split(',').join(""))
		total = Number(price.split(',').join("")) * parseInt(item.value);

		cartTotal += total;
	});
	*/
	document.querySelectorAll('.shoping__cart__total').forEach(item => {
		let price = parseInt(item.innerText.split(',').join(""));
		cartTotal += price;
	})
	document.getElementById('cartTotal').innerText = (cartTotal + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
}


//장바구니 수량조절(직접 수량값을 변경하는 경우)

document.addEventListener('DOMContentLoaded', function() {

	formInit();
	updateCartTotal();
})
//console.log(item.parentElement.firstElementChildren.previousElementSibling);
function formInit() {

	//수량값을 직접 입력해서 바꿀 때!
	document.querySelectorAll('input[name=cnt]').forEach(item => {
		item.addEventListener('change', function() {
			let cno = item.parentNode.parentNode.parentNode.parentNode.dataset.no;
			let cnt = this.value;
			let price = item.parentElement.parentElement.parentElement.previousElementSibling.innerHTML;
			let total = item.parentElement.parentElement.parentElement.nextElementSibling.innerHTML;

			console.log(cno);
			console.log(this.value);

			//가격 값이 들어있는 td, 수량값이 들어있는 td를 찾고 곱하고 합계 td에 출력
			total = (price.replace(/,/g, '') * item.value.replace(/,/g, ''));
			item.parentElement.parentElement.parentElement.nextElementSibling.innerText = (total + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

			updateCount(cno, cnt);
			updateCartTotal();
		});

	})

	//감소버튼 클릭!
	document.querySelectorAll('.dec.qtybtn').forEach(dec => {
		//inputbox(item)의 값이 변경되면 합계 td에 반영해서 출력
		dec.addEventListener('click', function(e) {
			//console.log(e.target); //e.target : dec qtybtn
			let cnt = e.target.nextElementSibling.value;//console.log(currentValue);//inputbox(수량값)
			let cno = e.target.parentElement.parentElement.parentElement.parentElement.dataset.no;

			cnt--;
			cnt = cnt < 0 ? 0 : cnt;
			let price = e.target.parentElement.parentElement.parentElement.previousElementSibling.dataset.price;
			e.target.parentElement.parentElement.parentElement.nextElementSibling.innerText = ((cnt * price) + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

			console.log(cnt);
			console.log(cno);

			updateCount(cno, cnt);
			updateCartTotal();
		});
	});  // 감소 * 가격 = 합계.


	//증가버튼 클릭!
	document.querySelectorAll('.inc.qtybtn').forEach(dec => {
		//inputbox(item)의 값이 변경되면 합계 td에 반영해서 출력
		dec.addEventListener('click', function(e) {

			let cnt = e.target.previousElementSibling.value;
			let cno = e.target.parentElement.parentElement.parentElement.parentElement.dataset.no;

			cnt++;
			let price = e.target.parentElement.parentElement.parentElement.previousElementSibling.dataset.price;
			e.target.parentElement.parentElement.parentElement.nextElementSibling.innerText = ((cnt * price) + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

			console.log(cnt);
			console.log(cno);

			updateCount(cno, cnt);
			updateCartTotal();
		});
	}); // 증가 * 가격 = 합계.

}

// 업데이트 함수!
function updateCount(cno, cnt) {
	fetch('updateCart.do?cno=' + cno + '&cnt=' + cnt)
		.then(result => result.json())
		.then(result => {
			console.log(result);

			if (result.retCode == "OK") {
				console.log("업데이트")
				//console.log(cnt);

			} else {
				console.log("업데이트 오류")
			}
		})
}