/**
 *  productDetail.js
 */

let query = window.location.search;
let param = new URLSearchParams(query);
let productNo = param.get('productNo');

fetch(`selectProduct.do?productNo=${productNo}`)
.then(result => result.json())
.then(result => {
    result.forEach(element => {   
        let products = ['productName','price','createDate','stock','mainInfo','semiInfo','sales'];    
        products.forEach(ele => {
            document.getElementById(ele).innerHTML = (element[ele]);
        })
        document.getElementById("image").setAttribute("src", `img/productDetail/${element["image"]}`);
    });
})


fetch(`selectQnA.do?productNo=${productNo}`)
.then(result => result.json())
.then(function(result){
    fetch(`selectQnA.do?productNo=${productNo}`)
    .then(result => result.json())
    .then(function(result){
    makeRow(result)
    })
    let tfooter = document.createElement('tfoot')
    let products = ['qnaContent','qnaTitle','qnaAnswer'];
    let tr = document.createElement('tr')
    let td = document.createElement('td')   
    tr.appendChild(td);
    products.forEach(element => {
        td = document.createElement('td')  
        let input = document.createElement('input')
        input.setAttribute('id', element)
        td.appendChild(input);        
        tr.appendChild(td);        
    })
    tfooter.appendChild(tr);
    
    td = document.createElement('td')
    btn = document.createElement('button')
    btn.innerHTML = '작성'
    btn.style = 'width: 50px;'
    btn.addEventListener("click", function(){
        let qnaContent = document.getElementById("qnaContent").value;
        let qnaTitle = document.getElementById("qnaTitle").value;
        fetch(`addQnA.do?qnaContent=${qnaContent}&qnaTitle=${qnaTitle}&productNo=${productNo}`)
        .then(function(){
            fetch(`selectQnA.do?productNo=${productNo}`)
            .then(result => result.json())
            .then(function(result){
             makeRow(result)
            })            
        })
        document.getElementById("qnaContent").value = "";
        document.getElementById("qnaTitle").value = "";
    })    
    td.appendChild(btn)
    tr.appendChild(td);
    tfooter.appendChild(tr)   
    document.getElementById('qnaTbl').appendChild(tfooter);
})

function makeRow(result){
    document.getElementById('qna').innerHTML ="";
    result.forEach(element => {
        let products = ['qnaNo','qnaTitle','qnaContent','qnaAnswer'];
        let tr = document.createElement('tr')
        products.forEach(ele => {
            let td = document.createElement('td')
            td.innerHTML = element[ele];
            tr.appendChild(td);           
        })
        let td = document.createElement('td')
        let btn = document.createElement('button')
        btn.innerHTML = '삭제'
        btn.style = 'width: 50px;'
        btn.addEventListener("click", function(){
            fetch(`deleteQnA.do?qnaNo=${element['qnaNo']}`)
            .then(function(){
                document.getElementById(element['qnaNo']).innerHTML ="";
            })
        });
        td.appendChild(btn)
        tr.appendChild(td);
        tr.setAttribute('id',element['qnaNo']);
        document.getElementById('qna').appendChild(tr);
    })
}