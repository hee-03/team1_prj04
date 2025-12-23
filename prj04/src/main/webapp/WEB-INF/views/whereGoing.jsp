<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>어디로 갈까요?</title>
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
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/whereGoing/wheregoingmain.png'); margin-top: 50px;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center" style="padding-bottom: 380px; text-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);">
            <h1 class="mb-3 bread">어디로 갈까요?</h1>
          </div>
        </div>
      </div>
    </div> 
    </section> 
	<%-- 도 or 특별시 단위 지역 선택 (기본값: 서울)--%>
	<div id="location_select" class="d-flex">
	    <%-- ================================================= --%>
	    <%-- ★★★ id="location0N" 이거는 js dom 작업할 때 사용 ★★★ --%>
	    <%-- ================================================= --%>

	    <div id="location00" class="location_item selected_location">
	    	<div class="loc_img"></div><div class="loc_text">서울</div>
	    </div>

	    <div id="location01" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">경기</div>
	    </div><%-- 초기에 `경기/서울`이 default로 선택되게 지정. --%>
	    <div id="location02" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">강원</div>
	    </div>
	    <div id="location03" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">충남</div>
	    </div>
	    <div id="location04" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">충북</div>
	    </div>
	    <div id="location05" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">전남</div>
	    </div>
	    <div id="location06" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">전북</div>
	    </div>
	    <div id="location07" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">경남</div>
	    </div>
	    <div id="location08" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">경북</div>
	    </div>
	    <div id="location09" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">제주</div>
	    </div>
	</div>
	<%-- //도 or 특별시 단위 지역 선택 (기본값: 서울)--%>
	
	<%-- 지역 동그라미 클릭 시 나오는 여행지 --%>
     <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">해당 지역 도시</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div id="city01" class="city_item col-md-4 d-flex ftco-animate" data-city="종로"><%-- data-city 속성 반드시 지정 --%>
          	<div class="blog-entry justify-content-end">
          	  <%-- 도시 이미지 --%>
              <span id="city-img01" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-jongro.jpg');">
              </span><%--여기 a 태그에 있던 거 (해당 모든 a태그 공통) : blog-single.html --%>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="city-name01">종로</span></h3><%-- 도시 이름 --%>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div id="city02" class="city_item col-md-4 d-flex ftco-animate" data-city="강남"><%-- data-city 속성 반드시 지정 --%>
          	<div class="blog-entry justify-content-end">
              <%-- 도시 이미지 --%>
              <span id="city-img02" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-gangnam.png');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="city-name02">강남</span></h3><%-- 도시 이름 --%>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div id="city03" class="city_item col-md-4 d-flex ftco-animate" data-city="마포"><%-- data-city 속성 반드시 지정 --%>
          	<div class="blog-entry">
          	  <%-- 도시 이미지 --%>
              <span id="city-img03" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-mapo.png');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="city-name03">마포</span></h3><%-- 도시 이름 --%>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
	<%-- //지역 동그라미 클릭 시 나오는 여행지 --%>
	
	
	<!-- 관광명소 -->
    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">관광 명소</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="attraction_image01" class="block-20" style="background-image: url('images/whereGoing/attractionImage/SeoulAndGyeonggi/seoul/GyeongBokGeung.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="attraction_name01">경복궁</span><span data-id="ATTR_001" class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="attraction_image02" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="attraction_name02">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="attraction_image03" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="attraction_name03">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>

          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="attraction_image04" class="block-20" style="background-image: url('images/image_1.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="attraction_name04">순천만 생태 체험선</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="attraction_image05" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="attraction_name05">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="attraction_image06" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="attraction_name06">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- //관광명소 -->
    
    <!-- 관광행사 -->
    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">관광 행사</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="festivalImage01" class="block-20" style="background-image: url('images/image_1.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="festivalName01">순천만 생태 체험선</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="festivalImage02" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="festivalName02">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="festivalImage03" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="festivalName03">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>

          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="festivalImage04" class="block-20" style="background-image: url('images/image_1.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="festivalName04">순천만 생태 체험선</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="festivalImage05" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="festivalName05">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="festivalImage06" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="festivalName06">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- //관광행사 -->
    
    <%-- 맛집 --%>
    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">맛집</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="restaurantImage01" class="block-20" style="background-image: url('images/image_1.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="restaurantName01">순천만 생태 체험선</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="restaurantImage02" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="restaurantName02">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="restaurantImage03" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="restaurantName03">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>

          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="restaurantImage04" class="block-20" style="background-image: url('images/image_1.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="restaurantName04">순천만 생태 체험선</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="restaurantImage05" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="restaurantName05">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="restaurantImage06" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="restaurantName06">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <%-- //맛집 --%>
    
    <%-- 호텔 --%>
    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">호텔</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="hotelImage01" class="block-20" style="background-image: url('images/image_1.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="hotelName01">순천만 생태 체험선</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="hotelImage02" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="hotelName02">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="hotelImage03" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="hotelName03">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>

          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="hotelImage04" class="block-20" style="background-image: url('images/image_1.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="hotelName04">순천만 생태 체험선</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span id="hotelImage05" class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="hotelName05">와온해변</span><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <span id="hotelImage06" class="block-20" style="background-image: url('images/image_3.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="hotelName06">선암사</span><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <%-- //호텔 --%>
    
    <%-- 이병주 js --%>  
    <script src="js/whereGoing.js"></script> 
    <%-- 이병주 js --%> 
       
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>  
  </body>
</html>