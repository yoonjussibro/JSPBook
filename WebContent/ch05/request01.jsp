<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id"/></p>
		<p> 비 밀 번 호 : <input type="password" name="passwd"/></p>
		<p> <input type="submit" value="전송"/></p>
	</form>
	
	<form action="request03.jsp" method="get">
		<input type="text" name="id"><br>
		<input type="email" name="email"><br>
		<button type="submit">request03으로 이동</button>
	</form>
</body>
</html>