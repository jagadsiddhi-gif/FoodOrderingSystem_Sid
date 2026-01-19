<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Food Ordering System</title>

  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Pacifico&display=swap" rel="stylesheet">

  <!-- Custom Styles -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);
      color: #333;
      min-height: 100vh;
      overflow-x: hidden;
    }

    .hero-section {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      height: 100vh;
      background: url('${pageContext.request.contextPath}/images/banner.jpg') center/cover no-repeat;
      position: relative;
    }

    .hero-overlay {
      position: absolute;
      inset: 0;
      background: rgba(0, 0, 0, 0.55);
    }

    .hero-content {
      position: relative;
      z-index: 1;
      color: #fff;
      padding: 0 20px;
    }

    .hero-title {
      font-family: 'Pacifico', cursive;
      font-size: 3.2rem;
      color: #fff;
      text-shadow: 3px 3px 10px rgba(0, 0, 0, 0.4);
      margin-bottom: 20px;
      animation: fadeInDown 1s ease-in-out;
    }

    .hero-text {
      font-size: 1.2rem;
      margin-bottom: 35px;
      animation: fadeInUp 1.2s ease-in-out;
    }

    .btn-custom {
      font-weight: 600;
      border-radius: 50px;
      padding: 12px 30px;
      color: #fff;
      background: linear-gradient(90deg, #ff6a00, #ee0979);
      border: none;
      transition: all 0.3s ease;
      box-shadow: 0 4px 10px rgba(255, 90, 0, 0.4);
    }

    .btn-custom:hover {
      transform: translateY(-3px);
      box-shadow: 0 6px 20px rgba(255, 90, 0, 0.6);
    }

    .btn-group-custom a {
      margin: 0 10px;
    }

    footer {
      background: #fff;
      text-align: center;
      padding: 15px 0;
      font-size: 0.9rem;
      color: #555;
      position: relative;
      z-index: 2;
    }

    @keyframes fadeInDown {
      from {opacity: 0; transform: translateY(-20px);}
      to {opacity: 1; transform: translateY(0);}
    }

    @keyframes fadeInUp {
      from {opacity: 0; transform: translateY(20px);}
      to {opacity: 1; transform: translateY(0);}
    }

    @media (max-width: 768px) {
      .hero-title { font-size: 2.3rem; }
      .hero-text { font-size: 1rem; }
    }
  </style>
</head>

<body>

  <!-- Hero Section -->
  <div class="hero-section">
    <div class="hero-overlay"></div>
    <div class="hero-content">
      <h1 class="hero-title">Welcome to TapEat 🍴</h1>
      <p class="hero-text">Craving something delicious? Order now and get your favorite meals delivered hot & fast!</p>
      <div class="btn-group-custom">
        <a href="register.jsp" class="btn btn-custom">Register</a>
        <a href="login.jsp" class="btn btn-custom">Login</a>
        <a href="admin_login.jsp" class="btn btn-custom">Admin</a>
      </div>
    </div>
  </div>

  <footer>
    © 2025 Food Ordering System | Designed by Siddhi
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
