<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>저축상품</title>
<c:import url="../template/common_css.jsp"></c:import>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container-fluid my-5">

	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Bank Book List Page</h1>
	</div>
	
	<div class="row col-md-7 mx-auto">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>상품명</th>
					<th>이자율</th>
					<th>판매여부</th>
				</tr>
			</thead>
			 <tbody class="table-group-divider">
			<c:forEach items="${list}" var="dto">
				<tr>
					<td><a href="./detail?bookNumber=${dto.bookNumber}">${dto.bookName}</a></td>
					<td class="tbl_td">${dto.bookRate}</td>
					<td class="tbl_td">
						<c:choose>
							<c:when test="${dto.bookSale eq 1}">판매중</c:when>
							<c:otherwise>판매중단</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<div class="row">
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item ${pager.before ? 'disabled' : ''}">
		      <a class="page-link" href="./list?page=${pager.startNum-1}" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
		    	<li class="page-item"><a class="page-link" href="./list?page=${i}">${i}</a></li>
		    </c:forEach>
		    <li class="page-item ${pager.after eq false ? 'disabled' : ''}">
		      <a class="page-link"  href="./list?page=${pager.lastNum+1}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		</div>
		
		</div>
		<div class="row col-md-7 mx-auto">
			<a href="./add" class="btn btn-primary col-2">상품등록</a>
		</div>
	</div>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>