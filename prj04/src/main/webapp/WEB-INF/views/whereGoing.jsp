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
	<div id="location_select">
	    <%-- ================================================= --%>
	    <%-- ★★★ id="location0N" 이거는 js dom 작업할 때 사용 ★★★ --%>
	    <%-- ================================================= --%>
	    <div id="location01" class="location_item selected_location">
	    	<div class="loc_img"></div><div class="loc_text">경기&서울</div>
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
          <div id="city01" class="city_item col-md-4 d-flex ftco-animate" data-city="서울"><%-- data-city 속성 반드시 지정 --%>
          	<div class="blog-entry justify-content-end">
          	  <%-- 도시 이미지 --%>
              <span id="city-img01" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-seoul.png');">
              </span><%--여기 a 태그에 있던 거 (해당 모든 a태그 공통) : blog-single.html --%>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="city-name01">서울</span><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div id="city02" class="city_item col-md-4 d-flex ftco-animate" data-city="수원"><%-- data-city 속성 반드시 지정 --%>
          	<div class="blog-entry justify-content-end">
              <%-- 도시 이미지 --%>
              <span id="city-img02" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-suwon.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="city-name02">수원</span><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div id="city03" class="city_item col-md-4 d-flex ftco-animate" data-city="안산"><%-- data-city 속성 반드시 지정 --%>
          	<div class="blog-entry">
          	  <%-- 도시 이미지 --%>
              <span id="city-img03" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-ansan.jpeg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span id="city-name03">안산</span><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
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
                <h3 class="heading"><span id="attraction_name01">경복궁</span><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <span class="block-20" style="background-image: url('images/image_2.jpg');">
              </span>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><span>와온해변</span><span class="heartIcon">❤</span></h3>
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
      </div>
    </section>
    <%-- //호텔 --%>
  <%-- 이병주 JS코드 --%>
  <script>
  document.addEventListener('DOMContentLoaded', function() {
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
	    
	    //attraction_image01
	    const attractionImage01 = document.querySelector("#attraction_image01");
	    //attraction_name01
	    const attractionName01 = document.querySelector("#attraction_name01");
	    
	    // 2. 클릭 이벤트 통합 관리
	    locationItems.forEach(function(item) {
	        item.addEventListener('click', function(event) {
	            // 모든 항목에서 선택 클래스 제거
	            locationItems.forEach(li => li.classList.remove('selected_location'));
	            // 클릭된 항목에 선택 클래스 추가
	            this.classList.add('selected_location');

	            // 클릭된 요소의 ID에 따라 데이터 변경
	            const selectedId = this.id;

	            if (selectedId === "location01") { // 경기&서울
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-seoul.png')";//서울
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-suwon.jpg')";//수원
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-ansan.jpeg')";//안산
	                
	                cityName01.innerText = "서울";
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
	    		const selectedId = this.id;
	    		if(selectedId=="city01"){
	    			attractionImage01.style.backgroundImage = "url('images/whereGoing/attractionImage/SeoulAndGyeonggi/seoul/GyeongBokGeung.jpg')";
	    			attractionName01.innerText = "경복궁";
	    			festivalImage01.style.backgroundImage = "url('images/image_1.jpg')";
	    			festivalName01.innerText = "순천만 생태 체험선";
	    			restaurantImage01.style.backgroundImage = "url('images/image_1.jpg')";
	    			restaurantName01.innerText = "순천만 생태 체험선";
	    			hotelImage01.style.backgroundImage = "url('images/image_1.jpg')";
	    			hotelName01.innerText = "순천만 생태 체험선";
	    		}else if(selectedId=="city02"){
	    			attractionImage01.style.backgroundImage = "url('images/whereGoing/attractionImage/SeoulAndGyeonggi/suwon/suwonHwaseong.jpg')";
	    			attractionName01.innerText = "수원화성";
	    			festivalImage01.style.backgroundImage = "url('images/whereGoing/festivalImage/SeoulAndGyeonggi/suwon/mediaArt.jpg')";
	    			festivalName01.innerText = "수원화성 미디어아트";
	    			restaurantImage01.style.backgroundImage = "url('images/whereGoing/restaurantImage/SeoulAndGyeonggi/suwon/JinmiChicken.jpg')";
	    			restaurantName01.innerText = "진미통닭";
	    			hotelImage01.style.backgroundImage = "url('images/whereGoing/hotelImage/SeoulAndGyeonggi/suwon/novotelSuwon.jpg')";
	    			hotelName01.innerText = "노보텔 수원";
	    		}else{
	    			attractionImage01.style.backgroundImage = "url('images/whereGoing/attractionImage/SeoulAndGyeonggi/ansan/DaeBuDo.jpg')";
	    			attractionName01.innerText = "대부도";
	    			festivalImage01.style.backgroundImage = "url('images/image_1.jpg')";
	    			festivalName01.innerText = "순천만 생태 체험선";
	    			restaurantImage01.style.backgroundImage = "url('images/image_1.jpg')";
	    			restaurantName01.innerText = "순천만 생태 체험선";
	    			hotelImage01.style.backgroundImage = "url('images/image_1.jpg')";
	    			hotelName01.innerText = "순천만 생태 체험선";
	    		}
	    	})
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
	});  
  </script> 
  <%-- //이병주 JS코드 --%>
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  
  </body>
  <%-- 희정님 js 코드 --%>
  <%-- 
  <script src="https://code.jquery.com/jquery-3.7.1.js" type="text/javascript"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   
	<script type="text/javascript">
		$(document).ready(function(){
		    // 처음에 rec div 전부 숨김
		    $("[id^='rec']").hide();
		    $("[id^='travel_destination']").on("click", function(){
		        // 클릭한 div의 id
		        let clickId = $(this).attr("id");
		        // 숫자만 추출 (01 ~ 10)
		        let num = clickId.replace("travel_destination", "");
		        // 모든 req 숨기기
		        $("[id^='rec']").hide();
		        // 같은 번호의 rec만 show
		        $("#rec" + num).show();
		    });
		});
	</script>
	--%>
</html>