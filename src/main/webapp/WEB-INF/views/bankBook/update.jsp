<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bank Book Update Page</h1>
	<form action="./update" method="post">
		상품명
		<input type="text" name="bookName" value="${dto.bookName}" placeholder="상품명 입력"><br>
		이자율
		<input type="text" name="bookRate" vlaue="${dto.bookRate}"><br>
		판매여부
		<input type="text" name="bookSale" vlaue="${dto.bookSale}"><br>
		상품정보
		<textarea name="bookDetail" rows="" cols="">${dto.bookDetail}</textarea><br>
		<button type="submit">수정</button>
	</form>
</body>
</html>