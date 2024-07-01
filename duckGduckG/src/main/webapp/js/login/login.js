/**
 * login.js
 */
const signUpBtn = document.getElementById("signUp");
const signInBtn = document.getElementById("signIn");
const lcontainer = document.querySelector(".login_container");

signUpBtn.addEventListener("click", () => {
  lcontainer.classList.add("right-panel-active");
});
signInBtn.addEventListener("click", () => {
  lcontainer.classList.remove("right-panel-active");
});