<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Update02_process.jsp" method="post">
		<label for="id">수정할 아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="name">수정할 비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<label for="name">수정할 이  름 : </label>
		<input type="text" id="name" name="name"><br>
		<button type="submit">수정하기</button>
	</form>
</body>
</html>