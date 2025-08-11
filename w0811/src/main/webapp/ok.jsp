<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table, th, td{border:1px solid black;}
			table{width:600px; margin:20px auto; border-collapse:collapse;}
			th, td{height:50px; text-align:center;}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th colspan="2" style="color:blue;">성인입니다.</th>
			</tr>
			<tr>
				<th>나이</th>
				<td><%= request.getParameter("age") %></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><%= request.getParameter("name") %></td>
			</tr>
		</table>
	</body>
</html>