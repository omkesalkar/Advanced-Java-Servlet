<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP File</title>
</head>
<body>
<%@include file="User_Info.html" %>

<%
int id = Integer.parseInt(request.getParameter("Id"));
String fName = request.getParameter("FName");
String lName = request.getParameter("LName");
String mailId = request.getParameter("MailId");
long phnNo = Long.parseLong(request.getParameter("MobNo"));

out.println("<h3 style='font-family: sans-serif; '><strong><u> User Details </u></strong></h3>");
out.println("<p style='font-family: sans-serif;'><b>User Id: "+ id +"</b></p>");
out.println("<p style='font-family: sans-serif;'><b>User FName: "+ fName +"</b></p>");
out.println("<p style='font-family: sans-serif;'><b>User LName: "+ lName +"</b></p>");
out.println("<p style='font-family: sans-serif;'><b>User MailId: "+ mailId +"</b></p>");
out.println("<p style='font-family: sans-serif;'><b>User PhnNo: "+ phnNo +"</b></p>");
%>
</body>
</html>