<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="student.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	Student student = (Student)request.getAttribute("student");
%>


	학교명 : <%=student.getSchoolName() %><br>
	학생이름 : <%=student.getName() %><br>
	학년 : <%=student.getStudentYear() %><br>
	학과 : <%=student.getDepartment() %><br>
	학점 : <span><%=student.getGrade() %></span>
</body>
</html>