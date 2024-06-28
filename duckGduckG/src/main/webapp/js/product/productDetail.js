/**
 *  productDetail.js
 */

let query = window.location.search;
let param = new URLSearchParams(query);
let productNo = param.get('productNo');

console.log(productNo);

fetch(`selectProduct.do?productNo=${productNo}`)
.then(result => result.json())
.then(result => {
    console.log(result)
    result.forEach(element => {        
        console.log(element)
    });
})