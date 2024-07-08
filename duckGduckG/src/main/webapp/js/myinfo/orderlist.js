/**
 * 
 */
// ***************************************아이디값 가져오기



let Allcountpage;

//모달
let focusedElementBeforeModal;
const modal = document.getElementById('modal');
const modalOverlay = document.querySelector('.modal-overlay');

let param = new URLSearchParams(window.location.search);
let page= param.get('page');




let overlap;
fetch('SelectOrder.do?userid='+id)//*********************가져오는 값 변경
	.then(result => result.json())
	.then((result => {
		
		if(param.size == 0){
			page = 1;
		};
			
		if(result.length == 0){
			orderzero.style.display = ""
		}
		
		
		
		if(result.length<10){  //구매가 10보다 작을때

			Allcountpage = result.length;
			prooder = result.orderNo;
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
		
		}else{ //구매가 10보다 클때
			let afterliset = page * 10;
			let Beforeliset = afterliset - 9;
			
			//페이지 출력
			for(let i = Beforeliset-1; i<=afterliset-1; i++){
				
				Allcountpage = result.length;
				prooder = result.orderNo;
				let temp = "";
			
				if (temp == result.orderPak) { //물건 같이 구매하면 출력
					overlap = 1;
					cloneRow(result[i]);		
				} else { 
		
					if(page == (Math.floor(result.length/10)+1)){ //마지막 페이지 출력
							
						afterliset = result.length;
						temp = result.orderPak;
						overlap = 0;
						cloneRow(result[i]);
						
					}else{ // 일반 10개 출력
						temp = result.orderPak;
						overlap = 0;
						cloneRow(result[i]);
					}
					
					
					
			}
				
			}
			
		}
		
		//번호 출력하기
		let pagecount = 0;
		
		if(Math.floor(result.length/10) > 10){
			
			if(result.length % 10 == 0){
				pagecount=Math.ceil(page/10)*10;
				for(let i = pagecount-9; i<pagecount; i++){	
	
					clonepage(i);

				}	
				
				
			}else{
				pagecount=Math.ceil(page/10)*10;
				for(let i = pagecount-9; i<=pagecount; i++){	
					
					clonepage(i);
				}
				
			}		
		}else{

			if(result.length % 10 == 0){

				pagecount = Math.ceil(result.length/10);
				for(let i = 1; i<=pagecount; i++){
					clonepage(i)
				}	
			}else{

				pagecount = Math.ceil(result.length/10);		
				for(let i = 1; i<=pagecount; i++){		
					
					console.log(pagecount)	
					clonepage(i)
				}	
			}
		}
		

		
		
		
		
		
		
		
		
		
		
		
		

	}))
function clonepage(i){
	let list = document.querySelector('#clonepage').cloneNode(true);
	
	list.querySelector('.pagelists').innerHTML = i;
	list.setAttribute('id', i);
	
	
	list.querySelector('.pagelists').setAttribute('href', 'MyInfo.do?page='+i);
	
	list.style.display = ""
	
	if(page == i){
		list.querySelector('.pagelists').setAttribute('class', 'pagelists active');
		document.querySelector('#first').setAttribute('href', 'MyInfo.do?page='+(i-1));
		document.querySelector('#end').setAttribute('href', 'MyInfo.do?page='+(i+1));
	}
	document.querySelector('#pagelist').appendChild(list);
	

}



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
				li.querySelector('#btw2').setAttribute("onclick", "location.href='UpdateOrder.do?num=4&orderNo=" + order.orderNo+"'");

				li.querySelector('#btw3').setAttribute("style", "display: none;");
				
				li.querySelector('#btw0').setAttribute("style", "display: none;");
				
				break;
			case 2: //구매확정 ,리뷰전
				li.querySelector('#btw1').setAttribute("style", "display: none;");
				
				li.querySelector('#btw2').innerHTML = "재구매";

				li.querySelector('#btw3').innerHTML = "상세 내역";
				li.querySelector('#btw3').setAttribute("onclick", "location.href='OrderForm.do?orderNo=" + order.orderNo+"'");

				//주문 번호
				li.querySelector('#btw0').addEventListener('click', function(){
					reviewName.setAttribute('value', order.orderNo);
					username.setAttribute('value', order.memberId);
					prono.setAttribute('value', order.productNo);
					openModal()
				});
				li.querySelector('#btw0').innerHTML = "리뷰 쓰기";
				
				break;
			case 3: //구매확정,리뷰완료

				li.querySelector('#btw1').innerHTML = "상세 내역";
				li.querySelector('#btw1').setAttribute("onclick", "location.href='OrderForm.do?orderNo=" + order.orderNo+"'");
				
				li.querySelector('#btw2').innerHTML = "재구매";

				li.querySelector('#btw3').setAttribute("style", "display: none;");
				
				li.querySelector('#btw0').setAttribute("style", "display: none;");
				break;
			case 4: //반품신청

				li.querySelector('#btw1').innerHTML = "반품 현황";

				li.querySelector('#btw2').innerHTML = "재구매";

				li.querySelector('#btw3').setAttribute("style", "display: none;");
				
				li.querySelector('#btw0').setAttribute("style", "display: none;");
				break;
		
	}

	li.style.display = ""
	document.querySelector('#list').appendChild(li);



}
































//여기서 부터 모달
const openModal = () => {
	

  // Save current focus
	focusedElementBeforeModal = document.activeElement;
  
 

  // Listen for and trap the keyboard
  modal.addEventListener('keydown', trapTabKey);

  // Listen for indicators to close the modal
  modalOverlay.addEventListener('click', closeModal);
  // Close btn
  const closeBtn = document.querySelector('.close-btn');
  closeBtn.addEventListener('click', closeModal);

  // submit form
  //const form = document.getElementById('review-form');
  //form.addEventListener('submit', submitAddReview, false);

  // Find all focusable children
  var focusableElementsString = 'a[href], area[href], input:not([disabled]), select:not([disabled]), textarea:not([disabled]), button:not([disabled]), iframe, object, embed, [tabindex="0"], [contenteditable]';
  var focusableElements = modal.querySelectorAll(focusableElementsString);
  // Convert NodeList to Array
  focusableElements = Array.prototype.slice.call(focusableElements);

  var firstTabStop = focusableElements[0];
  var lastTabStop = focusableElements[focusableElements.length - 1];

  // Show the modal and overlay
  modal.classList.add('show');
  modalOverlay.classList.add('show');

  // Focus first child
  // firstTabStop.focus();
  const reviewName = document.getElementById('reviewName');
  
  
  
  
  
  
  reviewName.focus();
  


  function trapTabKey(e) {
    // Check for TAB key press
    if (e.keyCode === 9) {

      // SHIFT + TAB
      if (e.shiftKey) {
        if (document.activeElement === firstTabStop) {
          e.preventDefault();
          lastTabStop.focus();
        }

      // TAB
      } else {
        if (document.activeElement === lastTabStop) {
          e.preventDefault();
          firstTabStop.focus();
        }
      }
    }

    // ESCAPE
    if (e.keyCode === 27) {
      closeModal();
    }
  }
};
/*
const submitAddReview = (e) => {
  // console.log(e);
  e.preventDefault();
  closeModal();
};
*/
const closeModal = () => {

				
  // Hide the modal and overlay
  modal.classList.remove('show');
  modalOverlay.classList.remove('show');

  const form = document.getElementById('review-form');
  form.reset();
  // Set focus back to element that had it before the modal was opened
  
 
  focusedElementBeforeModal.focus();
  
    
};

const setFocus = (evt) => {
  const rateRadios = document.getElementsByName('rate');
  const rateRadiosArr = Array.from(rateRadios);
  const anyChecked = rateRadiosArr.some(radio => { return radio.checked === true; });
  // console.log('anyChecked', anyChecked);
  if (!anyChecked) {
    const star1 = document.getElementById('star1');
    star1.focus();
    // star1.checked = true;
  }
};

const navRadioGroup = (evt) => {
  // console.log('key', evt.key, 'code', evt.code, 'which', evt.which);
  // console.log(evt);
  
  const star1 = document.getElementById('star1');  
  const star2 = document.getElementById('star2');  
  const star3 = document.getElementById('star3');  
  const star4 = document.getElementById('star4');  
  const star5 = document.getElementById('star5');  

  if (['ArrowRight', 'ArrowLeft', 'ArrowDown', 'ArrowUp'].includes(evt.key)) {
    evt.preventDefault();
    // console.log('attempting return');
    if (evt.key === 'ArrowRight' || evt.key === 'ArrowDown') {
      switch(evt.target.id) {
        case 'star1':
          star2.focus();
          star2.checked = true;
          break;
        case 'star2':
          star3.focus();
          star3.checked = true;
          break;
        case 'star3':
          star4.focus();
          star4.checked = true;
          break;
        case 'star4':
          star5.focus();
          star5.checked = true;
          break;
        case 'star5':
          star1.focus();
          star1.checked = true;
          break;
      }
    } else if (evt.key === 'ArrowLeft' || evt.key === 'ArrowUp') {
      switch(evt.target.id) {
        case 'star1':
          star5.focus();
          star5.checked = true;
          break;
        case 'star2':
          star1.focus();
          star1.checked = true;
          break;
        case 'star3':
          star2.focus();
          star2.checked = true;
          break;
        case 'star4':
          star3.focus();
          star3.checked = true;
          break;
        case 'star5':
          star4.focus();
          star4.checked = true;
          break;
      }
    }
  }
};
