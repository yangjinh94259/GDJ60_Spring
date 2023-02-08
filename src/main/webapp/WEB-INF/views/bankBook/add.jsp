<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bank Book Add Page</h1>
	<form action="./add" method="post">
	상품명
	<input type="text" name="bookName" placeholder="상품명 입력">
	이자율
	<input type="text" name="bookRate" vlaue="7.5">
	판매여부
	<input type="text" name="bookSale"><br>
	상품정보
	<textarea name="bookDetail" rows="" cols=""></textarea>
	<button type="submit">등록</button>
	</form>
</body>
</html>