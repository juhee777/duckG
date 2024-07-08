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
                alert("취소실패!.") ;
            }
        })
    })    
})

// 가격변경
document.querySelectorAll(".pro-qty").forEach(ele => {
    ele.addEventListener("click", changVal);
})
document.querySelectorAll(".cntBox").forEach(ele => {
    ele.addEventListener("change", changVal2);
})
function changVal(){
    let cnt = this.children[1].value;
    let price = this.children[1].getAttribute("price")
    let pno = this.children[1].getAttribute("pno")
    let id = pno+"P"
    document.getElementById(id).innerHTML = (cnt*price).toLocaleString().split(".")[0]  + " 원"
}
function changVal2(){
    let cnt = this.parentNode.children[1].value;
    let price = this.parentNode.children[1].getAttribute("price")
    let pno = this.parentNode.children[1].getAttribute("pno")
    let id = pno+"P"
    document.getElementById(id).innerHTML = (cnt*price) + " 원"
}

// 장바구니 담기
document.querySelectorAll(".primary-btn.cart").forEach(ele =>{
    ele.addEventListener('click',function(){
        if(logId != ""){
            let productNo = this.getAttribute("pno");
            let cnt = document.getElementById(productNo).value;
            fetch(`addCart.do?productNo=${productNo}&count=${cnt}`)
            .then(result => result.json())
            .then(result =>{
                if(result.retCode == 'OK'){
                    alert("해당상품이"+ cnt + "개 장바구니에 추가되었습니다") ;     
                }else if(result.retCode == 'OKUP'){
                    alert("해당상품이"+ cnt + "개로 변경되었습니다") ; 
                }else{
                    alert("장바구니 담기 실패!.") ;                
                }
            })
        }else{
            alert("로그인후 사용해 주세요")
        }
    })
})

// 상품으로 이동
document.querySelectorAll(".shoping__cart__item").forEach(ele =>{
    ele.addEventListener("click",function(){
        
    })
})