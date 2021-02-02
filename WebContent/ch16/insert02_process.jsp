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
	<%@
		include file = "dbconn.jsp" 
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		String userName = request.getParameter("name");
		String Pw = request.getParameter("pw");
		
		PreparedStatement pmt = null;
		
		try {
		    String query = "INSERT INTO member ";
		    query += "(name, passwd) ";
		    query += "VALUES (?, ?)";
		    
		    pmt = conn.prepareStatement(query);
		    pmt.setString(1, userName);
		    pmt.setString(2, Pw);
		    
		    int result = pmt.executeUpdate();
		    out.println("member 테이블에 데이터를 " + result + "개 추가하였습니다.");
		    
		}
		catch (SQLException ex) {
		    out.println("member 테이블에 데이터 추가를 실패했습니다. <br>");
		    out.println("SQLException : " + ex.getMessage());
		}
		finally {
		    if (pmt != null) {
				pmt.close();
		    }
		    if (pmt != null) {
				conn.close();
		    }
		}
	%>
</body>
</html>