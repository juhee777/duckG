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

// 가격변경
document.querySelector(".pro-qty").addEventListener("click", changVal);
document.getElementById("cnt").addEventListener("change", changVal);
function changVal(){
    let cnt = document.getElementById("cnt").value; 
    let price = document.querySelector(".shoping__cart__price").getAttribute("price")
    document.getElementById("price").innerHTML = (cnt*price) + " 원"
}

// 장바구니 담기
document.getElementById("addCart").addEventListener('click',function(){
    if(logId != ""){
        let cnt = document.getElementById('cnt').value;
        fetch(`addCart.do?productNo=${productNo}&count=${cnt}&memberId=${logId}`)
    }else{
        alert("로그인후 사용해 주세요")
    }
})