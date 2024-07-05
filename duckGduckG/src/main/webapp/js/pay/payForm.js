/**
 * payform.js
 */
totalPrice();

function totalPrice() {
    let total = 0;
    let prices = document.querySelectorAll('#orderList > ul span');
    prices.forEach(price => {
        total += Number(price.innerHTML.split(" ")[0]);
    });
    document.querySelector('#totalPrice span').innerHTML = total.toLocaleString('ko-KR') + "원";
}

document.querySelector('#payForm').onsubmit = async function() {
    let confirm_check = confirm('결제를 진행하시겠습니까?');
    if(!confirm_check) {
        return false;
    }

    await fetch('cartPayRemove.do')
        .then(result => result.json())
        .then(result => {
            if(result.result == "OK") {
                console.log("장바구니 비움");
            } else {
                console.log("장바구니 못비움");
            }
        })

    return true;
}