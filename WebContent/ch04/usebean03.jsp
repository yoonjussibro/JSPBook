<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.Person" scope="request"/>
	<p>아이디 : <%= person.getId() %></p>
	<P>이름 : <%= person.getName() %></P>
</body>
</html>