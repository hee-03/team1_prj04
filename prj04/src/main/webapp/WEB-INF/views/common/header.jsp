<%@ page contentType="text/html; charset=UTF-8" %>

<nav class="navbar navbar-expand-lg ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
  <div class="container">
    <a class="navbar-brand" href="/main">
      <img alt="logo" src="/images/header/logo.png">
    </a>

    <div class="collapse navbar-collapse" id="ftco-nav">
      <ul class="navbar-nav">
        <li class="nav-item"><a href="/main" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="/whereGoing" class="nav-link">어디로 갈까요?</a></li>
        <li class="nav-item"><a href="/rec_travel" class="nav-link">지금 가장 좋은 여행</a></li>
        <li class="nav-item"><a href="/festival" class="nav-link">축제와 공연</a></li>
        <li class="nav-item active"><a href="/mytrip" class="nav-link">나의 여행담기</a></li>
      </ul>
    </div>

    <div class="gnb">
      <ul class="d-flex navbar-nav">
        <li><a href="#"><img src="/images/header/search.png" alt=""></a></li>
        <li><a href="/map"><img src="/images/header/map.png" alt=""></a></li>
        <li><a href="/loginCheck"><img src="/images/header/enter.png" alt=""></a></li>
        <li><a href="#"><img src="/images/header/lang.png" alt=""></a></li>
      </ul>
    </div>
  </div>
</nav>

<script>
document.addEventListener("DOMContentLoaded", function () {
  const currentPath = window.location.pathname;

  document.querySelectorAll("#ftco-nav .navbar-nav .nav-item").forEach(li => {
    const a = li.querySelector("a.nav-link");
    if (!a) return;

    const href = a.getAttribute("href");
    li.classList.toggle("active", href === currentPath || (currentPath === "/" && href === "/index"));
  });
});
</script>

