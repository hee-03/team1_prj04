<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>여행담기 MAIN</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.css">
    
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">

    <link rel="stylesheet" href="/css/aos.css">

    <link rel="stylesheet" href="/css/ionicons.min.css">

    <link rel="stylesheet" href="/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/icomoon.css">
    <link rel="stylesheet" href="/css/style.css">
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
	<!-- 화면별 첫 메인 이미지, 지울 필요없이 반복 사용 image url만 수정-->
    <div class="hero-wrap js-fullheight" id="mainImg" style="background-image: url('/images/main/homemainimg.png');" data-stellar-background-ratio="0.5">
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
    <section class="ftco-section rec-section">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	        <div class="search-wrap-1 ftco-animate p-4">
	          <form action="#" class="search-property-1">
	            <div class="row align-items-end flex-nowrap justify-content-center">
	
	              <!-- 언제 -->
	              <div class="col-auto selectBox">
	                <div class="form-group mb-0">
	                  <div class="form-field">
	                    <select class="form-control custom-selectbox">
	                      <option selected disabled>언제</option>
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
	              <div class="col-auto selectBox">
	                <div class="form-group mb-0">
	                  <div class="form-field">
	                    <select class="form-control custom-selectbox">
	                      <option selected disabled>누구와</option>
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
	              <div class="col-auto selectBox">
	                <div class="form-group mb-0">
	                  <div class="form-field">
	                    <select class="form-control custom-selectbox">
	                      <option selected disabled>무엇을</option>
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
    <section class="ftco-counter img thisMonthTour" id="section-counter">
    	<div class="container">
    		<div class="row justify-content-center mainrecMontTour">
	          <div class="col-md-7 text-center heading-section ftco-animate">
	            <h2 class="mb-4">여행담기 PICK! 이달의 여행지는?</h2>
	          </div>
	        </div>
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(images/main/mainrecimg.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">순천만국가정원</h2>
		            <p>
		            	클래스가 다른 꽃들의 향연, 꽃들이 이토록 아름다울 수 있을까.<br>인간이 아니라 신이 조경한 듯 황활한 정원들이 다채로운 모습으로 반긴다.
		            	우리 조상들이 가꾸던 전통 정원을 비롯해 세계적 정원 디자이너 찰스쟁스가 디자인한 호수정원이 있는 테마정원, 11개국의 세계정원 등을 하나씩 감상하다 보면 
		            	그 웅장한 규모와 기발한 디자인, 영롱한 자태에 매료돼 시간이 어떻게 가는지 모를 정도로 넋 놓고 구경하게 될 것이다.
		            </p>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>

	<!-- 어디로 여행을 떠나볼까요? -->
	<section class="ftco-section mytrip-list-map">
	  <div class="container">
	  	<div class="row justify-content-center mainrecMontTour">
	          <div class="col-md-7 text-center heading-section ftco-animate">
	            <h2 class="mb-4">어디로 가볼까?</h2>
	          </div>
	    </div>
	    <div class="row">
	    	<!-- 왼쪽: 카드 리스트 -->
	      	<div class="col-lg-8">
	        
		        <!-- 카드 1 -->
		        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
		          <div class="col-md-5 d-flex">
		            <div class="img w-100 trip-img" style="background-image:url('/images/main/yeosu.jpg');"></div>
		          </div>
		          <div class="col-md-7 p-4">
		            <h3 class="mb-2 trip-title">남해안 거점도시 미항 여수</h3>
		            <p class="mb-0 trip-desc">
		              국제 해양관광의 중심 전남 여수시. 3천여 그루의 동백나무로 가득 찬 붉은 섬 오동도는 웰빙 트래킹 코스를 갖추고 있어 한층 더 운치 있다. 
		              해상 케이블카를 타면 마치 바다 위를 걷는 듯한 느낌이 들며 탁 트인 바다 전망을 감상할 수 있다. 노래 가사에도 나오는...
		            </p>
		          </div>
		        </div>
	        
		        <!-- 카드 1 -->
		        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
		          <div class="col-md-5 d-flex">
		            <div class="img w-100 trip-img" style="background-image:url('/images/main/gyeongju.jpg');"></div>
		          </div>
		          <div class="col-md-7 p-4">
		            <h3 class="mb-2 trip-title">지붕없는 박물관 경주</h3>
		            <p class="mb-0 trip-desc">
		              발길이 닿는 어느 곳이든 문화 유적지를 만날 수 있는 곳이다. 
		              밤이면 더 빛나는 동궁과 월지를 비롯해 허허벌판에 자리를 굳건히 지키고 있는 첨성대. 뛰어난 건축미를 자랑하는 불국사 석굴암까지 어느 하나 빼놓을 수 없...
		            </p>
		          </div>
		        </div>
	        
		        <!-- 카드 1 -->
		        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
		          <div class="col-md-5 d-flex">
		            <div class="img w-100 trip-img" style="background-image:url('/images/main/gangneung.jpg');"></div>
		          </div>
		          <div class="col-md-7 p-4">
		            <h3 class="mb-2 trip-title">솔내음 가득한 제일강릉</h3>
		            <p class="mb-0 trip-desc">
		              은은한 커피향이 남다른 강원도 강릉시. 그중에도 카페거리로 유명한 안목해변은 발이 닿는 어디든 향긋한 커피 한 잔에 지평선 끝까지 펼쳐지는 바다 풍경은 덤으로 얻을 수 있다. 
		              일출 명소로 유명한 정동진과 야경이 아름다운 경포대는 대표 여행 코스! 구름도...
		            </p>
		          </div>
		        </div>
	      </div>
	
	      <!-- 지도 -->
	      <div class="col-lg-4">
	        <div class="map-box">
	        	<a href="#" class="region region1"><p>경기</p></a>	        
	        	<a href="#" class="region region2"><p>강원</p></a>	        
	        	<a href="#" class="region region3"><p>충남</p></a>	        
	        	<a href="#" class="region region4"><p>충북</p></a>	        
	        	<a href="#" class="region region5"><p>경북</p></a>	        
	        	<a href="#" class="region region6"><p>전북</p></a>	        
	        	<a href="#" class="region region7"><p>경남</p></a>	        
	        	<a href="#" class="region region8"><p>전남</p></a>	        
	        	<a href="#" class="region region9"><p>제주</p></a>	        
	        </div>
	      </div>
	
	    </div>
	  </div>
	</section>
		
	<!-- 봄여름가을겨울 -->
    <section class="ftco-section mytrip-list-map reverse-layout">
	  <div class="container">
	  	<div class="row justify-content-center mainrecMontTour">
	          <div class="col-md-7 text-center heading-section ftco-animate">
	            <h2 class="mb-4">봄·여름·가을·겨울</h2>
	          </div>
	    </div>
	    <div class="row">
	    	<!-- 왼쪽: 카드 리스트 -->
	      	<div class="col-lg-8">
	        
	        <!-- 카드 1 -->
	        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
	          <div class="col-md-5 d-flex">
	            <div class="img w-100" style="background-image:url('/images/main/yeosu.jpg');"></div>
	          </div>
	          <div class="col-md-7 p-4">
	            <h3 class="mb-2">남해안 거점도시 미항 여수</h3>
	            <p class="mb-0">
	              국제 해양관광의 중심 전남 여수시. 3천여 그루의 동백나무로 가득 찬 붉은 섬 오동도는 웰빙 트래킹 코스를 갖추고 있어 한층 더 운치 있다.
	            </p>
	          </div>
	        </div>
	        
	        <!-- 카드 1 -->
	        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
	          <div class="col-md-5 d-flex">
	            <div class="img w-100" style="background-image:url('/images/main/gyeongju.jpg');"></div>
	          </div>
	          <div class="col-md-7 p-4">
	            <h3 class="mb-2">지붕없는 박물관 경주</h3>
	            <p class="mb-0">
	              발길이 닿는 어느 곳이든 문화 유적지를 만날 수 있는 곳이다. 
	              밤이면 더 빛나는 동궁과 월지를 비롯해 허허벌판에 자리를 굳건히 지키고 있는 첨성대.
	            </p>
	          </div>
	        </div>
	        
	        <!-- 카드 1 -->
	        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
	          <div class="col-md-5 d-flex">
	            <div class="img w-100" style="background-image:url('/images/main/gangneung.jpg');"></div>
	          </div>
	          <div class="col-md-7 p-4">
	            <h3 class="mb-2">솔내음 가득한 제일강릉</h3>
	            <p class="mb-0">
	              은은한 커피향이 남다른 강원도 강릉시. 그중에도 카페거리로 유명한 안목해변은 발이 닿는 어디든 향긋한 커피 한 잔에 지평선 끝까지 펼쳐지는 바다 풍경은 덤으로 얻을 수 있다.
	            </p>
	          </div>
	        </div>
	      </div>
	
	      <!-- 지도 -->
	      <div class="col-lg-4">
	        <div class="map-box seasonBoxWrap">
	        	<div class="seasonBox">
		        	<a href="#" class="eachSeason spring"></a>        
		        	<a href="#" class="eachSeason summer"></a>        
		        	<a href="#" class="eachSeason autumn"></a>        
		        	<a href="#" class="eachSeason winter"></a>   
	        	</div>     
	        </div>
	      </div>
	
	    </div>
	  </div>
	</section>
	
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
<script>
document.addEventListener("DOMContentLoaded", () => {
  const regionBtns = document.querySelectorAll(".map-box .region");

  const imgEls   = document.querySelectorAll(".trip-img");
  const titleEls = document.querySelectorAll(".trip-title");
  const descEls  = document.querySelectorAll(".trip-desc");

  // 임시 데이터 (나중에 공공데이터로 교체)
  const mockData = {
	"경기": [
	  { title:"어디게요 경기입니다.", desc:"국제 해양관광의 중심 전남 여수시...", img:"/images/main/yeosu.jpg" },
	  { title:"순천만 국가정원", desc:"사계절이 아름다운 순천만 국가정원...", img:"/images/main/gangneung.jpg" },
	  { title:"목포 근대역사거리", desc:"항구 도시 감성 가득한 근대문화거리...", img:"/images/main/yeosu.jpg" }
	],
    "강원": [
      { title:"어디게요 강원입니다.", desc:"국제 해양관광의 중심 전남 여수시...", img:"/images/main/yeosu.jpg" },
      { title:"순천만 국가정원", desc:"사계절이 아름다운 순천만 국가정원...", img:"/images/main/gangneung.jpg" },
      { title:"목포 근대역사거리", desc:"항구 도시 감성 가득한 근대문화거리...", img:"/images/main/yeosu.jpg" }
    ],
    "충남": [
      { title:"어디게요 충남입니다.", desc:"안목해변 카페거리, 정동진...", img:"/images/main/gangneung.jpg" },
      { title:"속초 여행", desc:"시장+바다+드라이브 한 번에!", img:"/images/main/yeosu.jpg" },
      { title:"평창 힐링", desc:"조용한 숲과 맑은 공기...", img:"/images/main/yeosu.jpg" }
    ]
  };

  function setCards(trips) {
    imgEls.forEach((imgEl, i) => {
      const t = trips[i];
      if (!t) return;

      imgEl.style.backgroundImage   = `url('${t.img}')`;
      titleEls[i].textContent       = t.title;
      descEls[i].textContent        = t.desc;
    });
  }

  async function fetchTripsByRegion(regionName) {
    // TODO: 공공데이터 fetch
    return mockData[regionName] ?? [];
  }

  regionBtns.forEach(btn => {
    btn.addEventListener("click", async (e) => {
      e.preventDefault();
      const regionName = btn.textContent.trim();
      const trips = await fetchTripsByRegion(regionName);
      setCards(trips);
    });
  });

  // 초기값
  setCards(mockData["전남"] ?? []);
});
</script>

