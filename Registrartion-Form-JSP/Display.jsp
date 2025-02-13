<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP File</title>
</head>
<body>

<%
String uname = request.getParameter("UName");
int password = Integer.parseInt(request.getParameter("Password"));
String fName =  request.getParameter("FName");
String lName =  request.getParameter("LName");
String city =  request.getParameter("City");
String state =  request.getParameter("State");
int pincode = Integer.parseInt(request.getParameter("Pincode"));
String mailId = request.getParameter("MailId");
long phnNo = Long.parseLong(request.getParameter("PhnNo"));

out.print("<h2 style='font-family: sans-serif'><strong>******* User Details ******* </strong></h2>");
out.print("<h4 style='font-family: sans-serif'><strong>Name: </strong>"+ uname +"</h4>");
out.print("<h4 style='font-family: sans-serif'><strong>Password: </strong>"+ password +"</h4>");
out.print("<h4 style='font-family: sans-serif'><strong>First Name: </strong>"+ fName +" </h4>");
out.print("<h4 style='font-family: sans-serif'><strong>Last Name:  </strong>"+ lName +"</h4>");
out.print("<h4 style='font-family: sans-serif'><strong>City:  </strong>"+ city +"</h4>");
out.print("<h4 style='font-family: sans-serif'><strong>State:  </strong>"+ state +"</h4>");
out.print("<h4 style='font-family: sans-serif'><strong>Pincode: </strong>  "+ pincode +"</h4>");
out.print("<h4 style='font-family: sans-serif'><strong>Mail-Id: </strong> "+ mailId +"</h4>");
out.print("<h4 style='font-family: sans-serif'><strong>Phone No: </strong> "+ phnNo +"</h4>");

%>
</body>
</html>