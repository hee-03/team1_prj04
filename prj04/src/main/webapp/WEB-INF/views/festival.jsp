<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>축제와 공연</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">

<style>
  /* 1. 레이아웃 기본 설정 */
  .ftco-section.no-padding-bottom { padding-bottom: 0 !important; margin-bottom: 0 !important; }
  .ftco-section.no-padding-top { padding-top: 30px !important; }

  /* 2. ✅ 검색 필터 박스 (그림자 완전 제거 + 평면 디자인) */
  .search-property-1 {
      background: #fff !important;
      padding: 30px !important;
      border-radius: 15px !important

      position: relative;
      z-index: 10;
  }

  /* 라벨 가독성 */
  .search-property-1 .form-group label {
      font-weight: 700 !important;
      color: #333 !important;
      font-size: 14px !important;
      margin-bottom: 8px !important;
      display: block;
  }

  /* ✅ 필터 선택 박스 (심플하게) */
  .search-property-1 .form-control {
      height: 52px !important;
      border-radius: 10px !important;
      border: 1px solid #ccc !important;
      background: #fff !important;
      font-weight: 600 !important;
      color: #222 !important;
      padding: 10px 15px !important;
      box-shadow: none !important;
      appearance: auto !important; /* 화살표 표시 */
  }

  /* ✅ 검색 버튼 (글자 수직 중앙 정렬 집중) */
  .search-property-1 .btn-primary {
      background: #f9ab30 !important;
      border: none !important;
      color: #fff !important;
      height: 52px !important;
      font-size: 17px !important;
      font-weight: 700 !important;
      border-radius: 10px !important;
      
      /* 🔥 중앙 정렬을 위한 핵심 속성 */
      display: flex !important;
      align-items: center !important;    /* 수직 중앙 */
      justify-content: center !important; /* 수평 중앙 */
      line-height: 1 !important;         /* 텍스트 밀림 방지 */
      padding: 0 !important;
      
      box-shadow: none !important;
      cursor: pointer;
      width: 100% !important;
      transition: background 0.2s ease;
  }

  .search-property-1 .btn-primary:hover {
      background: #e89a1a !important;
      transform: none !important; /* 공중 부양 금지 */
  }

  /* 3. 정렬 버튼 (기존 디자인 유지) */
  .sort-buttons .btn { 
      font-size: 18px !important;
      padding: 12px 22px !important;
      font-weight: 600 !important;
      border: 2px solid #f9ab30 !important;
      color: #f9ab30 !important;
      border-radius: 10px !important;
      background-color: transparent;
      box-shadow: none !important;
  }

  .sort-buttons .btn.active, .sort-buttons .btn:hover {
      background-color: #f9ab30 !important;
      color: #fff !important;
  }

  /* 4. 페이지네이션 (기존 디자인 유지) */
  .block-27 ul {
      padding: 0;
      margin: 0;
  }

  .block-27 ul li {
      display: inline-block !important;
      margin: 0 5px !important; /* 🔥 번호 사이의 좌우 여백 (간격 생김) */
  }

  .block-27 ul li a, .block-27 ul li span {
      width: 55px !important;  /* 🔥 기존 50px에서 55px로 확대 */
      height: 55px !important; /* 🔥 기존 50px에서 55px로 확대 */
      line-height: 51px !important; /* 테두리 두께 고려하여 수직 중앙 조절 */
      font-size: 20px !important;   /* 🔥 숫자 크기 확대 */
      font-weight: 600 !important;
      border-radius: 50% !important;
      border: 2px solid #e6e6e6 !important;
      display: inline-block;
      text-align: center;
      transition: all 0.3s ease;
      box-shadow: none !important;
      color: #333;
  }

  /* 마우스 올렸을 때랑 활성화됐을 때 색상 */
  .block-27 ul li.active a,
  .block-27 ul li.active span {
      background: #f9ab30 !important;
      color: #fff !important;
      border-color: #f9ab30 !important;
  }

  .block-27 ul li a:hover {
      background: #f9ab30 !important;
      color: #fff !important;
      border-color: #f9ab30 !important;
  }
</style>
  </head>

  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    
    <section class="hero-wrap js-fullheight" style="background-image: url('images/festival/festivalmain.png');" data-stellar-background-ratio="0.5">
      <div class="overlay" style="opacity: .2"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center" style="padding-bottom: 380px; text-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);">
            <h1 class="bread">축제와 공연</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section no-padding-bottom ftco-no-pt">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="search-wrap-1 ftco-animate p-4">
              <form id="searchForm" action="#" class="search-property-1">
                <div class="row">
                  <div class="col-lg align-items-end">
                    <div class="form-group">
                      <label for="#">언제</label>
                      <div class="form-field">
                        <div class="select-wrap">
                          <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                          <select id="seasonSelect" class="form-control">
                            <option value="">전체</option>
                            <option value="봄">봄</option>
                            <option value="여름">여름</option>
                            <option value="가을">가을</option>
                            <option value="겨울">겨울</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg align-items-end">
                    <div class="form-group">
                      <label for="#">어디로</label>
                      <div class="form-field">
                        <div class="select-wrap">
                          <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                          <select id="regionSelect" class="form-control">
                            <option value="">전체</option>
                            <option value="서울">서울</option>
                            <option value="경기도">경기도</option>
                            <option value="강원도">강원도</option>
                            <option value="충청도">충청도</option>
                            <option value="경상도">경상도</option>
                            <option value="전라도">전라도</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                 <div class="col-lg align-self-end">
					  <div class="form-group">
					    <div class="form-field">
					      <button type="submit" class="form-control btn btn-primary search-submit-btn">
					        검색
					      </button>
					    </div>
					  </div>
					</div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section no-padding-top">
      <div class="container">
        <div id="festival-result" class="row d-flex">
            </div>

        <div class="row mt-5">
          <div class="col text-center">
            <div id="pagination" class="block-27"></div>
          </div>
        </div>
      </div>
    </section>

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/festival.js"></script>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>