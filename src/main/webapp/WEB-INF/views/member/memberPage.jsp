<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 페이지</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container-fluid">
		<div class="row">
			<h1>My Page</h1>
		</div>
		
		<div class="row">
			<h3>이름 : ${dto.name}</h3>
			<h3>전화번호 : ${dto.phone}</h3>
			<h3>이메일 : ${dto.email}</h3>
			<h3>회원등급 : ${dto.roleDTO.roleName}</h3>
			<a href="./memberUpdate" class="btn btn-primary">정보수정</a>
		</div>
	</div>
		
<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>