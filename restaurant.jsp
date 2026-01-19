
<%@ include file="navbar.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
<title>Restaurants</title>
</head>
<body>
<div class="container mt-4">
  <div class="banner">
    <h1>Top Restaurants</h1>
    <p>Choose from our partner restaurants</p>
  </div>
  <div class="row">
    <%-- Five sample restaurants --%>
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="images/restaurant1.jpg" class="card-img-top food-img" alt="Rest1">
        <div class="card-body">
          <h5 class="card-title">Spice Villa</h5>
          <p class="card-text">Authentic Indian flavors.</p>
          <a href="home.jsp?restaurant=1" class="btn btn-primary">View Menu</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="images/restaurant2.jpg" class="card-img-top food-img" alt="Rest2">
        <div class="card-body">
          <h5 class="card-title">Royal Bites</h5>
          <p class="card-text">Traditional and modern fusion.</p>
          <a href="home.jsp?restaurant=2" class="btn btn-primary">View Menu</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="images/restaurant3.jpg" class="card-img-top food-img" alt="Rest3">
        <div class="card-body">
          <h5 class="card-title">Green Garden</h5>
          <p class="card-text">Healthy & fresh meals.</p>
          <a href="home.jsp?restaurant=3" class="btn btn-primary">View Menu</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="images/restaurant4.jpg" class="card-img-top food-img" alt="Rest4">
        <div class="card-body">
          <h5 class="card-title">Ocean's Catch</h5>
          <p class="card-text">Seafood specials.</p>
          <a href="home.jsp?restaurant=4" class="btn btn-primary">View Menu</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="images/restaurant5.jpg" class="card-img-top food-img" alt="Rest5">
        <div class="card-body">
          <h5 class="card-title">Street Tadka</h5>
          <p class="card-text">Popular street food.</p>
          <a href="home.jsp?restaurant=5" class="btn btn-primary">View Menu</a>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
