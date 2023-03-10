<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fulid my-5">
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Login Page</h1>
	</div>
	
	<div class="row justify-content-center">
		<form class="col-4" action="memberLogin" method="post">
			<div class="mb-3">
				<label for="id" class="form-label">ID</label>
				<input type="text" value="${cookie.rememberId.value}" name="id" class="form-control" id="id">
			</div>
			
			<div class="mb-3">
				<label for="pw" class="form-label">PW</label>
				<input type="password" name="pw" class="form-control" id="pw">
			</div>
			
			<div class="mb-3 form-check">
				<label for="remember" class="form-check-label">ID 기억하기</label>
				<input type="checkbox" name="remember" value="remember" class="form-check-input">
			</div>
			
			<button type="submit" class="btn btn-primary">로그인</button>
			
	</form>
	</div>
</div>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>