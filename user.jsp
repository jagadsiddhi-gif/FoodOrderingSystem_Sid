
<%@ include file="navbar.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet" type="text/css"/>
<title>User Profile</title>
</head>
<body>
<div class="container mt-4">
  <h2>User Profile</h2>
  <div class="card p-3">
    <form method="post" action="UpdateProfileServlet">
      <div class="mb-3">
        <label class="form-label">Name</label>
        <input type="text" name="name" class="form-control" value="${sessionScope.userName}" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="email" name="email" class="form-control" value="${sessionScope.userEmail}" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Phone</label>
        <input type="text" name="phone" class="form-control" value="${sessionScope.userPhone}" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Password (leave blank to keep unchanged)</label>
        <input type="password" name="password" class="form-control">
      </div>
      <button class="btn btn-success" type="submit">Save Changes</button>
    </form>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
