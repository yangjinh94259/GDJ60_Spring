const pl = document.getElementsByClassName("page-link");

//for
//for of    --for(꺼낸타입명 변수명 : Collection)

for(let p of pl){
    p.addEventListener("click",function(){
        e.preventDefault();
    })
}