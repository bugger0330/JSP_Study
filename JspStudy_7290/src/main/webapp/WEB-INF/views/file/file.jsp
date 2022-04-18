<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/JspStudy_7290/static/css/file-upload.css">
<link rel="stylesheet" href="/JspStudy_7290/static/css/style.css">
</head>
<body>
	<div id="container">
	<form action="/JspStudy_7290/file-upload" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>미리보기</td>
			</tr>
			<tr>
				<td class="preview-img"></td>
			</tr>
			<tr>
				<td>파일 업로드</td>
			</tr>
			<tr>
				<td><input type="file" class="file-upload" name="file" multiple="multiple"></td>
			</tr>
		</table>
		<button>이미지 업로드</button>
	</form>
	<a download href="/JspStudy_7290/static/fileupload/0053bd1ecc2549b193be69dfafe6658d_auth_main.png">이미지 다운로드</a>
	<!--  <img alt="" src="/JspStudy_7290/static/fileupload/0053bd1ecc2549b193be69dfafe6658d_auth_main.png">-->
	
	</div>
	<script type="text/javascript" src="/JspStudy_7290/static/js/file.js"></script>
</body>
</html>