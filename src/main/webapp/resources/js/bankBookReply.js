const replyAdd = document.getElementById("replyAdd");
const replyContents = document.getElementById("replyContents");
const commentListResult = document.getElementById("commentListResult");

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