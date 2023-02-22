const d1 = document.getElementById('d1');
const add = document.getElementById('add');
const d1_1 = document.getElementById("d1_1");
const result = document.getElementById("result");
const dels = document.getElementsByClassName("dels");

result.addEventListener("click", function(){
    //console.log(e.currentTarget, e.target);
    //console.log(e.target.classList.contains('dels'));
    if(e.target.classList.contains('dels')){
        console.log('delete');
    }
});

add.addEventListener("click", function(){
    let d = document.createElement("div");
    let btn = document.createElement("button");
    let n = document.createTextNode("DELETE");
    let attr = document.createAttribute("class");
    attr.value = "dels";

    btn.setAttributeNode(attr);
    btn.appendChild(n)
    d.appendChild(btn);

    result.append(d);
});

d1.addEventListener("click", function(){
    d1.removeChild(d1_1);
});