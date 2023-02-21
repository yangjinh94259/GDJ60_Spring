//SELECTOR
const id = document.getElementById("id");
const idResult = document.getElementById("idResult");

const pw = document.getElementById("pw");
const pwResult = document.getElementById("pwResult");

const pwCheck = document.getElementById("pwCheck");
const pwCheckResult = document.getElementById("pwCheckResult");

const name = document.getElementById("name");
const nameResult = document.getElementById("nameResult");

const address = document.getElementById("address");
const addressResult = document.getElementById("addressResult");

const phone = document.getElementById("phone");
const phoneResult = document.getElementById("phoneResult");

const email = document.getElementById("email");
const emailResult = document.getElementById("emailResult");

const frm = document.getElementById("frm");
const btn = document.getElementById("btn");

// let idCheck = false;
// let pwLengthCheck = false;
// let pwNullCheck = false;
// let pwEqualCheck = false;

let checks = [false, false, false, false, false, false, false, false]

//id 검증
id.addEventListener("blur", function(){
    if(id.value.length != 0){
        // idCheck = true;
        checks[0] = true;
    }
    else{
        idResult.innerHTML = "ID는 필수 입력";
        checks[0] = false;
    }
})

pw.addEventListener("keyup", function(){
    if(pw.value.length > 5 && pw.value.length < 13){
        pwResult.innerHTML = '정상 비번';
        // pwLengthCheck = true;
        checks[1] = true;
    }
    else{
        pwResult.innerHTML = '비밀번호은 6글자 이상 12자 이하';
        checks[1] = false;
    }
})

pw.addEventListener("blur", function(){
    if(pw.value.length != 0){
        // pwNullCheck = true;
        checks[2] = true;
    }
    else{
        pwResult.innerHTML = '비밀번호는 필수 입력';
        checks[2] = false;
    }
})

pw.addEventListener("change", function(){
    checks[3] = false;
    pwCheck.value = '';
    pwCheckResult.innerHTML = '비밀번호 불일치';
})

pwCheck.addEventListener("blur", function(){
    if(pwCheck.value == pw.value){
        pwCheckResult.innerHTML = "동일한 비밀번호";
        // pwEqualCheck = true;
        checks[3] = true;
    }
    else{
        pwCheckResult.innerHTML = "다른 비밀번호";
        checks[3] = false;
    }
})

name.addEventListener("blur", function(){
    if(name.value.length != 0){
        checks[4] = true;
    }
    else{
        nameResult.innerHTML = "이름은 필수 입력";
        checks[4] = false;
    }
})

address.addEventListener("blur", function(){
    if(address.value.length != 0){
       checks[5] = true;
    }
    else{
         addressResult.innerHTML = "주소는 필수 입력";
         checks[5] = false;
    }
})

phone.addEventListener("blur", function(){
    if(phone.value.length != 0){
       checks[6] = true;
    }
    else{
        phoneResult.innerHTML = "전화번호는 필수 입력";
        checks[6] = false;
    }
})

email.addEventListener("blur", function(){
    if(email.value.length != 0){
       checks[7] = true;
    }
    else{
         emailResult.innerHTML = "이메일은 필수 입력";
         checks[7] = false;
    }
})

//form 전송
btn.addEventListener("click", function(){
    //if(idCheck && pwCheck && pwLengthCheck && pwNullCheck && pwEqualCheck){
    if(!checks.includes(false)){
        // frm.submit();
        // location.href = "./";
        alert('성공');
    }  
    else{
        alert('필수 사항 입력');
    }  

})