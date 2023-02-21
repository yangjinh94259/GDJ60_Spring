<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container-fulid my-5">
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Member Join Page</h1>
	</div>	
	
	<div class="row justify-content-center">
		<form class="col-4" id="frm" action="./join" method="post">
			<div class="mb-3">
				<label for="id" class="form-label">아이디</label>
				<input type="text" name="id" class="form-control" id="id" placeholder="아이디 입력">
				<div id="idResult"></div>
			</div>
			
			<div class="mb-3">
				<label for="pw" class="form-label">비밀번호</label>
				<input type="password" name="pw" class="form-control" id="pw" placeholder="비밀번호 입력">
				<div id="pwResult"></div>
			</div>
			
			<div class="mb-3">
				<label for="pw" class="form-label">비밀번호 확인</label>
				<input type="password" name="pw" class="form-control" id="pwCheck" placeholder="비밀번호 다시 입력">
				<div id="pwCheckResult"></div>
			</div>
			
			<div class="mb-3">
				<label for="name" class="form-label">이름</label>
				<input type="text" name="name" class="form-control" id="name" placeholder="이름 입력">
				<div id="nameResult"></div>
			</div>
			
			<div class="mb-3">
				<label for="address" class="form-label">주소</label>
				<input type="text" name="address" class="form-control" id="address" placeholder="주소 입력">
				<div id="addressResult"></div>
			</div>
			
			<div class="mb-3">
				<label for="phone" class="form-label">전화번호</label>
				<input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호 입력">
				<div id="phoneResult"></div>
			</div>
			
			<div class="mb-3">
				<label for="email" class="form-label">이메일</label>
				<input type="text" name="email" class="form-control" id="email" placeholder="이메일 입력">
				<div id="emailResult"></div>
			</div>
			
			<div class="mb-3">
				<button class="btn btn-primary" id="btn" type="button">등록</button>
			</div>
		</form>
	  </div>
	  </div>
	  <script src="../resources/js/memberJoin.js"></script>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>