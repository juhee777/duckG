/**
 * 
 */

fetch('SelectOrder.do?userid=user01')
.then(result=>result.json())
.then((result=>{
	console.log(result);
	result.forEach(center =>{
		cloneRow(center);
	})
	
}))
// 1. 구매 확정 , 반품하기 2. 리뷰쓰기,재 구매 3. 판품현황
function cloneRow(reply = {}) {
	let li = document.querySelector('.clonelist').cloneNode(true); 
	li.querySelector('.li>img').setAttribute('src','img/${')
	
/*	li.style.display = 'block';
	li.setAttribute('id', reply.replyNo);
	li.querySelector('span:nth-of-type(1)').innerHTML = reply.replyNo;
	li.querySelector('span:nth-of-type(2)').innerHTML = reply.reply;
	li.querySelector('span:nth-of-type(3)').innerHTML = reply.replyer;
	li.querySelector('span:nth-of-type(4)').innerHTML = reply.replyDate;*/

	return li;
}
