<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Admin Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-5">
  <h2>Admin Login</h2>
  <form method="post" action="admin-login">
    <div class="mb-3"><input class="form-control" name="username" placeholder="Username"></div>
    <div class="mb-3"><input class="form-control" name="password" type="password" placeholder="Password"></div>
    <button class="btn btn-primary">Login</button>
  </form>
</div>
</body>
</html>
