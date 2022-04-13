<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/JspStudy_7290/study/request/controller/user_info_controller.jsp" method="get">
	사용자아이디: <input type="text" name="username"><br>
	연락처: <input type="text" name="phone"><br>
	이메일: <input type="text" name="email"><br>
	주소: <input type="text" name="address"><br>
	
	<input type="checkbox" name="select" value="off">취업
	<input type="checkbox" name="select" value="off">공부
	<input type="checkbox" name="select" value="off">취미
	<button>전송</button>
	</form>
</body>
</html>