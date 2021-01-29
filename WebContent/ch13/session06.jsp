<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>---- 세션을 삭제하기 전 ----</h3>
	<%
	
		String name = null;
		String value = null;
		
		Enumeration<String> en = session.getAttributeNames();
		int i = 0;
		
		while (en.hasMoreElements()) {
		    name = en.nextElement().toString();
		    value = session.getAttribute(name).toString();
		    out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
		    out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}

		/* String user_id = (String)session.getAttribute("userID");
		String user_pw = (String)session.getAttribute("userPW");
		
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 이름 userPW : " + user_pw + "<br>"); */
		
		if (request.isRequestedSessionIdValid() == true) {
		    out.print("세션이 유효합니다.");
		}
		else {
		    out.print("세션이 유효하지 않습니다.");
		}
		
		session.invalidate();
	%>
	
	<h3>---- 세션을 삭제한 후 ----</h3>
	
	<%
		if (request.isRequestedSessionIdValid() == true) {
		    out.print("세션이 유효합니다.");
		}
		else {
		    out.print("세션이 유요하지 않습니다.");
		}
	%>
</body>
</html>