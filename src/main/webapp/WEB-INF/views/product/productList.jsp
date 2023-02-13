<%@page import="com.iu.s1.product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container-fluid my-5">
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Product List Page</h1>
	</div>
	
	<div class="row col-md-7 mx-auto">
		<table class="table table-hover">
				<thead>
					<tr>
						<th>상품명</th>
						<th>평점</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<c:forEach items="${list}" var="dto"> <!-- dto는 page 영역에 담김 -->
						<tr>
							<td><a href="./detail?productNum=${dto.productNum}">${pageScope.dto.productName}</a></td>
							<td>${dto.productJumsu}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
			<div class="row col-md-7 mx-auto">
				<a class="btn btn-primary col-2" href="./productAdd">상품등록</a>
			</div>
		</div>
		<c:import url="../template/common_js.jsp"></c:import>
 </body>
</html>