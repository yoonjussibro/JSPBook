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
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW"); 
	%>
	
	<P> 아이디 : <% out.println(userID); %></P>
	<P> 비밀번호 : <% out.println(userPW); %></P>
</body>
</html>