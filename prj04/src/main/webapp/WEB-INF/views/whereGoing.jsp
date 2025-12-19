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
	<!-- íë©´ë³ ì²« ë©ì¸ ì´ë¯¸ì§, ì§ì¸ íììì´ ë°ë³µ ì¬ì© image urlë§ ìì -->
    <div class="hero-wrap js-fullheight" style="background-image: url('images/whereGoing/whereGoing_background.png');" data-stellar-background-ratio="0.5">
      <%-- 배경이미지 형광빛 부분 제거 나중에 주석도 삭제예정
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="caps" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Travel to the any corner of the world, without going around in circles</p>
            <h1 data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Make Your Tour Amazing With Us</h1>
          </div>
        </div>
      </div>
      --%>
    </div> 
	<%-- --%>
	<%-- 도 or 특별시 단위 지역 선택 (기본값: 서울)--%>
	<div id="location_select">
	    <%-- ================================================ --%>
	    <%-- ★★★ id="location0N" 이거는 js dom 작업할 때 사용 ★★★ --%>
	    <%-- ================================================ --%>
	    <div id="location01" class="location_item selected_location">경기&서울</div><%-- 초기에 서울에 default로 선택되게 지정. --%>
	    <div id="location02" class="location_item">강원</div><%-- 테스트: 강원도 클릭시 맨 처음 하트 아이콘이 다이아몬드로 바뀜. --%><%-- 나중에 이 기능은 없앨거임. --%>
	    <div id="location03" class="location_item">충남</div>
	    <div id="location04" class="location_item">충북</div>
	    <div id="location05" class="location_item">전남</div>
	    <div id="location06" class="location_item">전북</div>
	    <div id="location07" class="location_item">경남</div>
	    <div id="location08" class="location_item">경북</div>
	    <div id="location09" class="location_item">제주</div>
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