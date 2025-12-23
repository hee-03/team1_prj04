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
                <h3 class="heading"><span id="city-name01">종로</span><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
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
                <h3 class="heading"><span id="city-name02">강남</span><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
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
                <h3 class="heading"><span id="city-name03">마포</span><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
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
    
  <%-- 이병주 JS코드 --%>
  <script>
  document.addEventListener('DOMContentLoaded', function() {
	  
	  if(!document.getElementById('map')) {//이 코드 이제 필요없지 않을까 싶음.
		    const dummyMap = document.createElement('div');
		    dummyMap.id = 'map';
		    dummyMap.style.display = 'none';
		    document.body.appendChild(dummyMap);
		}
	  
	    // 1. 공통 요소 선택
	    const locationItems = document.querySelectorAll('.location_item');//지역 요소들 배열 형태로 저장
	    const cityItems = document.querySelectorAll('.city_item');//도시 요소들 배열 형태로 저장
	    
	    const city01 = document.querySelector("#city01");//첫번째 도시
	    const city02 = document.querySelector("#city02");//두번째 도시
	    const city03 = document.querySelector("#city03");//세번째 도시
	    
	    const cityImg01 = document.querySelector("#city-img01");//첫번째 도시 이미지
	    const cityImg02 = document.querySelector("#city-img02");//두번째 도시 이미지
	    const cityImg03 = document.querySelector("#city-img03");//세번째 도시 이미지
	    
	    const cityName01 = document.querySelector("#city-name01");//첫번째 도시 이름
	    const cityName02 = document.querySelector("#city-name02");//두번째 도시 이름
	    const cityName03 = document.querySelector("#city-name03");//세번째 도시 이름
	    
	    //관광 명소 이미지
	    const attractionImage01 = document.querySelector("#attraction_image01");
	    const attractionImage02 = document.querySelector("#attraction_image02");
/* 	    const attractionImage03 = document.querySelector("#attraction_image03");
	    const attractionImage04 = document.querySelector("#attraction_image04");
	    const attractionImage05 = document.querySelector("#attraction_image05");
	    const attractionImage06 = document.querySelector("#attraction_image06"); */
	    
	    //관광 명소 이름
	    const attractionName01 = document.querySelector("#attraction_name01");
	    const attractionName02 = document.querySelector("#attraction_name02");
/* 	    const attractionName03 = document.querySelector("#attraction_name03");
	    const attractionName04 = document.querySelector("#attraction_name04");
	    const attractionName05 = document.querySelector("#attraction_name05");
	    const attractionName06 = document.querySelector("#attraction_name06"); */
	    
	    //GGG
	    //관광 행사 이미지
	 // 1. 관광 행사 (Festival)
	    const festivalImage01 = document.querySelector("#festivalImage01");
	    const festivalImage02 = document.querySelector("#festivalImage02");
/* 	    const festivalImage03 = document.querySelector("#festivalImage03");
	    const festivalImage04 = document.querySelector("#festivalImage04");
	    const festivalImage05 = document.querySelector("#festivalImage05");
	    const festivalImage06 = document.querySelector("#festivalImage06"); */

	    const festivalName01 = document.querySelector("#festivalName01");
	    const festivalName02 = document.querySelector("#festivalName02");
/* 	    const festivalName03 = document.querySelector("#festivalName03");
	    const festivalName04 = document.querySelector("#festivalName04");
	    const festivalName05 = document.querySelector("#festivalName05");
	    const festivalName06 = document.querySelector("#festivalName06"); */

	    // 2. 맛집 (Restaurant)
	    const restaurantImage01 = document.querySelector("#restaurantImage01");
	    const restaurantImage02 = document.querySelector("#restaurantImage02");
/* 	    const restaurantImage03 = document.querySelector("#restaurantImage03");
	    const restaurantImage04 = document.querySelector("#restaurantImage04");
	    const restaurantImage05 = document.querySelector("#restaurantImage05");
	    const restaurantImage06 = document.querySelector("#restaurantImage06"); */

	    const restaurantName01 = document.querySelector("#restaurantName01");
	    const restaurantName02 = document.querySelector("#restaurantName02");
/* 	    const restaurantName03 = document.querySelector("#restaurantName03");
	    const restaurantName04 = document.querySelector("#restaurantName04");
	    const restaurantName05 = document.querySelector("#restaurantName05");
	    const restaurantName06 = document.querySelector("#restaurantName06"); */

	    // 3. 호텔 (Hotel)
	    const hotelImage01 = document.querySelector("#hotelImage01");
	    const hotelImage02 = document.querySelector("#hotelImage02");
/* 	    const hotelImage03 = document.querySelector("#hotelImage03");
	    const hotelImage04 = document.querySelector("#hotelImage04");
	    const hotelImage05 = document.querySelector("#hotelImage05");
	    const hotelImage06 = document.querySelector("#hotelImage06"); */

	    const hotelName01 = document.querySelector("#hotelName01");
	    const hotelName02 = document.querySelector("#hotelName02");
/* 	    const hotelName03 = document.querySelector("#hotelName03");
	    const hotelName04 = document.querySelector("#hotelName04");
	    const hotelName05 = document.querySelector("#hotelName05");
	    const hotelName06 = document.querySelector("#hotelName06"); */
	    


	    
	    
	    // 2. 클릭 이벤트 통합 관리
	    locationItems.forEach(function(item) {
	        item.addEventListener('click', function(event) {
	            // 모든 항목에서 선택 클래스 제거
	            locationItems.forEach(li => li.classList.remove('selected_location'));
	            // 클릭된 항목에 선택 클래스 추가
	            this.classList.add('selected_location');
	            
	            // 클릭된 요소의 ID에 따라 데이터 변경
	            const selectedId = this.id;
	            if (selectedId === "location00") { // 경기
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-jongro.jpg')";//종로
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-gangnam.png')";//강남
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-mapo.png')";//마포
	                
	                cityName01.innerText = "종로";
	                cityName02.innerText = "강남";
	                cityName03.innerText = "마포";
	            }else if (selectedId === "location01") { // 경기
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-yongin.jpg')";//용인
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-suwon.jpg')";//수원
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-ansan.jpeg')";//안산
	                
	                cityName01.innerText = "용인";
	                cityName02.innerText = "수원";
	                cityName03.innerText = "안산";
	            }else if (selectedId === "location02") { // 강원
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-sokcho.jpg')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-cheuncheon.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-pyeongchang.png')";
	                
	                cityName01.innerText = "속초";
	                cityName02.innerText = "춘천";
	                cityName03.innerText = "평창";   
	            }else if (selectedId === "location03") { //충남
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-cheonan.jpg')";//천안
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-asan.png')";//아산
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-boryeong.jpg')";//보령
	                
	                cityName01.innerText = "천안";
	                cityName02.innerText = "아산";
	                cityName03.innerText = "보령"; 	            	
	            }else if (selectedId === "location04") { // 충북
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-cheongju.jpg')"; // 청주
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-chungju.png')"; // 충주
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-danyang.jpg')"; // 단양 (군 단위)
	                
	                cityName01.innerText = "청주";
	                cityName02.innerText = "충주";
	                cityName03.innerText = "단양"; 
	            }else if (selectedId === "location05") {//전남
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-suncheon.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-yeosu.jpg')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-mokpo.png')";
	                
	                cityName01.innerText = "순천";
	                cityName02.innerText = "여수";
	                cityName03.innerText = "목포";   
	            }else if (selectedId === "location06") {//전북
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-jeonju.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-gunsan.jpg')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-iksan.png')";
	                
	                cityName01.innerText = "전주";
	                cityName02.innerText = "군산";
	                cityName03.innerText = "익산";   
	            }else if (selectedId === "location07") {//경남
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-tongyeong.jpg')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-geoje.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-namhae.jpg')";
	                
	                cityName01.innerText = "통영";
	                cityName02.innerText = "거제";
	                cityName03.innerText = "남해";   
	            }else if (selectedId === "location08") {//경북
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-gyeongju.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-andong.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-pohang.png')";
	                
	                cityName01.innerText = "경주";
	                cityName02.innerText = "안동";
	                cityName03.innerText = "포항";
	            }else if (selectedId === "location09") {//제주
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-jeju.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-seogwipo.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-udo.jpg')";
	                
	                cityName01.innerText = "제주";
	                cityName02.innerText = "서귀포";
	                cityName03.innerText = "우도";   
           		}
	         	// ★ 핵심: 지역(도,특별시)를 클릭하자마자 첫 번째 도시를 강제로 클릭시킴
	            city01.click();
	        });
	    });
	    //일단, 경기도 서울 클릭시 코드부터 추가하고, 나머지 하기.
	    
	    
	    //도시 선택  attraction_image01  attraction_name01
	    cityItems.forEach(function(item){
	    	item.addEventListener('click',function(event){
	    		//GGG	   
	    		// 1. 선택 시각 효과
	            cityItems.forEach(c => c.classList.remove('selected_city'));
	            this.classList.add('selected_city');
	            // 2. 현재 칸에 적힌 '도시 이름' 읽기
	            const cityName = this.querySelector('h3 span:first-child').innerText;
	            // 3. 도시 이름에 맞춰 데이터 업데이트
	            /*
	            =====함수 구조=====
	            updateDetails(
	            		"명소 이미지 경로", "명소 이름", url
	            		"축제 이미지 경로", "축제 이름", url
	            		"맛집 이미지 경로", "맛집 이름", url
	            		"호텔 이미지 경로", "호텔이름", url
	            )
	            */
	            if (cityName === "종로") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		//데이터 넣는 곳. 수동 추가 혹은 데이터 연동
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/seoul/GyeongBokGeung.jpg","경복궁", "",
	                		"","seoul_fest.jpg", "서울 페스티벌", "",
	                		"","seoul_food.jpg", "서울 맛집", "", 
	                		"","seoul_hotel.jpg", "서울 호텔", ""
	                );
	                updateDetails02(
	                		"","","서울명소2","#",
	                		"","","서울축제2","#",
	                		"","","서울맛집2","#",
	                		"","","서울호텔2","#"
	                );
	            } else if(cityName === "강남"){
	                updateDetails01(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#");
	                updateDetails02(
	                		"","","명소2", "#",
	                		"","","축제2", "#",
	                		"","","맛집2", "#",
	                		"","","호텔2", "#"
	                );
	            	
	            } else if(cityName === "마포"){
	                updateDetails01(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#");
	                updateDetails02(
	                		"","","명소2", "#",
	                		"","","축제2", "#",
	                		"","","맛집2", "#",
	                		"","","호텔2", "#"
	                );
	            	
	            } else if(cityName === "용인"){
	                updateDetails01(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#"
	                );
	                updateDetails02(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#"
	                );
	            	
	            } else if (cityName === "수원") {
	                updateDetails01(
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/suwon/suwonHwaseong.jpg", "수원화성", "#",
	                		"","images/whereGoing/festivalImage/SeoulAndGyeonggi/suwon/mediaArt.jpg", "수원화성 미디어아트", "#",
	                		"","images/whereGoing/restaurantImage/SeoulAndGyeonggi/suwon/JinmiChicken.jpg", "진미통닭", "#",
	                		"","images/whereGoing/hotelImage/SeoulAndGyeonggi/suwon/novotelSuwon.jpg", "노보텔 수원", "#"
	                );
	                updateDetails02(
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/suwon/suwonStarField.jpg","수원 스타필드", "#",
	                		"","22f.jpg","수원축제2", "#",
	                		"","22r.jpg","수원맛집2", "#",
	                		"","22h.jpg","수원호텔2", "#"
	                );
	            } else if (cityName === "안산") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/ansan/DaeBuDo.jpg", "대부도", "#",
	                		"","ansan_fest.jpg", "안산 거리축제", "#",
	                		"","ansan_food.jpg", "대부도 칼국수", "#",
	                		"","ansan_hotel.jpg", "안산 호텔", "#"
	                );
	                updateDetails02(
	                		"","","안산명소2", "#",
	                		"","","안산축제2", "#",
	                		"","","안산맛집2", "#",
	                		"","","안산호텔2", "#"
	                );
	            } else if (cityName === "속초") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","images/whereGoing/attractionImage/Gangwon/sokcho/seolAkMountain.jpg", "설악산", "#",
	                		"","sokcho_fest.jpg", "속초 축제", "#", 
	                		"","sokcho_food.jpg", "속초 닭강정", "#",
	                		"","sokcho_hotel.jpg", "속초 호텔", "#"
	                );
	                updateDetails02(
	                		"","","속초명소2", "#",
	                		"","","속초축제2", "#",
	                		"","","속초맛집2", "#",
	                		"","","속초호텔2", "#"
	                );
	            } else if (cityName === "춘천") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","","춘천명소1", "#",
	                		"","","춘천축제1", "#",
	                		"","","춘천맛집1", "#",
	                		"","","춘천호텔1", "#");
	                updateDetails02(
	                		"","","명소2", "#",
	                		"","","축제2", "#",
	                		"","","맛집2", "#",
	                		"","","호텔2", "#"
	                );
	            } else if (cityName === "평창") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","","평창명소1", "#",
	                		"","","평창축제1", "#",
	                		"","","평창맛집1", "#",
	                		"","","평창호텔1", "#"
	                );
	                updateDetails02(
	                		"","","평창명소2", "#",
	                		"","","평창축제2", "#",
	                		"","","평창맛집2", "#",
	                		"","","평창호텔2", "#"
	                );
	            } else if (cityName === "천안") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "blog-single.html",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "아산") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "보령") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "청주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "충주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "단양") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "순천") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "여수") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "목포") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "전주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "군산") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "익산") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "통영") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "거제") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "남해") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "경주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "안동") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "포항") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "제주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "서귀포") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            } else if (cityName === "우도") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	            }	  
	            //GGG
	    	});
	    });
	    // 마우스 오버/아웃 효과 (기존 코드 유지)
	    /*
	    locationItems.forEach(function(item) {
	        item.addEventListener('mouseover', function() {
	            this.style.border = "3px solid navy";
	        });
	        item.addEventListener('mouseout', function() {
	            this.style.border = "";
	        });
	    });
	    */
		//GGG
		function updateDetails01(//여기에 데이터 id값 받는 부분 추가.
				attId, attImg, attName, attLink, 
				festId, festImg, festName, festLink, 
				restId, restImg, restName, restLink, 
				hotelId, hotelImg, hotelName, hotelLink
		) {  	
	    	// --- 1. 관광 명소 (Attraction) 업데이트 ---
	        const attSlot = attractionImage01.parentElement; // .blog-entry 요소
	        attractionImage01.style.backgroundImage = "url('" + attImg + "')";
	        attractionName01.innerText = attName;
	        
	        // 클릭 이벤트 설정
	        attSlot.style.cursor = "pointer";
	        attSlot.onclick = function() {
	            if (attLink && attLink !== "#" && attLink !== "") {
	                location.href = attLink;
	            } else {
	                console.log(attName + "의 링크가 아직 준비되지 않았습니다.");
	            }
	        };
	        //=======================================================
	        // ♥♥♥ 하트 버튼 클릭 시 반응 ==> 추후 `나의 여행담기`로 이동. ♥♥♥ 
	        //=======================================================
	        //하트 버튼 담는 변수
	        const attractionHeartBtn01 = document.querySelector("#attraction_name01 + .heartIcon");
	        
	        //하트에 고유 데이터 심기(서버로 보낼 값) : <팀원이 id 주면, 이 부분만 attName으로 바꾸면 끝!! 라고 gemini가 말한다.>
	        attractionHeartBtn01.setAttribute('data-id', attName);
	        
	        //하트 클릭시 반응 함수
	        attractionHeartBtn01.onclick = function(event){
	        	event.stopPropagation(); //하트 클릭시 해당 요소의 상세 페이지 이동을 방지해주는 코드
	        	this.classList.toggle('active');
	        	
	        	// 3. 이제 여기서 getAttribute를 하면 위에서 심어준 값이 나옵니다.
	            const currentId = this.getAttribute('data-id');
	        	
	        	// 서버로 보낼 데이터 출력 (함수 밖이랑 똑같은 형식으로!)
	            console.log("서버로 보낼 데이터:", { id: currentId, name: attName });
	            alert(attName + "을(를) 찜했습니다.");
	        }


	        // --- 2. 관광 행사 (Festival) 업데이트 ---
	        const festSlot = festivalImage01.parentElement;
	        festivalImage01.style.backgroundImage = "url('" + festImg + "')";
	        festivalName01.innerText = festName;
	        
	        festSlot.style.cursor = "pointer";
	        festSlot.onclick = function() {
	            if (festLink && festLink !== "#" && festLink !== "") {
	                location.href = festLink;
	            }
	        };

	        //=======================================================
	        //♥♥♥ 하트 버튼 클릭 시 반응 ==> 추후 `나의 여행담기`로 이동. ♥♥♥ 
	        //=======================================================
	        const festivalHeartBtn01 = document.querySelector("#festivalName01 + .heartIcon");
	        festivalHeartBtn01.setAttribute('data-id', festId); // 데이터 심기 추가
	        festivalHeartBtn01.onclick = function(event){
	            event.stopPropagation();
	            this.classList.toggle('active');
	            const currentId = this.getAttribute('data-id');
	            console.log("서버 전송(축제):", { id: currentId, name: festName });
	            alert(festName + "을(를) 찜했습니다.");
	        }
/* 	        const festivalHeartBtn01 = document.querySelector("#festivalName01 + .heartIcon");
	        festivalHeartBtn01.onclick = function(event){
	        	event.stopPropagation(); //하트 클릭시 해당 요소의 상세 페이지 이동을 방지해주는 코드
	        	this.classList.toggle('active');
	        	
	        	//테스트 나중에 `나의 여행담기`로 이동될 부분.
	        	//console.log(attName+"을(를) 찜했습니다.")
	        	alert(festName+"을(를) 찜했습니다.");
	        } */

	        
	        // --- 3. 맛집 (Restaurant) 업데이트 ---
	        const restSlot = restaurantImage01.parentElement;
	        restaurantImage01.style.backgroundImage = "url('" + restImg + "')";
	        restaurantName01.innerText = restName;
	        
	        restSlot.style.cursor = "pointer";
	        restSlot.onclick = function() {
	            if (restLink && restLink !== "#" && restLink !== "") {
	                location.href = restLink;
	            }
	        };
	        
	        //=======================================================
	        //♥♥♥ 하트 버튼 클릭 시 반응 ==> 추후 `나의 여행담기`로 이동. ♥♥♥ 
	        //=======================================================  	
	        const restaurantHeartBtn01 = document.querySelector("#restaurantName01 + .heartIcon");
	        restaurantHeartBtn01.onclick = function(event){
	        	event.stopPropagation(); //하트 클릭시 해당 요소의 상세 페이지 이동을 방지해주는 코드
	        	this.classList.toggle('active');
	        	
	        	//테스트 나중에 `나의 여행담기`로 이동될 부분.
	        	//console.log(attName+"을(를) 찜했습니다.")
	        	alert(restName+"을(를) 찜했습니다.");
	        }

	        // --- 4. 호텔 (Hotel) 업데이트 ---
	        const hotelSlot = hotelImage01.parentElement;
	        hotelImage01.style.backgroundImage = "url('" + hotelImg + "')";
	        hotelName01.innerText = hotelName;
	        
	        hotelSlot.style.cursor = "pointer";
	        hotelSlot.onclick = function() {
	            if (hotelLink && hotelLink !== "#" && hotelLink !== "") {
	                location.href = hotelLink;
	            }
	        };
	        //=======================================================
	        //♥♥♥ 하트 버튼 클릭 시 반응 ==> 추후 `나의 여행담기`로 이동. ♥♥♥ 
	        //=======================================================
	        const hotelHeartBtn01 = document.querySelector("#hotelName01 + .heartIcon");
	        hotelHeartBtn01.onclick = function(event){
	        	event.stopPropagation(); //하트 클릭시 해당 요소의 상세 페이지 이동을 방지해주는 코드
	        	this.classList.toggle('active');
	        	
	        	//테스트 나중에 `나의 여행담기`로 이동될 부분.
	        	//console.log(attName+"을(를) 찜했습니다.")
	        	alert(hotelName+"을(를) 찜했습니다.");
	        }
	    	
		    // 그냥 매개변수로 들어온 전체 경로(attImg 등)를 그대로 url() 안에 넣습니다.
/* 		    attractionImage01.style.backgroundImage = "url('" + attImg + "')"; // 1번 명소 이미지
		    attractionName01.innerText = attName;
		    
		    festivalImage01.style.backgroundImage = "url('" + festImg + "')"  // 1번 축제 이미지
		    festivalName01.innerText = festName;
		    
		    restaurantImage01.style.backgroundImage = "url('" + restImg + "')"// 1번 맛집 이미지
		    restaurantName01.innerText = restName;
		    
		    hotelImage01.style.backgroundImage = "url('" + hotelImg + "')"	  // 1번 호텔 이미지
		    hotelName01.innerText = hotelName; */
		}
	    function updateDetails02(
				attId, attImg, attName, attLink, 
				festId, festImg, festName, festLink, 
				restId, restImg, restName, restLink, 
				hotelId, hotelImg, hotelName, hotelLink
	    	) {
	    	    // --- 1. 관광 명소 (Attraction) 02 업데이트 ---
	    	    const attSlot = attractionImage02.parentElement; 
	    	    attractionImage02.style.backgroundImage = "url('" + attImg + "')";
	    	    attractionName02.innerText = attName;
	    	    
	    	    attSlot.style.cursor = "pointer";
	    	    attSlot.onclick = function() {
	    	        if (attLink && attLink !== "#" && attLink !== "") {
	    	            location.href = attLink;
	    	        } else {
	    	            console.log(attName + "의 링크가 아직 준비되지 않았습니다.");
	    	        }
	    	    };
	    	    
	    	    
	    	  //=======================================================
	    	 // ♥♥♥ 하트 버튼 클릭 시 반응 (02 시리즈) ♥♥♥ 
	    	 //=======================================================
	    	 // 관광명소 02
	    	 const attractionHeartBtn02 = document.querySelector("#attraction_name02 + .heartIcon");
	    	 attractionHeartBtn02.setAttribute('data-id', attName); // 나중에 팀원 ID로 교체
	    	 attractionHeartBtn02.onclick = function(event){
	    	     event.stopPropagation();
	    	     this.classList.toggle('active');
	    	     const currentId = this.getAttribute('data-id');
	    	     const placeName = attName; 
	    	     console.log("서버 전송:", { id: currentId, name: placeName });
	    	     alert(placeName + "을(를) 찜했습니다.");
	    	 }

	    	    // --- 2. 관광 행사 (Festival) 02 업데이트 ---
	    	    const festSlot = festivalImage02.parentElement;
	    	    festivalImage02.style.backgroundImage = "url('" + festImg + "')";
	    	    festivalName02.innerText = festName;
	    	    
	    	    festSlot.style.cursor = "pointer";
	    	    festSlot.onclick = function() {
	    	        if (festLink && festLink !== "#" && festLink !== "") {
	    	            location.href = festLink;
	    	        }
	    	    };
	    	    
	    	 // 관광행사 02
	    	    const festivalHeartBtn02 = document.querySelector("#festivalName02 + .heartIcon");
	    	    festivalHeartBtn02.onclick = function(event){
	    	        event.stopPropagation();
	    	        this.classList.toggle('active');
	    	        alert(festName + "을(를) 찜했습니다.");
	    	    }

	    	    // --- 3. 맛집 (Restaurant) 02 업데이트 ---
	    	    const restSlot = restaurantImage02.parentElement;
	    	    restaurantImage02.style.backgroundImage = "url('" + restImg + "')";
	    	    restaurantName02.innerText = restName;
	    	    
	    	    restSlot.style.cursor = "pointer";
	    	    restSlot.onclick = function() {
	    	        if (restLink && restLink !== "#" && restLink !== "") {
	    	            location.href = restLink;
	    	        }
	    	    };
	    	    
	    	    
	    	 // 맛집 02
	    	    const restaurantHeartBtn02 = document.querySelector("#restaurantName02 + .heartIcon");
	    	    restaurantHeartBtn02.onclick = function(event){
	    	        event.stopPropagation();
	    	        this.classList.toggle('active');
	    	        alert(restName + "을(를) 찜했습니다.");
	    	    }

	    	    // --- 4. 호텔 (Hotel) 02 업데이트 ---
	    	    const hotelSlot = hotelImage02.parentElement;
	    	    hotelImage02.style.backgroundImage = "url('" + hotelImg + "')";
	    	    hotelName02.innerText = hotelName;
	    	    
	    	    hotelSlot.style.cursor = "pointer";
	    	    hotelSlot.onclick = function() {
	    	        if (hotelLink && hotelLink !== "#" && hotelLink !== "") {
	    	            location.href = hotelLink;
	    	        }
	    	    };
	    	    
	    	 // 호텔 02
	    	    const hotelHeartBtn02 = document.querySelector("#hotelName02 + .heartIcon");
	    	    hotelHeartBtn02.onclick = function(event){
	    	        event.stopPropagation();
	    	        this.classList.toggle('active');
	    	        alert(hotelName + "을(를) 찜했습니다.");
	    	    }
	    	}/*
	    	//=============================================================================
	    	//이 updateDetatils03부터 updateDetatils06까지 나중에 함수 구조 위에 처럼 싹 갈아 엎어야함!!!!(클리어)
	    	//싹 갈아엎었고, 나중에 주석 풀어.
	    	//=============================================================================
	    		
	    		// --- 3번 슬롯 업데이트 함수 ---
	    		function updateDetails03(attImg, attName, attLink, festImg, festName, festLink, restImg, restName, restLink, hotelImg, hotelName, hotelLink) {
	    		    // 1. 관광 명소 (Attraction) 03
	    		    const attSlot = attractionImage03.parentElement; 
	    		    attractionImage03.style.backgroundImage = "url('" + attImg + "')";
	    		    attractionName03.innerText = attName;
	    		    attSlot.style.cursor = "pointer";
	    		    attSlot.onclick = function() {
	    		        if (attLink && attLink !== "#" && attLink !== "") {
	    		            location.href = attLink;
	    		        }
	    		    };

	    		    // 2. 관광 행사 (Festival) 03
	    		    const festSlot = festivalImage03.parentElement;
	    		    festivalImage03.style.backgroundImage = "url('" + festImg + "')";
	    		    festivalName03.innerText = festName;
	    		    festSlot.style.cursor = "pointer";
	    		    festSlot.onclick = function() {
	    		        if (festLink && festLink !== "#" && festLink !== "") {
	    		            location.href = festLink;
	    		        }
	    		    };

	    		    // 3. 맛집 (Restaurant) 03
	    		    const restSlot = restaurantImage03.parentElement;
	    		    restaurantImage03.style.backgroundImage = "url('" + restImg + "')";
	    		    restaurantName03.innerText = restName;
	    		    restSlot.style.cursor = "pointer";
	    		    restSlot.onclick = function() {
	    		        if (restLink && restLink !== "#" && restLink !== "") {
	    		            location.href = restLink;
	    		        }
	    		    };

	    		    // 4. 호텔 (Hotel) 03
	    		    const hotelSlot = hotelImage03.parentElement;
	    		    hotelImage03.style.backgroundImage = "url('" + hotelImg + "')";
	    		    hotelName03.innerText = hotelName;
	    		    hotelSlot.style.cursor = "pointer";
	    		    hotelSlot.onclick = function() {
	    		        if (hotelLink && hotelLink !== "#" && hotelLink !== "") {
	    		            location.href = hotelLink;
	    		        }
	    		    };
	    		}

	    		// --- 4번 슬롯 업데이트 함수 ---
	    		function updateDetails04(attImg, attName, attLink, festImg, festName, festLink, restImg, restName, restLink, hotelImg, hotelName, hotelLink) {
	    		    const attSlot = attractionImage04.parentElement; 
	    		    attractionImage04.style.backgroundImage = "url('" + attImg + "')";
	    		    attractionName04.innerText = attName;
	    		    attSlot.style.cursor = "pointer";
	    		    attSlot.onclick = function() {
	    		        if (attLink && attLink !== "#" && attLink !== "") {
	    		            location.href = attLink;
	    		        }
	    		    };

	    		    const festSlot = festivalImage04.parentElement;
	    		    festivalImage04.style.backgroundImage = "url('" + festImg + "')";
	    		    festivalName04.innerText = festName;
	    		    festSlot.style.cursor = "pointer";
	    		    festSlot.onclick = function() {
	    		        if (festLink && festLink !== "#" && festLink !== "") {
	    		            location.href = festLink;
	    		        }
	    		    };

	    		    const restSlot = restaurantImage04.parentElement;
	    		    restaurantImage04.style.backgroundImage = "url('" + restImg + "')";
	    		    restaurantName04.innerText = restName;
	    		    restSlot.style.cursor = "pointer";
	    		    restSlot.onclick = function() {
	    		        if (restLink && restLink !== "#" && restLink !== "") {
	    		            location.href = restLink;
	    		        }
	    		    };

	    		    const hotelSlot = hotelImage04.parentElement;
	    		    hotelImage04.style.backgroundImage = "url('" + hotelImg + "')";
	    		    hotelName04.innerText = hotelName;
	    		    hotelSlot.style.cursor = "pointer";
	    		    hotelSlot.onclick = function() {
	    		        if (hotelLink && hotelLink !== "#" && hotelLink !== "") {
	    		            location.href = hotelLink;
	    		        }
	    		    };
	    		}

	    		// --- 5번 슬롯 업데이트 함수 ---
	    		function updateDetails05(attImg, attName, attLink, festImg, festName, festLink, restImg, restName, restLink, hotelImg, hotelName, hotelLink) {
	    		    const attSlot = attractionImage05.parentElement; 
	    		    attractionImage05.style.backgroundImage = "url('" + attImg + "')";
	    		    attractionName05.innerText = attName;
	    		    attSlot.style.cursor = "pointer";
	    		    attSlot.onclick = function() {
	    		        if (attLink && attLink !== "#" && attLink !== "") {
	    		            location.href = attLink;
	    		        }
	    		    };

	    		    const festSlot = festivalImage05.parentElement;
	    		    festivalImage05.style.backgroundImage = "url('" + festImg + "')";
	    		    festivalName05.innerText = festName;
	    		    festSlot.style.cursor = "pointer";
	    		    festSlot.onclick = function() {
	    		        if (festLink && festLink !== "#" && festLink !== "") {
	    		            location.href = festLink;
	    		        }
	    		    };

	    		    const restSlot = restaurantImage05.parentElement;
	    		    restaurantImage05.style.backgroundImage = "url('" + restImg + "')";
	    		    restaurantName05.innerText = restName;
	    		    restSlot.style.cursor = "pointer";
	    		    restSlot.onclick = function() {
	    		        if (restLink && restLink !== "#" && restLink !== "") {
	    		            location.href = restLink;
	    		        }
	    		    };

	    		    const hotelSlot = hotelImage05.parentElement;
	    		    hotelImage05.style.backgroundImage = "url('" + hotelImg + "')";
	    		    hotelName05.innerText = hotelName;
	    		    hotelSlot.style.cursor = "pointer";
	    		    hotelSlot.onclick = function() {
	    		        if (hotelLink && hotelLink !== "#" && hotelLink !== "") {
	    		            location.href = hotelLink;
	    		        }
	    		    };
	    		}

	    		// --- 6번 슬롯 업데이트 함수 ---
	    		function updateDetails06(attImg, attName, attLink, festImg, festName, festLink, restImg, restName, restLink, hotelImg, hotelName, hotelLink) {
	    		    const attSlot = attractionImage06.parentElement; 
	    		    attractionImage06.style.backgroundImage = "url('" + attImg + "')";
	    		    attractionName06.innerText = attName;
	    		    attSlot.style.cursor = "pointer";
	    		    attSlot.onclick = function() {
	    		        if (attLink && attLink !== "#" && attLink !== "") {
	    		            location.href = attLink;
	    		        }
	    		    };

	    		    const festSlot = festivalImage06.parentElement;
	    		    festivalImage06.style.backgroundImage = "url('" + festImg + "')";
	    		    festivalName06.innerText = festName;
	    		    festSlot.style.cursor = "pointer";
	    		    festSlot.onclick = function() {
	    		        if (festLink && festLink !== "#" && festLink !== "") {
	    		            location.href = festLink;
	    		        }
	    		    };

	    		    const restSlot = restaurantImage06.parentElement;
	    		    restaurantImage06.style.backgroundImage = "url('" + restImg + "')";
	    		    restaurantName06.innerText = restName;
	    		    restSlot.style.cursor = "pointer";
	    		    restSlot.onclick = function() {
	    		        if (restLink && restLink !== "#" && restLink !== "") {
	    		            location.href = restLink;
	    		        }
	    		    };

	    		    const hotelSlot = hotelImage06.parentElement;
	    		    hotelImage06.style.backgroundImage = "url('" + hotelImg + "')";
	    		    hotelName06.innerText = hotelName;
	    		    hotelSlot.style.cursor = "pointer";
	    		    hotelSlot.onclick = function() {
	    		        if (hotelLink && hotelLink !== "#" && hotelLink !== "") {
	    		            location.href = hotelLink;
	    		        }
	    		    };
	    		} */
		//GGG
		
		//GGG
		// 초기 로딩 시 서울 클릭
	    city01.click();
	  	//GGG
	  	
	    const allHeartIcons = document.querySelectorAll('.heartIcon');

	    allHeartIcons.forEach(function(heart) {
	        heart.onclick = function(event) {
	            event.stopPropagation();
	            this.classList.toggle('active');
	            
	            // 1. 클릭한 하트의 고유 ID 가져오기
	            const placeId = this.getAttribute('data-id'); 
	            // 2. 장소 이름 가져오기
	            const placeName = this.parentElement.querySelector('span:first-child').innerText;

	            console.log("서버로 보낼 데이터:", { id: placeId, name: placeName });

	            // [나중에 서버 연동 시]
	            /*
	            fetch('/api/wishlist/add', {
	                method: 'POST',
	                body: JSON.stringify({ id: placeId })
	            }).then(...)
	            */
	            alert(placeName + "이(가) 나의 여행담기에 저장되었습니다!");
	        };
	    });
	});  
  </script>
  <%-- //이병주 JS코드 --%>
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>  
  </body>
</html>