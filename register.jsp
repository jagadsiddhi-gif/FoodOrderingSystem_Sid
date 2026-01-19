<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Register - Foodify</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

  <style>
    body{ font-family:'Poppins',sans-serif; background:linear-gradient(180deg,#fff7f0,#fff3f2); min-height:100vh; display:flex; align-items:center; justify-content:center; padding:30px; }
    .card-register{ width:100%; max-width:520px; border-radius:14px; padding:28px; box-shadow:0 10px 30px rgba(238,9,121,0.08); background:linear-gradient(180deg,#ffffff,#fff9f8); }
    .brand{ font-weight:700; color:#ee0979; font-size:1.35rem; margin-bottom:6px; }
    .submit-btn{ background:linear-gradient(90deg,#ff6a00,#ee0979); border:none; color:#fff; border-radius:10px; padding:10px 18px; width:100%; font-weight:600; }
    .muted-link{ color:#6b4a4a; }
  </style>
</head>
<body>
  <div class="card-register">
    <div class="text-center mb-3">
      <div class="brand">Foodify</div>
      <h4>Create your account</h4>
    </div>

    <form method="post" action="register">
      <div class="mb-3">
        <input class="form-control" name="name" placeholder="Full name" required>
      </div>
      <div class="mb-3">
        <input class="form-control" name="email" type="email" placeholder="Email address" required>
      </div>
      <div class="mb-3">
        <input class="form-control" name="password" type="password" placeholder="Password" required>
      </div>
      <div class="mb-3">
        <input class="form-control" name="phone" placeholder="Phone (optional)">
      </div>

      <button class="submit-btn" type="submit">Register</button>
    </form>

    <p class="text-center mt-3 muted-link">Already registered? <a href="login.jsp" style="color:#ee0979; font-weight:600;">Login</a></p>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
