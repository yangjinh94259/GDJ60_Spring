const btn = document.getElementById("btn");
btn.addEventListener("click", function(){
    let c2 = window.document.getElementById("c2");
    console.log(c2.innerText);
    console.log(c2.innerHTML);
    //c2.innerText = 'test';
    c2.innerHTML = '<img src="../resources/images/iu.jpg">';
});

let c1 = window.document.getElementById("c1");
// alert(c1);
// console.log(c1);
console.log(c1.innerText);
console.log(c1.innerHTML);
//c1.innerText = 'Change Text'

const btn2 = document.getElementById("btn2");
btn2.addEventListener("click", function(){
    let c3 = document.getElementById(c3);
    let v = c3.title
    v = c3.getAttribute("title");
    console.log(v)
});

const btn3 = document.getElementById("btn3")
btn3.addEventListener("click", function(){
   let input1 = document.getElementById("input1");
   console.log(input1.value);
});