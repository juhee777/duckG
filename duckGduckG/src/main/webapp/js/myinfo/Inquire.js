/**
 * 
 */

 fetch('Inquireget.do?userid='+id)
	.then(result => result.json())
	.then((result => {
		console.log(result);
			
		document.querySelector('#name').value = result[0].memberId;
		document.querySelector('#email').value = result[0].email;

		
		
	}))
