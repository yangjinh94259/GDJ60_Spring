const replyAdd = document.getElementById("replyAdd");
const replyContents = document.getElementById("replyContents");
const commentListResult = document.getElementById("commentListResult");

const contentsConfirm = document.getElementById("contentsConfirm");
const closeModal = document.getElementById("closeModal");

//add
replyAdd.addEventListener("click", function(){

    console.log(replyAdd.getAttribute('data-book-bookNum'))

    //JS에서 사용할 가상의 Form 태그 생성
    const form = new FormData(); //<form></form>
    form.append("contents", replyContents.value); //<form><input type="text" name="contents" value="fdsaf"></form>
    form.append("bookNum", replyAdd.getAttribute('data-book-bookNum'))

    fetch('../bankBookComment/add', {
        method:'POST', 
        //headers:{},
        body:form,
    }).then((response) => response.text())
    .then((res) => {
        if(res.trim()==1){
            alert('댓글 등록 완료')
            replyContents.value="";
            getList(1);
        }
        else{
            alert('댓글 등록 실패')
        }
    })
    // .catch(()=>{
    //     console.log("error");
    // })

    // let xhttp = new XMLHttpRequest();

    // xhttp.open("POST", "../bankBookComment/add");

    // xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    // xhttp.send("contents="+replyContents.value+"&bookNumber="+replyAdd.getAttribute('data-book-bookNum'));

    // xhttp.addEventListener('readystatechange', function(){
    //     if(this.readyState==4&&this.status==200){
    //         if(this.responseText.trim()==1){
    //             alert('댓글 등록 완료')
    //             replyContents.value="";
    //             getList(1);
    //         }else {
    //             alert('댓글 등록 실패')
    //         }

    //     }
    // })

})


//list

getList(1);

function getList(page){

    fetch("/bankBookComment/list?bookNumber="+replyAdd.getAttribute('data-book-bookNum')+"&page="+page,{
        method:'GET',
        //GET과 HEAD 메서드는 body 속성을 가질수 없음
    })
      .then((response)=>response.text())
      .then((res)=>{
        commentListResult.innerHTML=res.trim();
      })
      

    // let count=0;

    // let xhttp = new XMLHttpRequest();

    // xhttp.open("GET", "/bankBookComment/list?bookNumber="+replyAdd.getAttribute('data-book-bookNum')+"&page="+page);

    // xhttp.addEventListener("readystatechange", function(){
    //     if(this.readyState==4&&this.status==200){
    //         commentListResult.innerHTML=this.responseText.trim();
    //         count++;
    //     }        
    // })

    // xhttp.send();

    // //0이 출력 : 비동기 방식이기 때문
    // console.log("count : ", count);

}


//page
commentListResult.addEventListener("click", function(e){
    let pageLink = e.target;
    if(pageLink.classList.contains("page-link")){
        let page = pageLink.getAttribute("data-board-page");
        getList(page);
    }

    e.preventDefault();
    

});


//delete
commentListResult.addEventListener("click", function(e){
    let del = e.target;
    if(del.classList.contains("del")){
        fetch('../bankBookComment/delete', {
            method:'POST',
            header:{
                "Content-type":"application/x-www-form-urlencoded"
            },
            body:"num="+del.getAttribute('data-comment-num')
            //응답객체에서 Data 추출
        }).then((response)=>response.text())
            //추출한 Data 사옹
          .then((res)=>{
            if(res.trim()>0){
                alert("댓글 삭제 성공");
                closeModal.click();
                getList(1);
            }
            else{
                alert("댓글 삭제 실패");
            }
          });
        //   .catch(()=>{
        //         alert("다른 이유로 삭제 실패");
        //   });


        // let xhttp = new XMLHttpRequest();
        // xhttp.open("POST", "../bankBookComment/delete");
        // xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        // xhttp.send("num=" + del.getAttribute('data-comment-num'));
        // xhttp.addEventListener("readystatechange", function(){
        //     if(this.readyState == 4 && this.status == 200){
        //         let result = this.responseText.trim();
        //         if(result > 0){
        //             alert("댓글 삭제 성공");
        //             closeModal.click();
        //             getList(1);
        //         }
        //         else{
        //             alert("댓글 삭제 실패");
        //         }
        //     }
        // })
        
    }

    e.preventDefault();

});


//update
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

    fetch('../bankBookComment/update', {
        method:'POST',
        header:{
            "Content-type":"application/x-www-form-urlencoded"
        },
        body:"num="+num+"&contents="+updateContents
    }).then((response)=> response.text())
      .then((res) => {
        if(res.trim()>0){
            alert("댓글 수정 성공");
            getList(1);
            closeModal.click();
        }
        else{
            alert("댓글 수정 실패");
        }
      })
      .catch(()=>{
        alert('관리자에게 문의 요망')
      })

    // let xhttp = new XMLHttpRequest();
    //     xhttp.open("POST", "../bankBookComment/update");
    //     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //     xhttp.send("num="+num+"&contents="+updateContents);
    //     xhttp.addEventListener("readystatechange", function(){
    //         if(this.readyState == 4 && this.status == 200){
    //             let result = this.responseText.trim();
    //             if(result > 0){
    //                 alert("댓글 수정 성공");
    //                 getList(1);
    //                 closeModal.click();
    //             }
    //             else{
    //                 alert("댓글 수정 실패");
    //             }
    //         }
    //      })
});