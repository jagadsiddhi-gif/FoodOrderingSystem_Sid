<%@ page import="java.sql.*,dao.DBConnection,model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  User u = (User) session.getAttribute("user");
  if (u == null) { response.sendRedirect("login.jsp"); return; }
%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Order History</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
  <h3>Order History</h3>
  <a class="btn btn-secondary mb-3" href="home.jsp">Back to Home</a>
  <%
    try (Connection con = DBConnection.getConnection();
         PreparedStatement ps = con.prepareStatement("SELECT * FROM orders WHERE user_id=? ORDER BY order_date DESC")) {
        ps.setInt(1, u.getUserId());
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
  %>
    <div class="card mb-2 p-3">
      <p>Order ID: <%= rs.getInt("order_id") %> | Total: ₹ <%= rs.getDouble("total_price") %> | Date: <%= rs.getTimestamp("order_date") %></p>
    </div>
  <%
            }
        }
    } catch (Exception e) { e.printStackTrace(); }
  %>
</div>
</body>
</html>
