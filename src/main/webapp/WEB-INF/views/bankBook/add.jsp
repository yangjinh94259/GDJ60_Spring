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
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">BankBook Add Page</h1>
	</div>
	
		<div class="row justify-content-center">
		<form  class="col-4" action="./add" method="post" enctype="multipart/form-data">
		<div class="mb-3">
		    <label for="bookName" class="form-label">제품명</label>
		    <input type="text" name="bookName" class="form-control" id="bookName" placeholder="제품명 입력">
	    </div>
	    
	    <div class="mb-3">
		    <label for="bookRate" class="form-label">이자율</label>
		    <input type="text" name="bookRate" class="form-control" id="bookRate" placeholder="이자율 입력">
	    </div>

		<div class=" mb-3 form-check form-switch">
			<label class="form-check-label" for="bookSale">판매여부</label>
			<input name="bookSale" class="form-check-input" value="1" type="checkbox" role="switch" id="bookSale">
		</div>
		
		<div class="mb-3">
			<label for="bookDetail" class="form-label">상세설명</label>
			<textarea name="bookDetail" class="form-control" id="bookDetail" placeholder="설명 입력" rows="7"></textarea>
	    </div>
	    
		<div id="fileList">
			<div id="fileDel"></div>
			<!--<div class="mb-3">
					<label for="files" class="form-label">이미지</label>
					<input type="file" class="form-control" id="pic" name="files">
					<button type="button">X</button>
				</div>-->

			<button type="button" id="fileAdd">추가</button>
		</div> 

		<div class="mb-3">
			<button class="btn btn-primary" type="submit">등록</button>
		</div>
	</form>
	</div>
</div>
	<script src="../resources/js/fileManager.js"></script>
	<script>
		setMax(5);
		setParam('files');
	</script>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>