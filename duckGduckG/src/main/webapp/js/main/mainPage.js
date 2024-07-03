/**
 *  mainPage.js
 */
categoryList();

//카테고리별 이미지&목록 만들기
const categorySlide = document.querySelector('categories__slider');
function categoryList() {
    fetch('categoryList.do')
        .then(categories => categories.json())
        .then(categories => {
            categories.forEach(category => {
                categorySlide.appendChild(categoryListTemp(category));
            })
        })
}
//카테고리 리스트 만들기
function categoryListTemp(category) {
    let temp = "";
    if (document.querySelector('#list_category_temp') != null) {
        temp = document.querySelector('#list_category_temp').cloneNode(true);
        temp.querySelector('.categories__item').dataset.setbg = "img/productDetail/category/" + category+".jpg";
        temp.querySelector('h5 > a').innerHTML = category;
        temp.querySelector('h5 > a').href = "productForm.do?category=" + category;

        return temp;
    } else {
        return temp;
    }
}