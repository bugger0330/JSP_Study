<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
	서블릿 요청주소 : /signin
 -->
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style type="text/css">
	#container{
		margin:0px auto;
		position:relative;
		border:1px solid black;
		display:flex;
		flex-direction:column;
		justify-content: center;
		align-items: center;
		width:600px;
		height: 300px;
	}
	.item-input{
		
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.item-lable{
		width: 100px;
		text-align: right;
		padding-right: 10px; 
	}

	button{
		position:absolute;
		right:160px;
		border: none;
		background-color:blue; 
		color:white;
		display: inline-block;
		margin-top: 10px;
	}
</style>
</head>
<body>
	<div id="container">
		<div>
			<h1>회원가입</h1>
		</div>
		<form action="/JspStudy_7290/auth/signup" method="post">
		<div>
			<div class="item-input">
				<label class="item-lable">이메일</label>
				<input type="text" name="email">
			</div>
			<div class="item-input">
				<label class="item-lable">이름</label>
				<input type="text" name="name">
			</div>
			<div class="item-input">
				<label class="item-lable">아이디</label>
				<input type="text" name="username">
			</div>
			<div class="item-input">
				<label class="item-lable">비밀번호</label>
				<input type="password" name="password">
			</div>
			<button type="button" class="signup-button">회원가입</button>
		</div>
	</form>
	</div>
	
	<script type="text/javascript" src="/JspStudy_7290/static/js/signup.js"></script>
</body>
</html>















