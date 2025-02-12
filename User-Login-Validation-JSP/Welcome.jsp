<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Page</title>
</head>
<body>


<%
String username = request.getParameter("Name");

out.println("<h2 style='font-family: sans-serif; color:green;'>Successfully login!!<h2>");
out.println("<h3 style='font-family: sans-serif; '>Welcome, "+ username +" to JSP World...</h3>");
%>


</body>
</html>