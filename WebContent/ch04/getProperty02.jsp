<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.Person" scope="page" />
	<jsp:setProperty name="person" property="id" value="20201219"/>
	<jsp:setProperty name="person" property="name" value="홍길동" />
	<p>아이디 : <jsp:getProperty name="person" property="id"/></p>
	<p>이름 :<jsp:getProperty property="name" name="person"/></p>
</body>
</html>