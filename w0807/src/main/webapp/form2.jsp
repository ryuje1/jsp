<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>html -> servlet</title>
	</head>
	<body>
		<form method="post" action="/w0807/FormPage">
			<label>아이디 </label>
			<input type="text" name="id">
			<br>
			<label>이름  </label>
			<input type="text" name="name">
			<br>
			<label>비밀번호</label>
			<input type="password" name="pw">
			<br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>