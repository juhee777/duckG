/**
 * 
 */
let overlap;
fetch('SelectOrder.do?userid=user01')
	.then(result => result.json())
	.then((result => {
		console.log(result);
		let temp = "";
		result.forEach(center => {
			if (temp == center.orderPak) {
				overlap = 1;
				cloneRow(center);
			} else {
				temp = center.orderPak;
				overlap = 0;
				cloneRow(center);
			}
		})

	}))

// 1. 구매 확정 , 반품하기 2. 리뷰쓰기,재 구매 
function cloneRow(order = {}) {
	let number = order.orderSta;
	let li = document.querySelector('.clonelist').cloneNode(true);

	if (overlap == 0) {
		li.querySelector('#line').innerHTML = "<hr />";
	}else {
		li.querySelector('#line').innerHTML = "<br />";
	}
		
		
		li.querySelector('.clonelist>img').setAttribute('src', `img/${order.image}`);
		li.querySelector('#orderPak').innerHTML = order.orderPak;
		li.querySelector('#boughtDate').innerHTML = order.boughtDate;
		li.querySelector('#productName').innerHTML = order.productName;
		li.querySelector('#howMuch').innerHTML = order.howMuch;


		switch (number) {

			case 1: // 기본
				li.querySelector('#btw1').innerHTML = "구매 확정";
				li.querySelector('#btw1').setAttribute("onclick", "location.href='UpdateOrder.do?num=2&orderNo=" + order.orderNo+"'");

				li.querySelector('#btw2').innerHTML = "반품 신청";
				li.querySelector('#btw1').setAttribute("onclick", "location.href='UpdateOrder.do?num=4&orderNo=" + order.orderNo+"'");

				li.querySelector('#btw3').setAttribute("style", "display: none;");
				break;
			case 2: //구매확정 ,리뷰전
	
				li.querySelector('#btw1').innerHTML = "리뷰 쓰기";

				li.querySelector('#btw2').innerHTML = "재구매";

				li.querySelector('#btw3').innerHTML = "상세 내역";
				break;
			case 3: //구매확정,리뷰완료

				li.querySelector('#btw1').innerHTML = "상세 내역";
				
				li.querySelector('#btw2').innerHTML = "재구매";

				li.querySelector('#btw3').setAttribute("style", "display: none;");
				
			case 4: //반품신청

				li.querySelector('#btw1').innerHTML = "반품 현황";

				li.querySelector('#btw2').innerHTML = "재구매";

				li.querySelector('#btw3').setAttribute("style", "display: none;");
			
				break;
		
	}

	li.style.display = ""
	document.querySelector('#list').appendChild(li);



}




let page = 1;
svc.replyList({ bno, page }, replyListFnc);

// 페이징 a 태그를 클릭하면 목록 보여주기.
document.querySelectorAll('div.pagination a').forEach(item => {
	item.addEventListener('click', function(e) {
		e.preventDefault(); //페이지 이동의 기능을 차단 후 실행하겠습니다.
		
		
		page = item.innerHTML; 
	})
});


//댓글 건수를 활용해서 페이징 계산하고 목록 출력.
function makePagingFnc() {
	svc.replyTotalCnt(bno, createPagingList);

}
////////////////////////////////////
let pagination = document.querySelector('div.pagination');

function createPagingList() {
	let totalCnt = this.responseText;//총 댓글 갯수
	console.log(totalCnt);//632건 /5 => 127page
	let startPage, endPage;
	let prev, next;
	let realEnd = Math.ceil(totalCnt / 5); //127페이지

	endPage = Math.ceil(page / 10) * 10; //10page
	startPage = endPage - 9;
	endPage = endPage > realEnd ? realEnd : endPage;

	prev = startPage > 1;
	next = endPage < realEnd;

	//startPage, end Page,prev,next => a태그 생성.
	pagination.innerHTML = '';

	if (prev) {//이전페이지
		let aTag = document.createElement('a');
		aTag.setAttribute('data-page',startPage-1);
		aTag.setAttribute('href', '#');
		aTag.innerHTML = "&laquo;";
		pagination.appendChild(aTag);
	}
	for (let p = startPage; p <= endPage; p++) {
		let aTag = document.createElement('a');
		aTag.setAttribute('data-page',p);
		aTag.setAttribute('href', '#');
		aTag.innerHTML = p;
		if (page == p) {
			aTag.className = 'active';
		}
		pagination.appendChild(aTag);
	}

	if (next) {//이전페이지
		let aTag = document.createElement('a');
		aTag.setAttribute('data-page',endPage+1);
		aTag.setAttribute('href', '#');
		aTag.innerHTML = "&raquo;";
		pagination.appendChild(aTag);
	}


	document.querySelectorAll('div.pagination a').forEach(item => {
		item.addEventListener('click', function(e) {
			e.preventDefault(); //페이지 이동의 기능을 차단 후 실행하겠습니다.
			page = item.dataset.page;
			svc.replyList({ bno, page }, replyListFnc);
		})
	});

}



