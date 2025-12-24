<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <li class="nav-item"><a href="http://192.168.0.31:7070/festival" class="nav-link">축제와 공연</a></li>
        <!-- 수정 성준 -->
        <li class="nav-item active"><a href="/mytrip" class="nav-link">나의 여행담기</a></li>
      </ul>
    </div>
	
    <div class="gnb d-flex">
      <c:if test="${not empty sessionScope.logInEmail }">
      	<p>${sessionScope.logInEmail}</p>
      </c:if>
      <ul class="d-flex navbar-nav">
        <li><a href="/loginCheck"><img src="/images/header/enter.png" alt=""></a></li>
        <li><a href="#" id="btnHeaderSearch"><img src="/images/header/search.png" alt=""></a></li>
        <li><a href="/map"><img src="/images/header/map.png" alt=""></a></li>
        <li><a href="#"><img src="/images/header/lang.png" alt=""></a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- 검색창 -->
<div id="headerSearchWrap" class="header-search-wrap" aria-hidden="true">
  <div class="container">
    <form id="headerSearchForm" class="header-search" action="#" method="get">
      <label class="sr-only" for="headerSearchInput">검색</label>

      <input
        id="headerSearchInput"
        name="q"
        type="text"
        class="header-search__input"
        placeholder="여행지 · 축제 · 지역 검색"
        autocomplete="off"
      />

      <button type="submit" class="header-search__btn">검색</button>
    </form>
  </div>
</div>

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
<script>
document.addEventListener("DOMContentLoaded", function () {
  const btn = document.getElementById("btnHeaderSearch");
  const wrap = document.getElementById("headerSearchWrap");
  const form = document.getElementById("headerSearchForm");
  const input = document.getElementById("headerSearchInput");

  if (!btn || !wrap || !input) return;

  function openSearch() {
    wrap.classList.add("is-open");
    wrap.setAttribute("aria-hidden", "false");
    // 펼쳐진 뒤 포커스
    setTimeout(() => input.focus(), 50);
  }

  function closeSearch() {
    wrap.classList.remove("is-open");
    wrap.setAttribute("aria-hidden", "true");
  }

  function toggleSearch() {
    const isOpen = wrap.classList.contains("is-open");
    isOpen ? closeSearch() : openSearch();
  }

  btn.addEventListener("click", function (e) {
    e.preventDefault();
    toggleSearch();
  });

  // ESC로 닫기
  document.addEventListener("keydown", function (e) {
    if (e.key === "Escape") closeSearch();
  });

  // 바깥 클릭 시 닫기 (검색바 내부 클릭은 유지)
  document.addEventListener("click", function (e) {
    const clickedInside = wrap.contains(e.target) || btn.contains(e.target);
    if (!clickedInside) closeSearch();
  });

  // submit은 그대로 진행 (action으로 이동)
  form && form.addEventListener("submit", function () {
    // 필요하면 여기에서 q 값 검증 가능
  });
});
</script>


