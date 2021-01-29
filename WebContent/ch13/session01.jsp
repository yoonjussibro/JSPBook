<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="session01_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id">
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw">
		<button type="submit">전송</button>
	</form>
	
	<br><hr><br>
	
	<%
		// 세션 내용을 저장할 변수
		String id = null; 
		String pw = null;
		
		// 해당 세션의 데이터가 존재 시 변수에 저장
		if (session.getAttribute("userID") != null) {
		    // 세션에 저장되는 데이터는 모두 object 타입
		    // 세션에 저장된 내용은 타입 변환을 통해서 일반 변수에 저장
			id = session.getAttribute("userID").toString();
		}
		
		if (session.getAttribute("userPW") != null) {
		    pw = session.getAttribute("userPW").toString();
		}
		
		//화면 출력
		out.println("아이디 : " + id + "<br>");
		out.println("비밀번호 : " + pw + "<br>");
	%>
</body>
</html>