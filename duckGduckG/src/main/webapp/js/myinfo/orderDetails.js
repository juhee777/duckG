/**
 * 
 */
let orderNo = '1'; 


let overlap;
fetch('AddOrder.do?orderNo=1')//*********************가져오는 값 변경
	.then(result => result.json())
	.then((result => {
		console.log(result);

	}))
