<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

	<a href="./product/list?num=1&num=2&num=3">Product List</a>
<!-- <a href="/product/list">Product List</a> --> <br>
	<a href="./member/join">Member Join</a>	

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
