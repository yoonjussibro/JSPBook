<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		
		
		Statement stmt = null;
		
		try {
		    String query = "DELETE FROM ";
		    query += "member ";
		    query += "WHERE ";
		    query += "id" + "=" + id;
		    
		    stmt = conn.createStatement();
		    stmt.execute(query);
		    out.println("member 테이블의 데이터 삭제에 성공했습니다.");
		}
		catch (SQLException ex) {
		    out.println("member 테이블의 데이터 삭제에 실패했습니다.<br>");
		    out.println("SQLException : " + ex.getMessage());
		}
		finally {
		    if (stmt != null)
				stmt.close();
		    if (conn != null)
				conn.close();
		}
	%>
</body>
</html>