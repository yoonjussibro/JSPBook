<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.Person" scope="request"></jsp:useBean>
	<p>아이디 : <jsp:getProperty name="person" property="id" ></jsp:getProperty></p>
	<p>이 름 : <jsp:getProperty name="person" property="name" ></jsp:getProperty></p>
</body>
</html>