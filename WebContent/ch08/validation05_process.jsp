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
	%>
	
	<p> 아이디 : <%= request.getParameter("userid") %></p>
	<p> 비밀번호 : <%= request.getParameter("userpw") %></p>
	<p> 이름 : <%= request.getParameter("username") %></p>
	<p> 연락처 : <%= request.getParameter("phone1") %>-<%= request.getParameter("phone2") %>-<%= request.getParameter("phone3") %></p>
	<p> 이메일 : <%= request.getParameter("useremail") %></p>
</body>
</html>