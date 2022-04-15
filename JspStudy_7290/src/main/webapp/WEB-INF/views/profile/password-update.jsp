<%@page import="repository.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User principalUser = (User)session.getAttribute("principal");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/JspStudy_7290/static/css/style.css">
<link rel="stylesheet" href="/JspStudy_7290/static/css/mypage.css">
</head>
<body>
	
	<div id="container">
		<div class="mypage-items">
			<form action="/JspStudy_7290/profile/update/password" method="post">
			<table>
				<tr>
					<th>이전 비밀번호 확인</th>
					<td><input type="password" class="item-input" name="origin-password"></td>
				</tr>
				<tr>
					<th>새 비밀번호</th>
					<td><input type="password" class="item-input" name="new-password"></td>
				</tr>
				<tr>
					<th>새 비밀번호 확인</th>
					<td><input type="password" class="item-input" name="new-repassword"></td>
				</tr>
			</table>
			
			<div>
				<button type="button" class="password-update-btn">비밀번호 변경</button>
				<button type="button" class="profile-update-btn">회원정보 수정하기</button>
			
			</div>
			</form>
		</div>
	</div>
	<input type="hidden" class="origin-password" value="<%=principalUser.getPassword() %>">
	<script type="text/javascript" src="/JspStudy_7290/static/js/password-update.js"></script>
</body>
</html>