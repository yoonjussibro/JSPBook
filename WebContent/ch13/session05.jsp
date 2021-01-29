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
	<%
		for(int i = 0; i < 5; i++) {
		    String name = "sessionName" + i;
		    String value = name + " value(" + i + ")";
		    
		    session.setAttribute(name, value);
		}
	%>
	
	<h3>---- 세션을 삭제하기 전 ----</h3>
	
	<%
		String name;
		String value;
		
		Enumeration<String> en = session.getAttributeNames();
		int i = 0;
		
		while (en.hasMoreElements()) {
		    i++;
		    name = en.nextElement().toString();
		    value = session.getAttribute(name).toString();
		    out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
		    out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}
		
		session.removeAttribute("sessionName1");
		session.removeAttribute("sessionName2");
		
	%>
	
	<h3>---- 세션을 삭제한 후 ----</h3>
	
	<%
		en = session.getAttributeNames();
		
		i = 0;
		while (en.hasMoreElements()) {
		    i++;
		    name = en.nextElement().toString();
		    value = session.getAttribute(name).toString();
		    out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
		    out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>