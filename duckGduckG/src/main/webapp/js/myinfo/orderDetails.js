/**
 * 
 */


let overlap;
fetch('AddOrder.do?orderNo=' + orderNo)//*********************가져오는 값 변경
	.then(result => result.json())
	.then((result => {
	
		document.querySelector('#boughtDate').innerHTML = result[0].boughtDate;
		const lmp = result[0].orderSta;
		

		if(lmp == 1){

			document.querySelector('#orderSta').innerHTML = "구매 확정 전";
		}else if(lmp == 2 || lmp == 3){

			document.querySelector('#orderSta').innerHTML = "구매 확정";
		}else{

			document.querySelector('#orderSta').innerHTML = "반품";
		}
		
		
		//이미지 빠짐
		document.querySelector('#orderPak').innerHTML = result[0].orderPak;
		document.querySelector('#count').innerHTML = result[0].count + '개';
		document.querySelector('#price').innerHTML = result[0].price.toLocaleString() + '원';
		document.querySelector('#sales').innerHTML = (result[0].price * result[0].sales * 0.01).toLocaleString() + '원';
		document.querySelector('#howMuch').innerHTML = result[0].howMuch.toLocaleString() + '원';
		document.querySelector('#memberName').innerHTML = result[0].memberName;
		document.querySelector('#addrNo').innerHTML = result[0].addrNo;
		document.querySelector('#addrRoad').innerHTML = result[0].addrRoad;
		document.querySelector('#addrLocal').innerHTML = result[0].addrLocal;
		document.querySelector('#phone').innerHTML = result[0].phone;
		document.querySelector('#howMuchs').innerHTML = result[0].howMuch.toLocaleString() + '원';
		document.querySelector('#prices').innerHTML = result[0].price.toLocaleString() + '원';
		document.querySelector('#saless').innerHTML = (result[0].price * result[0].sales * 0.01) + '원';


	}))
