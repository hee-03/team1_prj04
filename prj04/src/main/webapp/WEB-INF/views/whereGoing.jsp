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
	    <%-- ================================================ --%>
	    <%-- ★★★ id="location0N" 이거는 js dom 작업할 때 사용 ★★★ --%>
	    <%-- ================================================ --%>
	    <div id="location01" class="location_item selected_location">
	    	<div class="loc_img"></div><div class="loc_text">경기&서울</div>
	    </div><%-- 초기에 `경기/서울`이 default로 선택되게 지정. --%>
	    <div id="location02" class="location_item">
	    	<div class="loc_img"></div><div class="loc_text">강원</div>
	    </div><%-- 테스트: 강원도 클릭시 맨 처음 하트 아이콘이 다이아몬드로 바뀜. --%><%-- 나중에 이 기능은 없앨거임. --%>
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
          <div id="city01" class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
          	  <%-- 도시 이미지 --%>
              <a href="#" id="city-img01" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-seoul.jpg');">
              </a><%--여기 a 태그에 있던 거 (해당 모든 a태그 공통) : blog-single.html --%>
              <div class="text mt-3 float-right d-block">
                <h3 id="city-name01" class="heading"><a href="#">서울</a><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div id="city02" class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <%-- 도시 이미지 --%>
              <a href="#" id="city-img02" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-suwon.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 id="city-name02" class="heading"><a href="#">수원</a><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div id="city03" class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
          	  <%-- 도시 이미지 --%>
              <a href="#" id="city-img03" class="block-20" style="background-image: url('images/whereGoing/cityImage/city-ansan.jpeg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 id="city-name03" class="heading"><a href="#">인천</a><span class="heartIcon">❤</span></h3><%-- 도시 이름 --%>
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
      </div>
    </section>
    <%-- //호텔 --%>




  <%-- 이병주 JS코드 --%>
  <script>
  
  document.addEventListener('DOMContentLoaded', function() {
	    // 1. 공통 요소 선택
	    const locationItems = document.querySelectorAll('.location_item');
	    
	    const cityImg01 = document.querySelector("#city-img01");
	    const cityImg02 = document.querySelector("#city-img02");
	    const cityImg03 = document.querySelector("#city-img03");
	    
	    const cityName01 = document.querySelector("#city-name01 > a");
	    const cityName02 = document.querySelector("#city-name02 > a");
	    const cityName03 = document.querySelector("#city-name03 > a");

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
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-seoul.jpg')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-suwon.jpg')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-ansan.jpeg')";
	                
	                cityName01.innerText = "서울";
	                cityName02.innerText = "수원";
	                cityName03.innerText = "안산";
	            } 
	            else if (selectedId === "location02") { // 강원
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-sokcho.jpg')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-cheuncheon.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-pyeongchang.png')";
	                
	                cityName01.innerText = "속초";
	                cityName02.innerText = "춘천";
	                cityName03.innerText = "평창";
	            }
	            // 나머지 location03~09도 같은 방식으로 추가 가능
	        });
	    });

	    // 마우스 오버/아웃 효과 (기존 코드 유지)
	    locationItems.forEach(function(item) {
	        item.addEventListener('mouseover', function() {
	            this.style.border = "3px solid navy";
	        });
	        item.addEventListener('mouseout', function() {
	            this.style.border = "";
	        });
	    });
	});  

  	
  </script>
  <%--기존 js 주석처리
  document.addEventListener('DOMContentLoaded', function(){
	/* 서울,경기, 강원 등 요소 선택 */
  	let locationItems = document.querySelectorAll('.location_item');//경기도, 서울, 강원도 같은 버튼 요소들을 담을 변수 생성
  	
  	//이 버튼 요소들을 순회
  	locationItems.forEach(function(item){
  		item.addEventListener('click', function(event){//아이템을 클릭 시 이벤트함수 실행.
  			//모든 항목을 순회하여 밑줄제거
  	  		locationItems.forEach(function(location){
  	  			location.classList.remove('selected_location');
  	  		});
  			//현재 항목
  			event.currentTarget.classList.add('selected_location');
  	  	});
  	});
  	/* //서울,경기, 강원 등 요소 선택 */
  	
  	/*경기, 강원 같은 지역 요소 선택 아이디로 상세 변경*/
  	//location01
  	  /*   	let location01 = document.querySelector("#location01");//경기
	let location02 = document.querySelector("#location02");//강원
	let location03 = document.querySelector("#location03");//충남
	let location04 = document.querySelector("#location04");//충북
	let location05 = document.querySelector("#location05");//전남
	let location06 = document.querySelector("#location06");//전북
	let location07 = document.querySelector("#location07");//경남
	let location08 = document.querySelector("#location08");//경북
	let location09 = document.querySelector("#location09");//제주
	
	let cityImg01 = document.querySelector("#city-img01");
	let cityImg02 = document.querySelector("#city-img02");
	let cityImg03 = document.querySelector("#city-img03");
	
	let cityName01 = document.querySelector("#city-name01 > a");
	let cityName02 = document.querySelector("#city-name02 > a");  	
	let cityName03 = document.querySelector("#city-name03 > a");

	
	location01.addEventListener("click", function(event){
		cityImg01.style.background-image = "url('images/whereGoing/cityImage/city-seoul.jpg')";
		cityImg02.style.background-image = "url('images/whereGoing/cityImage/city-suwon.jpg')";
		cityImg03.style.background-image = "url('images/whereGoing/cityImage/city-ansan.jpeg')";
		
		cityName01.innerText = "서울";
		cityName02.innerText = "수원";
		cityName03.innerText = "안산";
		
	});
	location02.addEventListener("click", function(event){
		cityImg01.style.background-image = "url('images/whereGoing/cityImage/city-sokcho.jpg')";//속초 이미지
		cityImg02.style.background-image = "url('images/whereGoing/cityImage/city-cheuncheon.png')";//춘천 이미지
		cityImg03.style.background-image = "url('images/whereGoing/cityImage/city-pyeongchang.png')";//평창 이미지
		
		cityName01.innerText = "속초";
		cityName02.innerText = "평창";
		cityName03.innerText = "수원";
		
	});  	
	 */

  	/* 마우스 오버시 색 변환 */
  	locationItems.forEach(function(item) { // item(개별 요소)에 등록해야 합니다.
        // 마우스 오버
        item.addEventListener('mouseover', function() {
            // 이미 'selected_location' 클래스가 있다면 색을 바꾸지 않도록 로직을 추가하는 것이 좋습니다.
            // 여기서는 단순 구현을 위해 일단 모두 적용
            this.style.border = "1px solid #FFA648";
            this.style.color = "navy";
        });

        // 마우스 아웃
        item.addEventListener('mouseout', function() {
            this.style.border = "";
            this.style.color = "";
        });
    });
  	/*//마우스 오버시 색 변환 */
  	
  	/* 요소 클릭시 바뀌는 거 테스트*/
  	/* ☆☆☆나중에 반드시 지울것!!!☆☆☆ */
  	/*let location02 = document.querySelector("#location02");
  	let heartIcon = document.querySelector(".heartIcon");
  	
  	location02.addEventListener("click", function(){
  		heartIcon.innerText = "◆";
  	})*/
  	/*//요소 클릭시 바뀌는 거 테스트*/
  	
  	
  });
   --%>
  
  
  
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