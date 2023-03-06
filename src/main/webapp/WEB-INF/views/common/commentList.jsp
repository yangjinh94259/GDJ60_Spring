<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table table-striped">
<c:forEach items="${list}" var="dto">
	<tr>
		<td id="contents${dto.num}"><textarea cols="15" rows="2" readonly>${dto.contents}</textarea></td>
		<td>${dto.writer}</td>
		<td>${dto.regDate}</td>
		<td><c:if test="${member.id eq dto.writer}">
			<button class="btn btn-info update" data-comment-num="${dto.num}">댓글 수정</button>
		</c:if>
		</td>
		<td><c:if test="${member.id eq dto.writer}">
			<button class="btn btn-danger del" data-comment-num="${dto.num}">댓글 삭제</button>
		</c:if>
		</td>
	</tr>
</c:forEach>
</table>
<!-- page -->
		<div class="row">
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		  
		     <li class="page-item ${pager.before ? 'disabled' : ''}">
		      <a class="page-link" href="./list?page=1&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>

		  
		    <li class="page-item ${pager.before ? 'disabled' : ''}">
		      <a class="page-link" href="./list?page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
		        <span aria-hidden="true">&lsaquo;</span>
		      </a>
		    </li>
		    
		    
		    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
		    	<li class="page-item"><a class="page-link" href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
		    </c:forEach>
		    
		    
		     <li class="page-item ${pager.after eq false ? 'disabled' : ''}">
		      <a class="page-link"  href="./list?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
		        <span aria-hidden="true">&rsaquo;</span>
		      </a>
		    </li>
		    
		    
		    <li class="page-item ${pager.after eq false ? 'disabled' : ''}">
		      <a class="page-link"  href="./list?page=${pager.totalPage}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		    
		  </ul>
		</nav>
		</div>