<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	%>
	
	<p>입력된 id 값 : <%= id %></p>
	<p>입력된 pw 값 : <%= passwd %></p>
</body>
</html>