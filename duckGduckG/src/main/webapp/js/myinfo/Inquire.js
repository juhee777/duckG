/**
 * 
 */

 fetch('Inquireget.do?userid='+id)
	.then(result => result.json())
	.then((result => {
			
		document.querySelector('#name').value = result[0].memberId;
		document.querySelector('#email').value = result[0].email;
		
	}))


document.getElementById("submits").addEventListener('click',function(){
	
	setTimeout(function(){
		location.href="MyInfo.do";
	},100)
});

	