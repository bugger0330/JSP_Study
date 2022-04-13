<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/JspStudy_7290/study/student/controller/studentController.jsp" method="get">
	학교명 : <input type="text" name="schoolName"><br>
	학생이름 : <input type="text" name="name"><br>
	학년 : <input type="text" name="studentYear"><br>
	학과 : <input type="text" name="department"><br>
	학점 : 
	<select name="grade">
		<option value="A+">A+</option>
		<option value="A">A</option>
		<option value="B+">B+</option>
		<option value="B">B</option>
		<option value="C+">C+</option>
		<option value="C">C</option>
		<option value="D+">D+</option>
		<option value="D">D</option>
		<option value="F">F</option>
	</select>
	<br>
	<button>등록</button>
	
	<script type="text/javascript" src="js/grade.js"></script>
	</form>

</body>
</html>