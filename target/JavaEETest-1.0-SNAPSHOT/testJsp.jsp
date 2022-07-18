<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 15.07.2022
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First JSP </title>
</head>
<body>
    <h1>Testing JSP</h1>
    <p>
        <% java.util.Date now = new java.util.Date();
           String someString = "Текущая дата : " + now;
        %>
        <%= someString %>
        <% for (int i = 0; i < 10; i++) {
            out.println("<p>" +"Hello: " + i + "</p>");
            };
        %>

        <%@ page import="com.example.javaeetest.logic.TestClass" %>
        <% TestClass testClass = new TestClass(); %>
        <%= testClass.getInfo() %>


        <%
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
        %>
        <%= "Hello, " + name + " " + surname %>


    </p>
</body>
</html>
