<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>여행담기 MAIN</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="icon" type="image/png" href="/images/favicon.png">
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
	<!-- 화면별 첫 메인 이미지, 지울 필요없이 반복 사용 image url만 수정-->
    <div class="hero-wrap js-fullheight" id="mainImg" style="background-image: url('images/main/homemainimg.png');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <!-- <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="caps" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행담기</p>
            <h1 data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">당신의 여행, 취향을 담다.</h1>
          </div>
        </div> -->
      </div>
    </div>
   	
   	<!-- 추천 여행 검색 -->
    <section class="ftco-section ftco-no-pb ftco-no-pt">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	        <div class="search-wrap-1 ftco-animate p-4">
	          <form action="#" class="search-property-1">
	            <div class="row align-items-end flex-nowrap justify-content-center">
	
	              <!-- 언제 -->
	              <div class="col-auto">
	                <div class="form-group mb-0">
	                  <div class="form-field">
	                    <select class="form-control custom-selectbox">
	                      <option selected disabled>언제?</option>
	                      <option>봄</option>
	                      <option>여름</option>
	                      <option>가을</option>
	                      <option>겨울</option>
	                    </select>
	                  </div>
	                </div>
	              </div>
	
	              <div class="col-auto keyword">에</div>
	
	              <!-- 누구와 -->
	              <div class="col-auto">
	                <div class="form-group mb-0">
	                  <div class="form-field">
	                    <select class="form-control custom-selectbox">
	                      <option selected disabled>누구와?</option>
	                      <option>혼자</option>
	                      <option>연인</option>
	                      <option>가족</option>
	                      <option>친구</option>
	                    </select>
	                  </div>
	                </div>
	              </div>
	
	              <div class="col-auto keyword">와</div>
	
	              <!-- 무엇을 -->
	              <div class="col-auto">
	                <div class="form-group mb-0">
	                  <div class="form-field">
	                    <select class="form-control custom-selectbox">
	                      <option selected disabled>무엇을?</option>
	                      <option>힐링</option>
	                      <option>액티비티</option>
	                      <option>맛집</option>
	                      <option>자연</option>
	                      <option>도시</option>
	                    </select>
	                  </div>
	                </div>
	              </div>
	
	              <div class="col-auto keyword">을</div>
	
	              <!-- 고정문구 -->
	              <div class="col-auto keyword keyword-place">어디에서?</div>
	
	              <!-- 검색 -->
	              <div class="col-auto">
	                <button type="submit" class="btn btn-primary search-btn">검색</button>
	              </div>
	
	            </div>
	          </form>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>

	
	<!-- 이달의 여행지-->
    <section class="ftco-counter img" id="section-counter">
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
		<!-- //이달의 여행지-->

		<!-- 어디로 여행을 떠나볼까요? -->
		<section  class="d-flex">
			<!-- container -->
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
			<!-- // container -->
			<!-- map -->
			<div class="map" style="border: 1px solid red;">
				<a href="#"><img src="" alt=""></a>
				<a href="#"><img src="" alt=""></a>
				<a href="#"><img src="" alt=""></a>
				<a href="#"><img src="" alt=""></a>
				<a href="#"><img src="" alt=""></a>
			</div>
		</section>
		<!-- //어디로 여행을 떠나볼까요? -->

		<!-- 봄여름가을겨울 -->
		<section class="d-flex">
			<!-- season -->
			<div class="season" style="border: 1px solid red;">
				<a href="#"><img src="" alt=""></a>
				<a href="#"><img src="" alt=""></a>
				<a href="#"><img src="" alt=""></a>
				<a href="#"><img src="" alt=""></a>
			</div>

			<!-- container -->
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
			<!-- // container -->
		</section>
		<!-- //봄여름가을겨울 -->
    
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
    