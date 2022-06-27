let x = document.getElementById("login");
let y = document.getElementById("register");
let z = document.getElementById("btn");
let login_btn = document.getElementById("login-btn");
let register_btn = document.getElementById("register-btn");
let form_box = document.getElementById("form-box-id");

function login() {
    x.style.left = "50px"
    y.style.left = "450px"
    z.style.left = "0"

    login_btn.style.color = "black"
    register_btn.style.color = "white"
    login_btn.style.fontWeight = "bold"
    register_btn.style.fontWeight = "normal"

    form_box.style.height = "425px"
    form_box.style.transition = "500ms cubic-bezier(0.49,-0.62, 0.67, 1.3)"
    form_box.style.margin = "4% auto"
}

function register() {
    x.style.left = "-400px"
    y.style.left = "50px"
    z.style.left = "110px"

    login_btn.style.color = "white"
    login_btn.style.fontWeight = "normal"
    register_btn.style.color = "black"
    register_btn.style.fontWeight = "bold"

    form_box.style.height = "550px"
    form_box.style.transition = "500ms cubic-bezier(0.49,-0.62, 0.67, 1.3)"
    form_box.style.margin = "1% auto"
}