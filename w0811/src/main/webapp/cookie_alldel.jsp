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
			if(cookies != null){
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
		
		<% }//for
				} else { %>
					<table>
					<tr>
						<th>번호</th>
						<th>쿠키값</th>
					</tr>
					<tr>
						<td colspan="2">쿠키가 존재하지 않습니다.</td>
					</tr>
				</table>
				<%}%>
		
		<a href="./p05.jsp">다시 시작</a>
		
		
		
	</body>
</html>