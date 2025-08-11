<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키</title>
	</head>
	<body>
		<h2>cook_id, cook_name 쿠키를 저장합니다.</h2>
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
		 <% } %>
		
		<%
			Cookie cookie = new Cookie("cookie_id", "aaa");
			Cookie cookie2 = new Cookie("cookie_name", "홍길동");
			// 쿠키 시간설정
			cookie.setMaxAge(60*10);	 // 60초 X 10분 = 10분
			cookie2.setMaxAge(60*60*24); // 60초 X 60분 X 24시간 = 1일
			// 사용자 컴퓨터에 저장
			response.addCookie(cookie);
			response.addCookie(cookie2);
		%>
		<a href="./cookie.jsp">쿠키 확인페이지 이동</a>
	</body>
</html>