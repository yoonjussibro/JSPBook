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
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	
	if (userID.equals("admin") && userPW.equals("1234")) {
	    response.sendRedirect("response01_succes.jsp");
	}
	else {
	    response.sendRedirect("response01_failed.jsp");
	}
	%>
</body>
</html>