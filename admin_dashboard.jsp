<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*,dao.DBConnection" %>
<%
  String admin = (String) session.getAttribute("admin");
  if (admin == null) { response.sendRedirect("admin_login.jsp"); return; }
%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
  <h3>Admin Dashboard</h3>
  <a class="btn btn-danger mb-3" href="logout">Logout</a>

  <h5>All Orders</h5>
  <%
    try (Connection con = DBConnection.getConnection();
         PreparedStatement ps = con.prepareStatement("SELECT o.*, u.name FROM orders o JOIN users u ON o.user_id = u.user_id ORDER BY o.order_date DESC");
         ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
  %>
    <div class="card p-2 mb-2">
      <p>Order ID: <%= rs.getInt("order_id") %> | User: <%= rs.getString("name") %> | Total: ₹ <%= rs.getDouble("total_price") %> | Status: <%= rs.getString("status") %></p>
    </div>
  <%
        }
    } catch (Exception e) { e.printStackTrace(); }
  %>
</div>
</body>
</html>
