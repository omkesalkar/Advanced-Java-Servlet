<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Total Bill</title>
</head>
<body>
<%
String name = request.getParameter("Name");
String crust = request.getParameter("Crust");

String[] toppings = request.getParameterValues("Toppings");
String toppingsList = (toppings != null) ? String.join(", ", toppings) : "None";

String[] appetizer = request.getParameterValues("Appetizer");
String appetizerList = (appetizer != null) ? String.join(", ", appetizer) : "None";

String address = request.getParameter("Address");

String[] cardType = request.getParameterValues("CreditCard");
String cardTypeList = (cardType != null) ? String.join(", ", cardType) : "None";

String creditCardNumber = request.getParameter("Password");
String maskedCardNumber = (creditCardNumber != null && creditCardNumber.length() > 4) ? "**** **** **** " + creditCardNumber.substring(creditCardNumber.length() - 4) : "Invalid Card Number";

out.print("<h2 style='font-family: sans-serif;'>Your Order... </h2><br>");
out.print("<strong style='font-family: sans-serif;'>Address: </strong> " + address + "<br><br>");
out.print("<strong style='font-family: sans-serif;'>Name: </strong>" + name + "<br><br>");
out.print("<strong style='font-family: sans-serif;'>Appetizer: </strong>" + appetizerList + "<br><br>");
out.print("<strong style='font-family: sans-serif;'>Card Type: </strong>" + cardTypeList + "<br><br>");
out.print("<strong style='font-family: sans-serif;'>Crust: </strong>" + crust + "<br><br>");
out.print("<strong style='font-family: sans-serif;'>Card Number: </strong>" + maskedCardNumber + "<br><br>");
out.print("<strong style='font-family: sans-serif;'>Toppings: </strong>" + toppingsList + "<br><br>");
%>
</body>
</html>
