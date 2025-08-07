<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>form</h2>	<!-- 아이디-aaa, 패스워드-1111, submit : w0807/FormPage post 전송하시오. -->
		<form method="post" action="/w0807/FormPage">
			<label>아이디 </label>
			<input type="text" name="id">
			<br>
			<label>비밀번호</label>
			<input type="password" name="pw">
			<br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>