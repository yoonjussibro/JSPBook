<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert02_process.jsp" method="post">
		<label for="name">이름 : </label>
		<input type="text" id="name" name="name"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="submit">추가</button>
		<button type="reset">취소</button>
	</form>
	<!-- 문제2) insert02.jsp, insert02_process.jsp 를 참고하여 update, delete문을 작성 -->
</body>
</html>