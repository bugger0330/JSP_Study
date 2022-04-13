<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = 90;
	char grade = ' '; 
	if(num > 89){
		grade = 'A';
	}else if(num > 79){
		grade = 'B';
	}else if(num > 69){
		grade = 'C';
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><%=grade %></p>
	

</body>
</html>