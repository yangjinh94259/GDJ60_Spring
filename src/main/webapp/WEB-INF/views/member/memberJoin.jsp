<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Member Join Page</h1>
		<form action="./memberJoin" method="post"></form>
			ID
			<input type="text" name="id">
			PW
			<input type="text" name="pw">
			NAME
			<input type="text" name="name">
			ADDRESS
			<input type="text" name="address">
			PHONE
			<input type="text" name="phone">
			EMAIL
			<input type="text" name="email">
			<button type="submit">등록</button>
	
</body>
</html>