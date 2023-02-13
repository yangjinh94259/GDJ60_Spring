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
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Product Add Page</h1>
	</div>
	
	<div class="row justify-content-center">
		<form class="col-4" action="./productAdd" method="post">
			<div class="mb-3">
				<label for="productName" class="form-label">상품명</label>
				<input type="text" name="productName" class="form-control" id="productName" placeholder="상품명 입력">
    		</div>
    		<br>
			<div class="mb-3">
				<label for="productDetail" class="form-label">상품설명</label>
				<textarea name="productDetail" class="form-control" id="productDetail" placeholder="상품설명 입력" rows="7"></textarea>
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