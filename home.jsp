<%@ page import="dao.FoodDAO,model.FoodItem,model.User,java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  User u = (User) session.getAttribute("user");
  if (u == null) { response.sendRedirect("login.jsp"); return; }
  FoodDAO dao = new FoodDAO();
  List<FoodItem> foods = dao.getAllFoods();
%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
  <div class="d-flex justify-content-between align-items-center">
    <h3>Welcome, <%= u.getName() %></h3>
    <div>
      <a class="btn btn-outline-secondary" href="cart.jsp">Cart</a>
      <a class="btn btn-outline-danger" href="logout">Logout</a>
    </div>
  </div>

  <!-- Search bar (simple) -->
  <form method="get" action="home.jsp" class="my-3">
    <div class="input-group">
      <input class="form-control" name="q" placeholder="Search food...">
      <button class="btn btn-primary">Search</button>
    </div>
  </form>

  <div class="row">
    <% 
      String q = request.getParameter("q");
      for (FoodItem f : foods) {
        if (q != null && !q.trim().isEmpty()) {
          if (!f.getName().toLowerCase().contains(q.toLowerCase())) continue;
        }
    %>
    <div class="col-md-4 mb-3">
      <div class="card">
        <img src="<%= f.getImageUrl() %>" class="card-img-top" alt="img">
        <div class="card-body">
          <h5 class="card-title"><%= f.getName() %></h5>
          <p class="card-text"><%= f.getDescription() %></p>
          <p class="card-text">₹ <%= f.getPrice() %></p>
          <form method="post" action="add-to-cart">
            <input type="hidden" name="food_id" value="<%= f.getFoodId() %>">
            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" style="width:100px;">
            <button class="btn btn-sm btn-success">Add to cart</button>
          </form>
        </div>
      </div>
    </div>
    <% } %>
  </div>
</div>
</body>
</html>
