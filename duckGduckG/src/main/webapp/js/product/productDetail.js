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
        let products = ['productNo','memberId','productName','image','price','categoryName','createDate','stock','mainInfo','semiInfo','discount','sales'];    
    
        document.getElementById("productName").innerHTML = element["productName"];
        document.getElementById("price").innerHTML = element["price"] + "&#8361";
        document.getElementById("semiInfo").innerHTML = element["semiInfo"];
        document.getElementById("createDate").innerHTML = element["createDate"];
        document.getElementById("stock").innerHTML = element["stock"];
        document.getElementById("sales").innerHTML = element["sales"];
        document.getElementById("mainInfo").innerHTML = element["mainInfo"];
        document.getElementById("image").setAttribute("src", `img/productDetail/${element["image"]}`);
    });
})


