<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="delete01_process.jsp" method="post">
		<h3>데이터를 완전히 삭제합니다.</h3>
		<h4>삭제할 아이디와 이름을 입력해주세요.</h4>
		<label for="id">삭제할 아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="name">삭제할 이  름 : </label>
		<input type="text" id="name" name="name"><br>
		<button type="submit">삭제하기</button>
		<button type="reset">초기화</button>
	</form>
</body>
</html>