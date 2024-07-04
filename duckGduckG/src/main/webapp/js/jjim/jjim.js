/**
 *   jjim.js
 */
document.querySelectorAll(".primary-btn.jjim").forEach(ele => {
    ele.addEventListener("click",function(){
        let id = this.getAttribute("jjimid");
        fetch(`deleteJjim.do?productNo=${id}`)
        .then(result => result.json())
        .then(result =>{
            if(result.retCod == 'OK'){
                alert("취소되었습니다.") ;     
                this.parentNode.parentNode.innerHTML = "";
            }else{
                alert("삭제실패!.") ;
            }
        })
    })    
})