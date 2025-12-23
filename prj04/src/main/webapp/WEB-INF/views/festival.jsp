<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      /* 검색창 섹션 하단 여백 제거 */
      .ftco-section.no-padding-bottom { padding-bottom: 0 !important; margin-bottom: 0 !important; }
      
      /* 제목 섹션 상단 여백 보정 */
      .ftco-section.no-padding-top { padding-top: 30px !important; }

      /* ✅ 검색 버튼 글씨 위치 보정 */
      .search-property-1 .btn-primary {
          display: flex !important;
          align-items: center !important; /* 수직 중앙 정렬 */
          justify-content: center !important;
          height: 52px !important; /* input 높이와 통일 */
          padding-top: 0 !important;
          padding-bottom: 0 !important;
          line-height: 1 !important; /* 글씨가 위로 올라오게 조정 */
      }

      /* 제목 옆 정렬 버튼 스타일 */
      .heading-section h2 { font-size: 28px !important; font-weight: 700; }
      .sort-buttons .btn { 
          font-size: 13px; 
          border-color: #f9ab30 !important; 
          color: #f9ab30;
          border-radius: 5px !important;
          margin-left: 2px;
      }
      .sort-buttons .btn.active, .sort-buttons .btn:hover {
          background-color: #f9ab30 !important;
          color: #fff !important;
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
                        <input type="submit" value="검색" class="form-control btn btn-primary" style="background: #f9ab30 !important; border: 1px solid #f9ab30 !important; cursor: pointer;">
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
    


    <div id="sort-container" class="row justify-content-end mb-4" style="display: none;">
      <div class="col-md-5 text-md-right sort-buttons">
        <div id="sort-area" class="btn-group" role="group">
          <button id="sortDefaultBtn" class="btn btn-outline-primary active px-3 py-2">기본순</button>
          <button id="sortLikeBtn" class="btn btn-outline-primary px-3 py-2">❤️ 좋아요순</button>
          <button id="sortDateBtn" class="btn btn-outline-primary px-3 py-2">📅 날짜순</button>
        </div>
      </div>
    </div>
    
    <div id="festival-result" class="row d-flex"></div>

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