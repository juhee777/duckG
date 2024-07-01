/**
 * 
 */

 const xthp = new XMLHttpRequest();
 xthp.open('get','SelectOrder.do');
 xthp.send();
 xthp.onload = function(){
	
	let data = JSON.parse(xthp.responseText);
	
	
	data.forEach(user => {
		document.getElementById('list').appendChild(makeRow(user));
		
	})
 	
 }
 //여기까지 DB xml 확인
 const fields = ['bookcode','booktitle','author','company','price'];
 function makeRow(obj = {}){
	 
	let tr = document.createElement('tr');
	tr.setAttribute('id', obj.bookcode);
	
	tr.setAttribute('type','checkbox');
	
	fields.forEach(field => {
		let td = document.createElement('td');
		td.innerHTML = obj[field];
		tr.appendChild(td);

	})
		let td = document.createElement('td');
		let btn = document.createElement('button');
		
		btn.setAttribute('class', 'btn btn-primary');
		btn.setAttribute('data-delId', obj.bookcode);
		btn.addEventListener('click',deleteBook);
		
		
		
		btn.innerHTML = '삭제';
		td.appendChild(btn);
		tr.appendChild(td);
	return tr;	
 }
 