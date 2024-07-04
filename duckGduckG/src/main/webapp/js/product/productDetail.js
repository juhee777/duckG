/**
 *  productDetail.js
 */

let query = window.location.search;
let param = new URLSearchParams(query);
let productNo = param.get('productNo');


// 제품상세

fetch(`selectProduct.do?productNo=${productNo}`)
.then(result => result.json())
.then(result => {
    result.forEach(element => {   
        let products = ['productName','createDate','stock','mainInfo','semiInfo','sales','memberId'];    
        products.forEach(ele => {
            document.getElementById(ele).innerHTML = (element[ele]);
        })
        document.getElementById('price').innerHTML = (element['price']) + " 원";
        document.getElementById("image").setAttribute("src", `img/productDetail/${element["image"]}`);
        document.getElementById("jjim").setAttribute("jjimId", element["productNo"]);

        fetch(`selectJjim.do?productNo=${element["productNo"]}`)
        .then(result => result.json())
        .then(result => {
            if(result.retCod == 'NO'){
                document.getElementById("jjimIcon").setAttribute("class", "icon_heart_alt");
            }else{
                document.getElementById("jjimIcon").setAttribute("class", "icon_heart");
            }
        })
    });
})


// QnA

fetch(`selectQnA.do?productNo=${productNo}`)
.then(result => result.json())
.then(function(result){
       
    fetch(`selectQnA.do?productNo=${productNo}`)
    .then(result => result.json())
    .then(function(result){
        makeRow(result)
    })


    // QnA작성
    if(logId != ""){        
        let tfooter = document.createElement('tfoot')
        let products = ['qnaTitle','qnaContent'];
        let tr = document.createElement('tr')
        let td = document.createElement('td')   
        td.innerHTML = "QnA작성"
        tr.appendChild(td);
        products.forEach(element => {
            td = document.createElement('td')  
            if(element == 'qnaContent'){
                let textarea = document.createElement('textarea');
                textarea.setAttribute('id', element);
                textarea.setAttribute('rows', '2');
                textarea.setAttribute('cols', '70');
                td.appendChild(textarea);    
            }else{
                let input = document.createElement('input');
                input.setAttribute('id', element);
                td.appendChild(input);      
            }
            tr.appendChild(td);        
        })
        tfooter.appendChild(tr);   
        
            td = document.createElement('td');
            tr.appendChild(td);
            td = document.createElement('td');
            btn = document.createElement('button');
            btn.innerHTML = '작성';
            btn.style = 'width: 50px;';
            btn.addEventListener("click", function(){
                let qnaContent = document.getElementById("qnaContent").value;
                let qnaTitle = document.getElementById("qnaTitle").value;
                fetch(`addQnA.do?qnaContent=${qnaContent}&qnaTitle=${qnaTitle}&productNo=${productNo}&memberId=${logId}`)
                .then(function(){
                    fetch(`selectQnA.do?productNo=${productNo}`)
                    .then(result => result.json())
                    .then(function(result){
                     makeRow(result);
                    })            
                })
                document.getElementById("qnaContent").value = "";
                document.getElementById("qnaTitle").value = "";
            })    
            td.appendChild(btn);
            tr.appendChild(td);
            tfooter.appendChild(tr);
            document.getElementById('qnaTbl').appendChild(tfooter);
    }


})

function makeRow(result){
    document.getElementById('qna').innerHTML ="";
    result.forEach(element => {
        let products = ['memberId','qnaTitle','qnaContent'];
        let tr = document.createElement('tr')
        products.forEach(ele => {                        
            let td = document.createElement('td')
            td.innerHTML = element[ele];
            if(ele == 'qnaContent'){
                //모달 버튼
                td.setAttribute("data-bs-toggle", "modal");
                td.setAttribute("data-bs-target", "#staticBackdrop");
                td.addEventListener("click",function(){
                    products.forEach(ele => { 
                        document.getElementById("Modal" + ele).innerHTML = element[ele];
                    })
                    document.getElementById("ModalqnaAnswer").value = element['qnaAnswer'];
                    document.getElementById("QAnswer").setAttribute('qnaNo',element['qnaNo']);

                    fetch(`selectProduct.do?productNo=${productNo}`)
                    .then(result => result.json())
                    .then(function(result){
                        let seller = "";
                        result.forEach(ele =>{
                            seller = ele.memberId;
                        })
                        if(logId == seller){
                            document.getElementById("QAnswer").style = "display : block";
                        }else{
                            document.getElementById("QAnswer").style = "display : none";
                        }
                    });
                })
            }
            tr.appendChild(td);           
        })
        let td = document.createElement('td')
        if(element['qnaAnswer'] == " " ){
            td.innerHTML = "답변대기"
        }else{
            td.innerHTML = "답변완료"
        }
        tr.appendChild(td);

        if(logId == element['memberId']){
            td = document.createElement('td')
            let btn = document.createElement('button')
            btn.innerHTML = '삭제';
            btn.style = 'width: 50px;';
            btn.addEventListener("click", function(){
                fetch(`deleteQnA.do?qnaNo=${element['qnaNo']}`)
                .then(function(){
                    document.getElementById(element['qnaNo']).innerHTML ="";
                })                
            });
            td.appendChild(btn);
            tr.appendChild(td);
            tr.setAttribute('id',element['qnaNo']);
        }


        document.getElementById('qna').appendChild(tr);
    })
}


// 리뷰페이지

fetch(`selectReview.do?productNo=${productNo}`)
.then(result => result.json())
.then(result => {
    let cnt = 0;
    result.forEach(ele =>{
        document.querySelector("tbody#reviews").appendChild(cloneRow(ele));
        cnt++;
    })
    document.getElementById("reviewCnt").innerHTML = "(" + cnt + ")";
})

function cloneRow(reply = {}){
	let template = document.querySelector("tbody#reviews > tr").cloneNode(true);
	template.style.display = "table-row";
	template.querySelector("#reviewImage").setAttribute('src', `img/productDetail/${reply.reviewImage}`);
    template.querySelector("#reviewImage").style = 'width: 100px;';
    template.querySelector("#reviewImage").style.display = 'inline-block';
	template.querySelector("#reviewContent").innerHTML = reply.reviewContent;
	template.querySelector("#memberId").innerHTML = reply.memberId;
	template.querySelector("#reviewScore").innerHTML = reply.reviewScore;
    template.querySelector("#createDate").innerHTML = reply.createDate;	
	return template;
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

// QnA답변
document.getElementById("QAnswer").addEventListener("click",function(){
    let qnaNo = document.getElementById("QAnswer").getAttribute('qnaNo');
    let QAnswer = document.getElementById("ModalqnaAnswer").value;    
    fetch(`updateQnA.do?qnaNo=${qnaNo}&QAnswer=${QAnswer}`)
    .then(function(){
        fetch(`selectQnA.do?productNo=${productNo}`)
        .then(result => result.json())
        .then(function(result){
            makeRow(result)
        })
    })

    document.getElementById("ModalqnaAnswer").value = "";
})

// jjim 하기
document.getElementById("jjim").addEventListener("click", function(){
    let productNo = document.getElementById("jjim").getAttribute("jjimId");
    console.log(logId);

    if(logId == "" || logId == null){
        alert("로그인후 이용가능합니다.")
    }else{
        if(document.getElementById("jjimIcon").getAttribute("class") == "icon_heart_alt"){
            fetch(`addJjim.do?productNo=${productNo}&logId=${logId}`)
            .then(function(){
                document.getElementById("jjimIcon").setAttribute("class", "icon_heart");
            })
        }else{
            fetch(`deleteJjim.do?productNo=${productNo}`)
            .then(function(){
                document.getElementById("jjimIcon").setAttribute("class", "icon_heart_alt");
            })
        }
    }
})

// 가격변경
document.querySelector(".pro-qty").addEventListener("click",function(){
    let cnt = document.querySelector("#cnt").value
    console.log(cnt);        

})

// 수량, 
