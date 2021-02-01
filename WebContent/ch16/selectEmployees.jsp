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
	<%
	Connection conn = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/employees?serverTimezone=UTC";
		String userId = "springb";
		String userPw = "asdf1234";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, userId, userPw);
		
		Statement stmt = conn.createStatement();
		String query = "SELECT * FROM employees WHERE first_name = 'Mario'";
		ResultSet rs = stmt.executeQuery(query);
		
		while (rs.next()) {
			out.print(rs.getString("emp_no") + " ");
			out.print(rs.getString("first_name") + " ");
			out.print(rs.getString("last_name")+ "<br>");
		}
		
		if (rs != null){
			rs.close();
		}
		
		if (stmt != null) {
			stmt.close();	
		}
	}
	
	catch (SQLException e) {
		out.println("데이터 베이스 연결이 실패했습니다. <br>");
		out.println("SQLException : " + e.getMessage());
	}
	finally {
		if (conn != null) {
			conn.close();
		}
	}
	%>
</body>
</html>