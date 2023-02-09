<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="./resources/css/main.css">
</head>
<body>
<h1>
	Hello world!  
</h1>

	<a href="./product/list?num=1&num=2&num=3">Product List</a>
<!-- <a href="/product/list">Product List</a> --> <br>
	<a href="./member/join">Member List</a>	<br>
	<a href="./bankBook/list">Bank Book List</a><br>
	
	<img alt="아이유이미지1" src="/resources/images/iu.jpg">
	<img alt="아이유이미지2" src="./resources/images/iu2.jpg">
	
	<iframe width="560" height="315" src="https://www.youtube.com/embed/Cs982ItcLCA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
