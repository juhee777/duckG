/**
 *  loginForm.js
 */

//키입력받기
function enterkey() {
	if (window.event.keyCode == 13) {
       // 엔터키가 눌렸을 때 실행할 내용
       loginControl();
  }
}

//로그인 하기
document.querySelector('#loginBtn').addEventListener('click', loginControl);
//로그인기능
function loginControl() {
	let id = document.querySelector('input[name="id"]');
    let pw = document.querySelector('input[name="pass"');
    location.href="login.do?id="+id.value+"&pw="+pw.value;
}