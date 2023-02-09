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
		<input type="hidden" name="bookNumber" value="${dto.bookNumber}">	<!-- 수정 불가 disabled(서버로 안보냄), readonly, hidden(눈에 보이지 않음) -->
		
		<fieldset>
			<legend>상품명</legend>
			<input type="text" name="bookName" value="${dto.bookName}" placeholder="상품명 입력"><br>
		</fieldset>
		
		<fieldset>
			<legend>이자율</legend>
			<input type="text" name="bookRate" value="${dto.bookRate}"><br>
		</fieldset>
		
		<fieldset>
			<label for="bs3">판매</label>
			<input id="bs3" type="radio" ${dto.bookSale eq '1' ? 'checked': ''} checked name="bookSale" value="1">
			
			<label for="bs4">판매중단</label>
			<input id="bs4" type="radio" ${dto.bookSale eq '0' ? 'checked': ''} name="bookSale" value="0"><br>
		</fieldset>
		
		<fieldset>
			<label>판매여부</label>
			<select name="bookSale">
				<option ${dto.bookSale eq '1' ? 'checked': ''} value="1">판매</option>
				<option ${dto.bookSale eq '0' ? 'checked': ''} value="0">판매중단</option>
			</select>
		</fieldset>	
		
		<fieldset>
			<label>상세정보</label>
			<textarea name="bookDetail" rows="" cols="">${dto.bookDetail}</textarea><br>
		</fieldset>
		<button type="submit">수정</button>
	</form>
</body>
</html>