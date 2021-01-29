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
		session.setAttribute("userID", "admin");
		session.setAttribute("userPW", "1234");
	%>
	
	<h3>---- 세션을 삭제 하기 전 ----</h3>
	
	<%
		String user_id = (String)session.getAttribute("userID");
		String user_pw = (String)session.getAttribute("userPW");
		out.println("설정된 세션이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : "  + user_pw + "<br>");
		
		/* 지정된 세션을 삭제 */
		session.removeAttribute("userID");
	
	%>
	
	<h3>---- 세션을 삭제한 후 ----</h3>
	
	<%
		user_id = (String)session.getAttribute("userID");
		user_pw = (String)session.getAttribute("userPW");
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");
	%>
</body>
</html>