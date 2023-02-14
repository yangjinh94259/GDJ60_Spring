<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar bg-dark navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
  <div class="container-fluid">
     <a class=navbar_brand href = "/"><img src="/resources/images/logo.png" alt=""></a>
     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
       <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item"><a class="nav-link active" href = "#">공지사항</a></li>
         <li class="nav-item"><a class="nav-link active" href = "/product/list">제품</a></li>
         <li class="nav-item"><a class="nav-link active" href = "/bankBook/list">저축상품</a></li>
         <li class="nav-item"><a class="nav-link active" href = "#">기타메뉴</a></li>
      </ul>
      
      <ul class="navbar-nav">
      		<c:if test="${empty member}">
	     		<li class="nav-item"><a class="nav-link" href="/member/memberLogin" style="font-size: 11px;">LOGIN</a></li>
				<li class="nav-item"><a class="nav-link" href="/member/join" style="font-size: 11px;">JOIN</a></li>
			</c:if>
			<c:if test="${not empty member}">
	     		<li class="nav-item"><a class="nav-link" href="/member/memberPage" style="font-size: 11px;">My Page</a></li>
				<li class="nav-item"><a class="nav-link" href="/member/memberLogout" style="font-size: 11px;">Logout</a></li>
			</c:if>
			
			<li class="nav-item"><a class="nav-link" href="#" style="font-size: 11px;">KO</a></li>
			<li class="nav-item"><a class="nav-link" href="#" style="font-size: 11px;">EN</a></li>
			<li class="nav-item"><a class="nav-link" href="#" style="font-size: 11px;">JP</a></li>
			<li class="nav-item"><a class="nav-link" href="#" style="font-size: 11px;">CN</a></li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>