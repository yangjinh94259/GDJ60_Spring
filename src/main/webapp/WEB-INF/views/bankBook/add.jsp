<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container-fulid my-5">
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Bank Book Add Page</h1>
	</div>
	
	<div class="row justify-content-center">
	<form  class="col-4" action="./add" method="post">
	<div class="mb-3">
	    <label for="bookName" class="form-label">제품명</label>
	    <input type="text" name="bookName" class="form-control" id="bookName" placeholder="제품명 입력">
    </div>
    
    <div class="mb-3">
	    <label for="bookRate" class="form-label">이자율</label>
	    <input type="text" name="bookRate" class="form-control" id="bookRate" placeholder="이자율 입력">
    </div>
	
	<div class="mb-3">
	<label class="form-label">판매여부</label>
	<div class="form-check">
 		<input class="form-check-input" type="radio" name="bookSale" checked id="bookSale1" value="1">
  		<label class="form-check-label" for="bookSale1">
    	판매중
 		 </label>
	</div>

	<div class="form-check">
 		<input class="form-check-input" type="radio" name="bookSale" id="bookSale2" value="0">
  		<label class="form-check-label" for="bookSale2">
    	판매중단
 	 	</label>
	</div>
	</div>
	
	<div class="mb-3">
		<label for="bookDetail" class="form-label">상세설명</label>
		<textarea name="bookDetail" class="form-control" id="bookDetail" placeholder="설명 입력" rows="7"></textarea>
    </div>
	
	<div class="mb-3">
		<button class="btn btn-primary" type="submit">등록</button>
	</div>
	</form>
	</div>
</div>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>