<%@ page import="java.util.Map,dao.FoodDAO,model.FoodItem,model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  User u = (User) session.getAttribute("user");
  if (u == null) { response.sendRedirect("login.jsp"); return; }
  Map<Integer,Integer> cart = (Map<Integer,Integer>) session.getAttribute("cart");
  FoodDAO dao = new FoodDAO();
%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Cart</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
  body {
    font-family: 'Poppins', sans-serif;
    background-image: url('images/banner.jpg'); /* change path as needed */
    background-size: cover;        /* makes image fill the page */
    background-repeat: no-repeat;  /* no tiling */
    background-attachment: fixed;  /* keeps it fixed on scroll */
    background-position: center;   /* centers the image */
    color: #222;                   /* optional: makes text visible */
  }

  .container {
    background-color: rgba(255, 255, 255, 0.85); /* semi-transparent white box */
    border-radius: 10px;
    padding: 20px;
  }
</style>

</head>
<body>
<div class="container py-4">
  <h3>Your Cart</h3>
  <a class="btn btn-secondary mb-3" href="home.jsp">Continue shopping</a>
  <%
    double total = 0;
    if (cart != null && !cart.isEmpty()) {
  %>
  <table class="table">
    <thead><tr><th>Item</th><th>Qty</th><th>Price</th></tr></thead>
    <tbody>
    <%
      for (Integer fid : cart.keySet()) {
        FoodItem f = dao.getById(fid);
        int q = cart.get(fid);
        double p = f.getPrice() * q;
        total += p;
    %>
      <tr>
        <td><%= f.getName() %></td>
        <td><%= q %></td>
        <td>₹ <%= p %></td>
      </tr>
    <% } %>
    </tbody>
  </table>
  <h4>Total: ₹ <%= total %></h4>
  <form method="post" action="place-order">
    <button class="btn btn-primary">Place Order</button>
  </form>
  <% } else { %>
    <p>Your cart is empty.</p>
  <% } %>
</div>
</body>
</html>
