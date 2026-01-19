<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Login - Foodify</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

  <style>
    body { font-family:'Poppins',sans-serif; min-height:100vh; display:flex; align-items:center; justify-content:center; background:linear-gradient(180deg,#fff7f0,#fff3f2); padding:24px; }
    .login-card { width:100%; max-width:440px; border-radius:16px; padding:34px; background:rgba(255,255,255,0.95); box-shadow:0 12px 30px rgba(0,0,0,0.08); }
    h2 { color:#ee0979; font-weight:700; margin-bottom:6px; text-align:center; }
    .btn-login { width:100%; background:linear-gradient(90deg,#ff6a00,#ee0979); border:none; color:#fff; border-radius:12px; padding:10px 12px; font-weight:600; }
    .link-muted { text-align:center; margin-top:12px; color:#6b4a4a; }
  </style>
</head>
<body>
  <div class="login-card">
    <h2>Welcome back</h2>
    <p class="text-center text-muted mb-4">Login to continue to Foodify</p>

    <form method="post" action="login">
      <div class="mb-3">
        <input class="form-control" name="email" type="email" placeholder="Email" required>
      </div>
      <div class="mb-3">
        <input class="form-control" name="password" type="password" placeholder="Password" required>
      </div>

      <button class="btn-login" type="submit">Login</button>
    </form>

    <div class="link-muted">
      <p>Don't have an account? <a href="register.jsp" style="color:#ee0979; font-weight:600;">Sign up</a></p>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
