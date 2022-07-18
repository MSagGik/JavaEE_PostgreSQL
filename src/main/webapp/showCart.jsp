<%@ page import="com.example.javaeetest.logic.somePackage.Cart" %><%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 15.07.2022
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show cart</title>
</head>
<body>
    <% Cart cart = (Cart) session.getAttribute("cart"); %>
    <p> Наименование: <%= cart.getName() %> </p>
    <p> Количество: <%= cart.getQuantity() %> </p>
</body>
</html>
