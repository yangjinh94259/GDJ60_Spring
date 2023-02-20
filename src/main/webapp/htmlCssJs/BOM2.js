// const btn = document.getElementById("btn");
// let r1 = document.getElementById("r1").value;

// btn.addEventListener("click", function(){
    
//     console.log(r1.value*1+5)
// })



const btn = document.getElementById("btn");

let r1 = document.getElementById("r1");
let c1 = document.getElementById("c1");
let t1 = document.getElementById("t1");

const s1 = document.getElementById("s1")
//배열
const options = document.getElementsByClassName("options")
btn.addEventListener("click", function(){

    let result = '';

    for(let i=0; i < r1.value; i++){
        result = result + "<tr>";
        for(let j=0; j < c1.value; j++){
            result = result + "<td>"
            result = result + "</td>"
        }
        result = result + "</tr>";
    }

    t1.innerHTML = result;

})


s1.addEventListener("click", function(){
    for(let i=0; i < options.length; i++){
        if(options[i].selected){
            console.log(options[i].value);
            break;
        }
    }
});


const s2 = document.getElementById("s2");
const options1 = document.getElementsByClassName("options1");

s2.addEventListener("click", function(){
    for(let i=0; i < options1.length; i++){
        if(options1[i].checked){
            console.log(options1[i].value);
            break;
        }
    }
})

const ch = document.getElementsByClassName("Ch")

for(let i=0; )