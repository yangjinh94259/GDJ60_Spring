const replyAdd = document.getElementById("replyAdd");
const replyContents = document.getElementById("replyContents");
const commentListResult = document.getElementById("commentListResult");

const contentsConfirm = document.getElementById("contentsConfirm");
const closeModal = document.getElementById("closeModal");

replyAdd.addEventListener("click", function(){

    let xhttp = new XMLHttpRequest();

    xhttp.open("POST", "../bankBookComment/add");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("contents="+replyContents.value+"&bookNumber="+replyAdd.getAttribute('data-book-bookNum'));

    xhttp.addEventListener('readystatechange', function(){
        if(this.readyState==4&&this.status==200){
            if(this.responseText.trim()==1){
                alert('댓글 등록 완료')
                replyContents.value="";
                getList(1);
            }else {
                alert('댓글 등록 실패')
            }

        }
    })

})

getList(1);

function getList(page){
    let xhttp = new XMLHttpRequest();

    xhttp.open("GET", "/bankBookComment/list?bookNumber="+replyAdd.getAttribute('data-book-bookNum') + '&page=' + page);

    xhttp.send();

    xhttp.addEventListener("readystatechange", function(){
        if(this.readyState==4&&this.status==200){
            commentListResult.innerHTML=this.responseText.trim();

        }        
    })


}

commentListResult.addEventListener("click", function(e){
    let del = e.target;
    if(del.classList.contains("del")){
        let xhttp = new XMLHttpRequest();
        xhttp.open("POST", "../bankBookComment/delete");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("num=" + del.getAttribute('data-comment-num'));
        xhttp.addEventListener("readystatechange", function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                if(result > 0){
                    alert("댓글 삭제 성공");
                    closeModal.click();
                    getList(1);
                }
                else{
                    alert("댓글 삭제 실패");
                }
            }
        })
        
    }

    e.preventDefault();

});

commentListResult.addEventListener("click", function(e){
    let update = e.target;
    if(update.classList.contains("update")){
       
        let num = update.getAttribute("data-comment-num");
        let contents = document.getElementById("contents"+num);

        console.log(contents);
        console.log(num);
        let contentsTextArea = document.getElementById("contents");
        contentsTextArea.value = contents.innerText;
        contentsConfirm.setAttribute("data-comment-num", num);
    }
           
    e.preventDefault();

});

contentsConfirm.addEventListener("click", function(){
    console.log("update Post");
    let updateContents = document.getElementById("contents").value;
    let num = contentsConfirm.getAttribute("data-comment-num");

    let xhttp = new XMLHttpRequest();
        xhttp.open("POST", "../bankBookComment/update");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("num="+num+"&contents="+updateContents);
        xhttp.addEventListener("readystatechange", function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                if(result > 0){
                    alert("댓글 수정 성공");
                    getList(1);
                    closeModal.click();
                }
                else{
                    alert("댓글 수정 실패");
                }
            }
         })
});