<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기 파라미터 필터 요청</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	%>
	<p>아이디 : <%=username %></p>
	<p>비밀번호 : <%=password %></p>
</body>
</html>