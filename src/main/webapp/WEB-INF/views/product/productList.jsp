<%@page import="com.iu.s1.product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Product List Page</h1>
	
	<%
		List<ProductDTO> ar = (List<ProductDTO>)request.getAttribute("list");
	
		for(ProductDTO productDTO:ar){
		
	%>
	
		<h3><%=productDTO.getProductname() %></h3>
		<h3><%=productDTO.getProductjumsu() %></h3>
	
	<%
		}
	%>
	
	<hr>
	
	<c:forEach items="${list}" var="dto"> <!-- dto는 page 영역에 담김 -->
	
		<h3><a href="./detail?productnum=${dto.productnum}">${pageScope.dto.productname}</a></h3>
		<h3>${dto.productjumsu}</h3>
		
	</c:forEach>
	
</body>
</html>