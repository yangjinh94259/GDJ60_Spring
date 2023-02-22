//FileManager.js
const fileAdd = document.getElementById("fileAdd");
const fileList = document.getElementById("fileList");

let count = 0;
let max = 1;
let param = 'pic';

// function setParam(){
//     param = p;
// }

function setMax(m){
    max = m;
}

fileAdd.addEventListener("click", function(){

    if(count >= max){
        alert('첨부파일은 최대 ' + max + '개 까지만 가능');
        return;
    }

    count++;

    //Element 들을 생성
    let d = document.createElement('div');    //부모 div
    let l = document.createElement('label');  //label
    let t = document.createTextNode('이미지');
    let i = document.createElement('input');  //input

    //Element 들을 조합
    d.appendChild(l);
    d.appendChild(i);
    l.appendChild(t);

    //attribute 생성 적용
    //div
    let attr = document.createAttribute('class');
    attr.value='mb-3';
    d.setAttributeNode(attr);

    //label
    attr = document.createAttribute('class');   //변수명 재활용
    attr.value = 'form-label';
    l.setAttributeNode(attr);

    attr = document.createAttribute('for');
    attr.value = 'files';
    l.setAttributeNode(attr);

    //input
    attr = document.createAttribute('type')
    attr.value = 'file';
    i.setAttributeNode(attr);

    attr = document.createAttribute('class');   //변수명 재활용
    attr.value = 'form-control';
    i.setAttributeNode(attr);

    attr = document.createAttribute('id');   //변수명 재활용
    attr.value = 'files';
    i.setAttributeNode(attr);

    attr = document.createAttribute('name');   //변수명 재활용
    attr.value = 'pic'; //param
    i.setAttributeNode(attr);

    fileList.prepend(d);


});