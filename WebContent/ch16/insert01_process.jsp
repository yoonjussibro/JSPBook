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
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		Statement stmt = null;
		
		try {
		    String query = "INSERT INTO member ";
		    query += "(id, passwd, name)";
		    query += "VALUES";
		    query += "(" + id + ", '" + pw + "', '" + name + "')";
		    
		    stmt = conn.createStatement();
		    /* executeQuery : select문 사용 시 사용,
		    반환값이 ResultSet 타입, 실제 데이터를 가져오기 때문에 ResultSet 타입으로 반환 */
		    /* executeUpdate : update, delete, insert 시 사용 반환값이,
		    int 타입, 실행결과가 XX행 실행 형태이기 때문에 int 타입으로 반환 */

		    /* stmt.execute(query);
		    out.println("member 테이블 삽입이 성공했습니다."); */
		    
		    int result = stmt.executeUpdate(query);
		    out.println("member 테이블에 " + result + "행 삽입을 성공했습니다.");
		}
		catch (SQLException ex) {
		    out.println("member 테이블 삽입이 실패했습니다.<br>");
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