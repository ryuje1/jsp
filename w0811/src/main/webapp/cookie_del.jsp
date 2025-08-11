<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 확인</title>
		<style>
			table, th, td{border:1px solid black;}
			table{width:600px; margin:20px auto; border-collapse:collapse;}
			th, td{height:50px; text-align:center;}
		</style>
	</head>
	<body>
		<%
			// 모든 쿠키 출력
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies) {
		%>	
		
		<table>
			<tr>
				<th>번호</th>
				<th>쿠키값</th>
			</tr>
			<tr>
				<td><%= cookie.getName() %></td>
				<td><%= cookie.getValue() %></td>				
			</tr>
		</table>
		
		<% } %>
		
		<%
			for(Cookie cookie:cookies) {
				cookie.setMaxAge(0);		// 쿠키삭제지정
				response.addCookie(cookie);	// 쿠키삭제저장
			}
		%>
		
		<a href="./cookie_alldel.jsp">쿠키 모두삭제</a>
		
	</body>
</html>