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
			<table>
				<tr>
					<th>사용자 이름</th>
					<td><%=principalUser.getUsername() %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%=principalUser.getName() %></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><%=principalUser.getEmail() %></td>
				</tr>
			</table>
			
			<div>
				<button type="button" class="profile-update-btn">회원 정보 수정</button>
				<button type="button" class="password-update-btn">비밀번호 변경</button>
				<button type="button" class="membership-withdrawal">회원 탈퇴</button>
				<button type="button" class="logout-btn">로그아웃</button>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		const profileUpdateBtn = document.querySelector(".profile-update-btn");
		const passwordUpdateBtn = document.querySelector(".password-update-btn");
		const membershipWithdrawal = document.querySelector(".membership-withdrawal");
		const logoutBtn = document.querySelector(".logout-btn");
	
		profileUpdateBtn.onclick = () => {
			location.href = "/JspStudy_7290/profile/update";
		}

		passwordUpdateBtn.onclick = () => {
			location.href = "/JspStudy_7290/profile/update/password";
		}
	
		membershipWithdrawal.onclick = () => {
			let flag = confirm("정말 회원탈퇴 하시겠습니까?");
			if(flag == true){
			
			location.href = "/JspStudy_7290/profile/delete";
			}
		}
		
		logoutBtn.onclick = () => {
			location.href = "/JspStudy_7290/auth/logout";
		}
	
	
	</script>
	
</body>
</html>









