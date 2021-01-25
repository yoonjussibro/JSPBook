<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./fileupload02_process.jsp" method="post" enctype="multipart/form-data">
		<label>이 름1 : </label>
		<input type="text" name="name1" id="name1"><br>
		<label for="subject1">제 목1 : </label>
		<input type="text" name="subject1" id="subject1"><br>
		<label for="file1">파 일 1 :</label>
		<input type="file" name="file1" id="file1"><br>
		<label>이 름2 : </label>
		<input type="text" name="name2" id="name2"><br>
		<label for="subject2">제 목2 : </label>
		<input type="text" name="subject2" id="subject2"><br>
		<label for="file2">파 일 2 :</label>
		<input type="file" name="file2" id="file2"><br>
		<label>이 름3 : </label>
		<input type="text" name="name3" id="name3"><br>
		<label for="subject3">제 목3 : </label>
		<input type="text" name="subject3" id="subject3"><br>
		<label for="file3">파 일 3 :</label>
		<input type="file" name="file3" id="file3"><br>
		
		<input type="submit" value="파일 올리기">
		
	</form>
</body>
</html>