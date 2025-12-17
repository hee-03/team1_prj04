<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>나의 여행담기</title>
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
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/mytrip/mytripmainimg.png');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">나의 여행담기</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>About us <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">내가 좋아하는 여행</h2>
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
    
    <section class="ftco-counter img mytripsect" id="section-counter">
    	<div class="container">
    		<div class="row justify-content-center pb-4">
	          <div class="col-md-7 text-center heading-section ftco-animate">
	            <h2 class="mb-4">여행담기가 추천하는 여행지</h2>
	          </div>
	        </div>
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(images/about.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">Make Your Tour Memorable and Safe With Us</h2>
		            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>
    <section class="ftco-counter img mytripsect" id="section-counter1">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(images/about.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">Make Your Tour Memorable and Safe With Us</h2>
		            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>
    <section class="ftco-counter img mytripsect" id="section-counter2">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(images/about.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">Make Your Tour Memorable and Safe With Us</h2>
		            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>
    
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
    