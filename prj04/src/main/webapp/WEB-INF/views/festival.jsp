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
  </head>

  <body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
    
<<<<<<< HEAD
<!-- 화면별 첫 메인 이미지, 지울 필요없이 반복 사용 image url만 수정합니다.    -->
=======
    <!-- 화면별 첫 메인 이미지, 지울 필요없이 반복 사용 image url만 수정    -->
>>>>>>> branch 'master' of https://github.com/hee-03/team1_prj04.git
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



    <!-- 추천 여행 검색 -->
    <section class="ftco-section ftco-no-pb ftco-no-pt">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="search-wrap-1 ftco-animate p-4">

              <!-- ✅ [수정1] id 추가 -->
              <form id="searchForm" action="#" class="search-property-1">
                <div class="row">

                  <div class="col-lg align-items-end">
                    <div class="form-group">
                      <label for="#">언제</label>
                      <div class="form-field">
                        <div class="select-wrap">
                          <div class="icon"><span class="ion-ios-arrow-down"></span></div>

                          <!-- ✅ [수정2] id + value(비교 가능하게) -->
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

                          <!-- ✅ [수정2] id + value(비교 가능하게) -->
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
                        <input type="submit" value="검색" class="form-control btn btn-primary">
                      </div>
                    </div>
                  </div>

                </div>
              </form>
              <!-- //form -->

            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- //추천 여행 검색 -->

    <!-- 정렬 버튼 영역 -->
    <div id="sort-area" class="text-center mb-5" style="display:none;">
      <button class="btn btn-outline-primary mr-2" data-sort="default">기본순</button>
      <button class="btn btn-outline-danger mr-2" data-sort="likes">좋아요순</button>
      <button class="btn btn-outline-info" data-sort="upcoming">곧 시작</button>
    </div>

    <!-- 안내 메시지 -->
    <div id="message-area" class="text-center my-5">
      <p>🎯 떠날 준비가 되셨나요?</p>
      <p>위에서 조건을 선택하고 검색 버튼을 눌러주세요!</p>
    </div>
	<!-- 카드 -->
    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">가고싶은 축제와 행사</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">순천만 생태 체험선</a><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">와온해변</a><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">선암사</a><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>

          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">순천만 생태 체험선</a><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">와온해변</a><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">선암사</a><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!-- ✅ 템플릿 기본 JS들 (원래 유지) -->
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

    <!-- ✅ [수정3] festival.js를 맨 마지막에 -->
    <!--<script src="js/festival.js"></script>-->
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
    
  </body>
</html>
