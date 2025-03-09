<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modulus | Calculate</title>
    <style>
        /* Background Styling */
        body {
            font-family: "Arial", sans-serif;
            background: linear-gradient(to right, #2c3e50, #4ca1af);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Glassmorphism Effect */
        .container {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 12px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.2);
            padding: 30px;
            text-align: center;
            width: 100%;
            max-width: 400px;
            color: white;
        }

        h2 {
            margin-bottom: 15px;
            font-weight: 600;
        }

        p {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            margin-top: 15px;
        }

        .btn {
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: bold;
            background: rgba(255, 255, 255, 0.2);
            color: white;
            text-decoration: none;
            margin: 5px;
            display: inline-block;
        }

        .btn:hover {
            background: rgba(255, 255, 255, 0.4);
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Modulus Calculation Result</h2>

    <jsp:useBean id="ib" class="Calculator.InputBean" scope="session"/>
    <jsp:setProperty property="value1" param="V1" name="ib"/>
    <jsp:setProperty property="value2" param="V2" name="ib"/>

    <%
        double v1 = ib.getValue1();
        double v2 = ib.getValue2();
        double result = 0.0;

        if (v2 == 0) {
    %>
        <p style="color: red;">Error: Modulus by zero is not allowed.</p>
    <%
        } else {
            result = v1 % v2;
    %>
        <p>Modulus of <%= (int)v1 %> and <%= (int)v2 %> is: <strong><%= (int)result %></strong></p>
    <%
        }
    %>

    <div class="btn-container">
        <a href="input.html" class="btn">Go Back</a>
    </div>
</div>

</body>
</html>
