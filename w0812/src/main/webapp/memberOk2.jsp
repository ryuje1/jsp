<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px;}
		  table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
	 <table>
		   <tr>
		   		<th colspan="2">session - 표현식</th>
		   </tr>
		   <tr>
		   		<td>아이디</td>
		   		<td><%= session.getAttribute("session_id") %></td>
		   </tr>
		   <tr>
		   		<td>패스워드</td>
		   		<td><%= session.getAttribute("session_pw") %></td>
		   </tr>
		   <tr>
		   		<td>닉네임</td>
		   		<td><%= session.getAttribute("session_nicName") %></td>
		   </tr>
		   <tr>
		   		<th colspan="2"><a href="./form2.jsp">session 이동</a></th>
		   </tr>
	 </table>
	 <br>
	 <table>
		   <tr>
		   		<th colspan="2">session - EL태그</th>
		   </tr>
		   <tr>
		   		<td>아이디</td>
		   		<td>${sessionScope.session_id}</td>
		   </tr>
		   <tr>
		   		<td>패스워드</td>
		   		<td>${session_pw}</td>
		   </tr>
		   <tr>
		   		<td>닉네임</td>
		   		<td>${session_nicName}</td>
		   </tr>
		   <tr>
		   		<th colspan="2"><a href="./form2.jsp">session 이동</a></th>
		   </tr>
	 </table>
	</body>
</html>