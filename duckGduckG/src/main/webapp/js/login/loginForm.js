/**
 *  loginForm.js
 */

//키입력받기
function enterkey() {
	if (window.event.keyCode == 13) {
		// 엔터키가 눌렸을 때 실행할 내용
		if(document.querySelector('#loginForm').style.display == "none")
			registControl();
		if(document.querySelector('#registForm').style.display == "none")
			loginControl();
	}
}

//로그인창 가기
document.querySelector('#turnLogin').addEventListener('click', function() {
	document.querySelector('#loginForm').style.display = "";
	document.querySelector('#registForm').style.display = "none";
});

//로그인
document.querySelector('#loginBtn').addEventListener('click', loginControl);
//로그인기능
function loginControl() {
	let id = document.querySelector('input[name="loginId"]');
	let pw = document.querySelector('input[name="loginPass"]');
	fetch("login.do?loginId=" + id.value + "&loginPass=" + pw.value)
		.then(result => result.json())
		.then(result => {
			if(result.retCode == "OK") {
				location.href="main.do";
			} else if(result.retCode == "NG") {
				alert("로그인에 실패하였습니다.");
				pw.value = "";
			} else {
				alert("서버문제로 로그인이 불가능합니다.<br>자주 해당 문제가 발생할 경우 문의해 주세요.");
			}
		});
};
//회원가입창 가기
document.querySelector('#turnRegist').addEventListener('click', function() {
	document.querySelector('#loginForm').style.display = "none";
	document.querySelector('#registForm').style.display = "";
});

//회원가입
document.querySelector('#registBtn').addEventListener('click', registControl);

//회원가입 기능
function registControl() {
	let name = document.querySelector('input[name="registName"]');
	let id = document.querySelector('input[name="registId"]');
	let pw = document.querySelector('input[name="registPass"]');

	fetch("addMember.do?id="+id.value+"&pw="+pw.value+"&name="+name.value)
		.then(result => result.json())
		.then(result => {
			if (result.retCode == "OK") {
				alert("회원가입성공!!");
				location.href = "loginForm.do";
			} else {
				alert("회원가입 실패...");
				pw.value="";
				pw.focus();
			}
		})
}