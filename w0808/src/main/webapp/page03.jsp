<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>선언식, 표현식</title>
	</head>
	<body>
		<%! 
			int num = 0;
			String str = "abc";
			Date today = new Date();
		%>
		
		<%! 
			public int sum(int a, int b){
				return a+b;
			}
		%>
		
		<% 
			out.println("num : "+num+"<br>");
			out.println("date : "+today+"<br>");
			out.println("메소드 호출 : "+sum(10,5)+"<br>");
		%>
		
		<table>
			<tr>
				<td>번호</td>
				<td>값</td>
			</tr>
			<tr>
				<td>num</td>
				<td><% out.println(num); %></td>
			</tr>
			<tr>
				<td>num</td>
				<td><%= num %></td>
			</tr>
		</table>
		
		
	</body>
</html>