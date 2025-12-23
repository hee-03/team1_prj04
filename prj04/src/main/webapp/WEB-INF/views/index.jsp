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
		            <div class="img w-100 region-img" style="background-image:url('');"></div>
		          </div>
		          <div class="col-md-7 p-4">
		            <h3 class="mb-2 region-title"></h3>
		            <p class="mb-0 region-desc"></p>
		          </div>
		        </div>
	        
		        <!-- 카드 1 -->
		        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
		          <div class="col-md-5 d-flex">
		            <div class="img w-100 region-img" style="background-image:url('');"></div>
		          </div>
		          <div class="col-md-7 p-4">
		            <h3 class="mb-2 region-title"></h3>
		            <p class="mb-0 region-desc"></p>
		          </div>
		        </div>
	        
		        <!-- 카드 1 -->
		        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
		          <div class="col-md-5 d-flex">
		            <div class="img w-100 region-img" style="background-image:url('');"></div>
		          </div>
		          <div class="col-md-7 p-4">
		            <h3 class="mb-2 region-title"></h3>
		            <p class="mb-0 region-desc"></p>
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
	            <div class="img w-100 season-img" style="background-image:url('');"></div>
	          </div>
	          <div class="col-md-7 p-4">
	            <h3 class="mb-2 season-title"></h3>
	            <p class="mb-0 season-desc"></p>
	          </div>
	        </div>
	        
	        <!-- 카드 1 -->
	        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
	          <div class="col-md-5 d-flex">
	            <div class="img w-100 season-img" style="background-image:url('');"></div>
	          </div>
	          <div class="col-md-7 p-4">
	            <h3 class="mb-2 season-title"></h3>
	            <p class="mb-0 season-desc"></p>
	          </div>
	        </div>
	        
	        <!-- 카드 1 -->
	        <div class="row d-flex align-items-stretch mb-4 mytrip-card">
	          <div class="col-md-5 d-flex">
	            <div class="img w-100 season-img" style="background-image:url('');"></div>
	          </div>
	          <div class="col-md-7 p-4">
	            <h3 class="mb-2 season-title"></h3>
	            <p class="mb-0 season-desc"></p>
	          </div>
	        </div>
	      </div>
	
	      <!-- 지도 -->
	      <div class="col-lg-4">
	        <div class="map-box seasonBoxWrap">
	        	<a href="#" class="eachSeason spring" data-season="봄">
		        	<img alt="" src="/images/main/spring.png">
		        </a>        
		        <a href="#" class="eachSeason summer" data-season="여름">
		        	<img alt="" src="/images/main/summer.png">
		        </a>        
		        <a href="#" class="eachSeason autumn" data-season="가을">
		        	<img alt="" src="/images/main/autumn.png">
		        </a>        
		        <a href="#" class="eachSeason winter" data-season="겨울">
		        	<img alt="" src="/images/main/winter.png">
		        </a>  
	        </div>
	      </div>
	
	    </div>
	  </div>
	</section>
	
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <script>
		document.addEventListener("DOMContentLoaded", () => {
			// 지역
			const regionBtns   = document.querySelectorAll(".mytrip-list-map .map-box .region");
			const regionImgEls = document.querySelectorAll(".region-img");
			const regionTitleEls = document.querySelectorAll(".region-title");
			const regionDescEls  = document.querySelectorAll(".region-desc");
			
			// 계절
			const seasonBtns   = document.querySelectorAll(".seasonBoxWrap .eachSeason");
			const seasonImgEls = document.querySelectorAll(".season-img");
			const seasonTitleEls = document.querySelectorAll(".season-title");
			const seasonDescEls  = document.querySelectorAll(".season-desc");
		
		  // 임시 데이터 (나중에 공공데이터로 교체)
		  const regionData  = {
			"경기": [
			  { title:"수원화성", desc:"조선 정조의 개혁 정신이 담긴 세계문화유산. 성곽을 따라 걷다 보면 역사와 풍경이 자연스럽게 어우러진다.", img:"/images/main/region/gyeonggi1.jpg" },
			  { title:"한국민속촌", desc:"조선 시대 생활을 그대로 재현한 전통 테마 공간. 계절별 행사와 체험으로 하루가 금방 지나간다.", img:"/images/main/region/gyeonggi2.jpg" },
			  { title:"에버랜드", desc:"사계절 축제와 놀이기구, 동물원까지 한 번에 즐기는 국내 최대 테마파크.", img:"/images/main/region/gyeonggi3.jpg" }
			],
		    "강원": [
		      { title:"낙산사", desc:"동해 바다와 맞닿은 천년 고찰. 일출 명소로 유명해 고요한 바다 풍경이 마음을 정화시킨다.", img:"/images/main/region/gangwon1.jpg" },
		      { title:"대관령 양떼목장", desc:"푸른 초원 위를 자유롭게 걷는 양들과 함께하는 힐링 산책 코스.", img:"/images/main/region/gangwon2.jpg" },
		      { title:"영금정 해돋이정자", desc:"바다 위로 떠오르는 해를 가장 가까이서 볼 수 있는 속초 대표 전망 명소.", img:"/images/main/region/gangwon3.jpg" }
		    ],
		    "충남": [
		      { title:"해미읍성", desc:"조선 시대 군사 요충지로 사용된 성곽. 고즈넉한 산책 코스로도 인기 있는 역사 유적지.", img:"/images/main/region/chungnam1.jpg" },
		      { title:"백제문화단지", desc:"백제의 궁궐과 생활상을 그대로 재현한 테마 공간. 아이와 함께하기 좋은 역사 체험 명소.", img:"/images/main/region/chungnam2.jpg" },
		      { title:"공산성", desc:"금강을 따라 이어지는 성곽길. 해질녘 풍경이 특히 아름답다.", img:"/images/main/region/chungnam3.jpg" }
		    ],
		  	"전남": [
		      { title:"순천만습지", desc:"갈대밭과 철새가 어우러진 자연 생태의 보고. 일몰 시간대 풍경이 압권이다.", img:"/images/main/region/jeonnam1.jpg" },
		      { title:"죽녹원", desc:"울창한 대나무 숲 사이로 걷는 산책길. 한여름에도 시원한 힐링 명소.", img:"/images/main/region/jeonnam2.jpg" },
		      { title:"여수해상케이블카", desc:"바다 위를 가로지르며 여수 밤바다를 한눈에 담을 수 있는 대표 관광 코스.", img:"/images/main/region/jeonnam3.jpg" }
		    ],
		  	"충북": [
			  { title:"단양강 잔도", desc:"절벽을 따라 이어진 데크길. 남한강 풍경을 감상하며 걷기 좋은 명소.", img:"/images/main/region/chungbuk1.jpg" },
			  { title:"청남대", desc:"옛 대통령 별장으로 사용되던 공간. 자연과 건축이 조화를 이루는 힐링 장소.", img:"/images/main/region/chungbuk2.jpg" },
			  { title:"중앙탑사적공원", desc:"남한강을 배경으로 한 역사 공원. 산책과 사진 촬영에 적합하다.", img:"/images/main/region/chungbuk3.jpg" }
			],
		  	"경북": [
			  { title:"부석사", desc:"무량수전으로 유명한 한국 불교 건축의 백미. 산사 특유의 고요함이 인상적이다.", img:"/images/main/region/gyeongbuk1.jpg" },
			  { title:"동궁과 월지", desc:"밤이 되면 더욱 빛나는 신라 왕궁의 별궁 터. 경주 야경 필수 코스.", img:"/images/main/region/gyeongbuk2.jpg" },
			  { title:"안동 하회마을", desc:"전통 한옥과 풍산류씨 종택이 보존된 유네스코 세계유산 마을.", img:"/images/main/region/gyeongbuk3.jpg" }
			],
		  	"전북": [
			  { title:"전주 한옥마을", desc:"전통 한옥과 감성 골목이 어우러진 전주 대표 관광지. 먹거리와 체험이 풍부하다.", img:"/images/main/region/jeonbuk1.jpg" },
			  { title:"광한루", desc:"춘향전의 배경이 된 누각. 연못과 정원이 어우러진 고즈넉한 명소.", img:"/images/main/region/jeonbuk2.jpg" },
			  { title:"전주 덕진공원", desc:"연꽃이 가득 피는 여름 풍경이 유명한 시민 휴식 공간.", img:"/images/main/region/jeonbuk3.jpg" }
			],
		  	"경남": [
			  { title:"진주성", desc:"임진왜란의 역사가 깃든 성곽. 남강과 함께하는 산책 코스로도 좋다.", img:"/images/main/region/gyeongnam1.jpg" },
			  { title:"사천 바다 케이블카", desc:"산과 바다를 동시에 조망할 수 있는 스릴 있는 이동 코스.", img:"/images/main/region/gyeongnam2.jpg" },
			  { title:"우포늪", desc:"국내 최대 자연 늪지. 사계절 생태 풍경이 살아 숨 쉰다.", img:"/images/main/region/gyeongnam3.jpg" }
			],
		  	"제주": [
			  { title:"섭지코지", desc:"푸른 바다와 초원이 어우러진 제주 대표 절경 포인트.", img:"/images/main/region/jeju1.jpg" },
			  { title:"카멜리아 힐", desc:"계절마다 다른 꽃이 피는 수목원. 사진 찍기 좋은 감성 명소.", img:"/images/main/region/jeju2.jpg" },
			  { title:"아쿠아플라넷 제주", desc:"대형 수조와 해양 생물을 만날 수 있는 제주 대표 실내 관광지.", img:"/images/main/region/jeju3.jpg" }
			]
		  
		  };
		  
		  const seasonData = {
			"봄": [
			  { title:"전라남도 곡성군", desc:"섬진강을 따라 이어지는 봄꽃 명소. 기차마을과 꽃축제가 어우러진 따뜻한 여행지.", img:"/images/main/season/spring1.jpg" },
			  { title:"전라남도 담양군", desc:"대나무 숲 사이로 걷는 봄 산책. 자연 속에서 여유를 느끼기 좋은 힐링 코스.", img:"/images/main/season/spring2.jpg" },
			  { title:"경상남도 합천군", desc:"황매산 철쭉이 장관을 이루는 봄 풍경. 분홍빛 산자락이 인상적인 사진 명소.", img:"/images/main/season/spring3.jpg" }
			],
			"여름": [
			  { title:"강원도 양양군", desc:"서핑과 해변이 어우러진 여름 여행지. 시원한 바다와 자유로운 분위기가 매력적이다.", img:"/images/main/season/summer1.jpg" },
			  { title:"전라남도 장흥군", desc:"바다와 숲이 공존하는 청정 지역. 여름철 해산물과 자연 체험이 풍부하다.", img:"/images/main/season/summer2.jpg" },
			  { title:"충청북도 영동군", desc:"계곡과 숲이 어우러진 여름 피서지. 물놀이와 힐링을 동시에 즐길 수 있다.", img:"/images/main/season/summer3.jpg" }
			],
			"가을": [
			  { title:"충청북도 괴산군", desc:"단풍과 산세가 아름다운 가을 명소. 조용한 자연 속에서 걷기 좋은 여행지.", img:"/images/main/season/autumn1.jpg" },
			  { title:"경상북도 영주시", desc:"부석사를 중심으로 펼쳐지는 가을 풍경. 고즈넉한 산사 여행에 제격이다.", img:"/images/main/season/autumn2.jpg" },
			  { title:"전라북도 정읍시", desc:"가을 축제와 내장산 단풍으로 유명한 도시. 형형색색의 풍경이 인상적이다.", img:"/images/main/season/autumn3.jpg" }
			],
			"겨울": [
			  { title:"충청남도 청양군", desc:"눈 덮인 산과 조용한 마을 풍경. 한적한 겨울 여행을 즐기기 좋다.", img:"/images/main/season/winter1.jpg" },
			  { title:"강원도 인제군", desc:"설경과 겨울 액티비티가 어우러진 지역. 눈꽃 트레킹과 겨울 스포츠가 인기다.", img:"/images/main/season/winter2.jpg" },
			  { title:"전라남도 장성군", desc:"겨울 숲의 고요함을 느낄 수 있는 힐링 여행지. 차분한 분위기가 매력적이다.", img:"/images/main/season/winter3.jpg" }
			]
		};
		
		  function setRegionCards(trips){
			    regionImgEls.forEach((el, i) => {
			      const t = trips[i];
			      if(!t) return;
			      el.style.backgroundImage = 'url("' + t.img + '")';
			      regionTitleEls[i].textContent = t.title;
			      regionDescEls[i].textContent  = t.desc;
			    });
			  }
		  
		  function setSeasonCards(trips){
			    seasonImgEls.forEach((el, i) => {
			      const t = trips[i];
			      if(!t) return;
			      el.style.backgroundImage = 'url("' + t.img + '")';
			      seasonTitleEls[i].textContent = t.title;
			      seasonDescEls[i].textContent  = t.desc;
			    });
			  }
		  
		  regionBtns.forEach(btn => {
			    btn.addEventListener("click", (e) => {
			      e.preventDefault();
			      const regionName = btn.textContent.trim();
			      setRegionCards(regionData[regionName] ?? []);
			    });
			  });
		  
		  seasonBtns.forEach(btn => {
			    btn.addEventListener("click", (e) => {
			      e.preventDefault();
			      const seasonName = btn.dataset.season; // "봄/여름/가을/겨울"
			      setSeasonCards(seasonData[seasonName] ?? []);
			    });
			  });
		
		  // 초기값
		  setRegionCards(regionData["전남"] ?? []);
		  setSeasonCards(seasonData["봄"] ?? []);
		});
	</script>
</body>
</html>


