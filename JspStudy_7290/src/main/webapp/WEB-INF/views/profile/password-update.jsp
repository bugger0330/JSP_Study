<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<form action="/JspStudy_7290/">
			<table>
				<tr>
					<th>이전 비밀번호 확인</th>
					<td><input type="password"></td>
				</tr>
				<tr>
					<th>새 비밀번호</th>
					<td><input type="password"></td>
				</tr>
				<tr>
					<th>새 비밀번호 확인</th>
					<td><input type="password"></td>
				</tr>
			</table>
			
			<div>
				<button type="button">비밀번호 변경</button>
				<button type="button">회원정보 수정하기</button>
			
			</div>
			</form>
		</div>
	</div>
</body>
</html>