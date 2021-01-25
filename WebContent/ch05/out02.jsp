<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="out02_process.jsp" method="post">
		<label for="userID">아이디 : </label>
		<input type="text" id="userID" name="userID" placeholder="아이디를 입력하세요."><br>
		<label for="userPW">비밀번호 : </label>
		<input type="password" id="userPW" name="userPW" placeholder="비밀번호를 입력하세요."><br>
		<button type="submit">확인</button>
	</form>
</body>
</html>