/**
 * 
 */

 fetch('Inquireget.do?userid='+id)
	.then(result => result.json())
	.then((result => {
			
		document.querySelector('#name').value = result[0].memberId;
		if(undefined==result[0].email){
			document.querySelector('#email').value = "";
		}else{
			document.querySelector('#email').value = result[0].email;			
		}
		
	}))


document.getElementById("submits").addEventListener('click',function(){
	
	setTimeout(function(){
		location.href="main.do";
	},100)
});

	