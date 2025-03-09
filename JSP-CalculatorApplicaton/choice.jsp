<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choice</title>
</head>
<body>

<jsp:useBean id="ib" class="Calculator.InputBean" scope="session"/>

<jsp:setProperty property="value1" param="V1" name="ib"/>
<jsp:setProperty property="value2" param="V2" name="ib"/>

<% 
String operation = request.getParameter("operation");

if("Addition".equals(operation))
{
%>
	<jsp:forward page="Addition.jsp"/>
<%
}
else if("Subtraction".equals(operation))
{
%>
	<jsp:forward page="Substraction.jsp"/>
<%
}
else if("Multiplication".equals(operation))
{
%>
	<jsp:forward page="Multiplication.jsp"/>
<%
}
else if("Average".equals(operation))
{
%>
	<jsp:forward page="Average.jsp"/>
<%
}
else if("Division".equals(operation))
{
%>
	<jsp:forward page="Division.jsp"/>
<%
}
else if("Modulus".equals(operation))
{
%>
	<jsp:forward page="Modulus.jsp"/>
<%
}
else
{
	out.println("Opertion are not loaded");
}
%>

</body>
</html>