<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fluid my-5">
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">${boardName} Add Page</h1>
	</div>
	
		<div class="row justify-content-center">
		<form  class="col-4" action="./add" method="post" enctype="multipart/form-data">
		<div class="mb-3">
		    <label for="writer" class="form-label">작성자</label>
		    <input type="text" name="writer" class="form-control" id="writer">
	    </div>
	    
	    <div class="mb-3">
		    <label for="title" class="form-label">제목</label>
		    <input type="text" name="title" class="form-control" id="title" placeholder="제목 입력">
	    </div>
		
		<div class="mb-3">
			<label for="contents" class="form-label">상세내용</label>
			<textarea name="contents" class="form-control" id="contents" placeholder="내용 입력" rows="7"></textarea>
	    </div>
	    
		 <div id="fileList">
			<!-- <div class="mb-3">
				<label for="files" class="form-label">이미지</label>
				<input type="file" class="form-control" id="files" name="files">
				<button type="button">X</button>
			</div> -->
			<button type="button" id="fileAdd">추가</button>
		</div> 

		<div class="mb-3">
			<button class="btn btn-primary" type="submit">글쓰기</button>
		</div>
	</form>
	</div>
</div>
	<script src="../resources/js/fileManager.js"></script>
	<script>
		setMax(5);
		//setParam('f');
	</script>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>