
<%@ include file="navbar.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
<title>Order Confirmation</title>
</head>
<body>
<div class="container mt-4">
  <div class="card p-4">
    <h3>Thank you! Your order has been placed.</h3>
    <p>Your Order Number: <strong>${requestScope.orderNumber}</strong></p>
    <p>We have emailed the order details to: <strong>${sessionScope.userEmail}</strong></p>
    <a href="home.jsp" class="btn btn-primary">Continue Shopping</a>
  </div>
</div>
</body>
</html>
