<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스트립틀릿</title>
</head>
<body>
	<%
		for(int i = 0; i <= 10; i++) {
			out.print("<h3>"+i+"</h3>");
		}
	%>
	<hr>
	<%
		for(int i = 0; i <= 10; i++) {
	%>
		<h3><%= i %></h3>
	<%
		}
	%>
</body>
</html>