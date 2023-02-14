<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fulid my-5">
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Member Update Page</h1>
	
	<div class="row justify-content-center">
		<form class="col-4" action="./memberUpdate" method="post">
			<div class="mb-3">
					<input type="hidden" name="id" class="form-control" id="id" value="${member.id}">
				</div>
		
				<div class="mb-3">
					<label for="name" class="form-label">NAME</label>
					<input type="text" name="name" class="form-control" id="name">
				</div>
				
				<div class="mb-3">
					<label for="phone" class="form-label">PHONE</label>
					<input type="text" name="phone" class="form-control" id="phone">
				</div>
				
				<div class="mb-3">
					<label for="email" class="form-label">EMAIL</label>
					<input type="text" name="email" class="form-control" id="email">
				</div>
				
				
				<button type="submit" class="btn btn-primary">정보수정</button>
		</form>
		</div>
	</div>
</div>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>