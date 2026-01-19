<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center gap-2" href="home.jsp" style="font-weight:700;color:#ee0979;">
      <img src="${pageContext.request.contextPath}/images/logo-small.png" alt="logo" style="width:36px;height:36px;border-radius:8px;object-fit:cover;">
      <span>Foodify</span>
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMain">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navMain">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="restaurant.jsp">Restaurants</a></li>
        <li class="nav-item"><a class="nav-link" href="cafe.jsp">Cafes</a></li>
      </ul>

      <ul class="navbar-nav">
        <li class="nav-item me-2">
          <a class="btn btn-sm" href="cart.jsp" style="background:linear-gradient(90deg,#ff6a00,#ee0979); color:#fff; border-radius:999px; padding:6px 12px;">Cart</a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="userMenu" role="button" data-bs-toggle="dropdown">
            <c:choose>
              <c:when test="${not empty sessionScope.userName}">
                ${sessionScope.userName}
              </c:when>
              <c:otherwise>User</c:otherwise>
            </c:choose>
          </a>
          <ul class="dropdown-menu dropdown-menu-end">
            <li><a class="dropdown-item" href="user.jsp">Profile</a></li>
            <li><a class="dropdown-item" href="order_history.jsp">Orders</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item text-danger" href="logout">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- small inline navbar style -->
<style>
  .navbar .nav-link { color:#5b3b3b; }
  .navbar .nav-link:hover { color:#ee0979; }
  .navbar { transition: all .25s ease; }
</style>
