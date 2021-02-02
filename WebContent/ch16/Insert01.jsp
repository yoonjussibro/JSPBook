<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert01_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<label for="name">이  름 : </label>
		<input type="text" id="name" name="name"><br>
		<button type="submit">전송</button>
	</form>
	
	<!-- 문제1 insert01.jsp를 기반으로 하여 update01.jsp 및 delete01.jsp 도 생성하여
		데이터를 수정 및 삭제까지 진행하세요.
	 -->
</body>
</html>