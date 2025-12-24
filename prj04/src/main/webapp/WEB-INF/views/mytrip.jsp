<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>나의 여행담기</title>
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
    <style type="text/css">
    	#btnMore {
		  padding: 10px 28px;
		  border-radius: 30px;
		  font-size: 15px;
		}
		.d-none { display: none !important; }
    </style>
  </head>
  <body>    
  	<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/mytrip/mytripmain.png');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center" style="padding-bottom: 380px; text-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);">
            <h1 class="mb-3 bread">나의 여행담기</h1>
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
        <div class="row d-flex" id="favList">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav01.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">순천만 생태 체험선</a><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav02.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">와온해변</a><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav03.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">선암사</a><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>

          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav01.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">순천만 생태 체험선</a><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav02.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">와온해변</a><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav03.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">선암사</a><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
          
          <div class="col-md-4 d-flex ftco-animate d-none">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav01.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">순천만 생태 체험선</a><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate d-none">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav02.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">와온해변</a><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate d-none">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav03.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">선암사</a><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
          
          <div class="col-md-4 d-flex ftco-animate d-none">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav01.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">순천만 생태 체험선</a><span class="heartIcon">❤</span></h3>
                <p>#뱃길따라 탐사하는 선상투어 #다양한 생물을 볼 수 있는 시간</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate d-none">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav02.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">와온해변</a><span class="heartIcon">❤</span></h3>
                <p>#일몰의 명소이자 드라이브 코스로 유명한 와온해변 #인생샷 포토존 명소</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate d-none">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav03.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading"><a href="#">선암사</a><span class="heartIcon">❤</span></h3>
                <p>#한국에서 가장 아름다운 절 #전각과 수목의 조화</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate d-none">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('/images/mytrip/fav03.jpg');">
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
		    <button type="button" id="btnMore" class="btn btn-outline-primary">
		      더보기
		    </button>
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
    				<div class="img d-flex align-self-stretch" style="background-image:url(/images/mytrip/rec01.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">순천만국가정원</h2>
		            <p>
						클래스가 다른 꽃들의 향연, 꽃들이 이토록 아름다울 수 있을까.
						인간이 아니라 신이 조경한 듯 황활한 정원들이 다채로운 모습으로 반긴다. 
						우리 조상들이 가꾸던 전통 정원을 비롯해 세계적 정원 디자이너 찰스쟁스가 디자인한 호수정원이 있는 테마정원, 
						11개국의 세계정원 등을 하나씩 감상하다 보면 그 웅장한 규모와 기발한 디자인, 
						영롱한 자태에 매료돼 시간이 어떻게 가는지 모를 정도로 넋 놓고 구경하게 될 것이다.
					</p>
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
    				<div class="img d-flex align-self-stretch" style="background-image:url(/images/mytrip/rec02.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">호미곶</h2>
		            <p>
						호미곶은 한반도의 최동단에 위치, 한반도 지형상 호랑이 꼬리에 해당하는 곳이다. 
						고산자 김정호는 대동여지도를 만들면서 이곳을 일곱번이나 답사 측정한 뒤 우리나라의 가장 동쪽임을 확인하였다고 한다. 
						가장 먼저 해가 뜨는 곳으로 2000년 및 2001년 두차례에 걸쳐 국가지정 해맞이 축전이 개최되었으며 
						해마다 한민족 해맞이 축전이 열리고 있다. 
						이곳에 조성된 해맞이 광장에는 천년대의 마지막 햇빛과 날짜변경선인 피지섬의 첫 햇빛, 
						그리고 이곳 호미곶에서 채화된 시작의 햇빛 등을 합해 영원의 불로 간직하고 있는 영원의 불씨함이 있으며 
						바다와 육지에 각각 오른손과 왼손의 형상을 하고 화합과 상생을 뜻하고 있는 대형 청동 조형물 상생의 손과 
						삼국유사에 전해 내려오는 이 지방 설화의 주인공 연오랑세오녀상이 있다. 
						상생의 손은 국가행사인 호미곶 해맞이 축전을 기리는 상징물이다. 
						육지에선 왼손, 바다에선 오른손인 상생의 손은 새천년을 맞아 모든 국민이 서로를 도우며 살자는 뜻에서 만든 조형물인 
						상생의 손은 두 손이 상생을 의미한다. 성화대의 화반은 해의 이미지이며, 두 개의 원형고리는 화합을 의미한다. 
						상생의 두손은 새천년을 맞아 화해와 상쇄의 기념정신을 담고 있다.						
					</p>
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
    				<div class="img d-flex align-self-stretch" style="background-image:url(/images/mytrip/rec03.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">공주 군밤축제</h2>
		            <p>
						중부권 대표 겨울 축제인 '겨울공주 군밤축제'가 '공주 알밤과 떠나는 달콤한 여행'을 주제로 
						1월 16일부터 20일까지 5일간 공주 금강신관공원에서 개최 된다. 
						대표프로그램은 지름 2m에 달하는 대형화로에서 긴 알밤뜰망을 활용해 직접 품질좋은 공주 알밤을 구워먹는 '대형화로체험', 
						공주에서 생산된 지역 농축산물을 그릴위에서 구워 먹을 수 있는 '공주 군밤 그릴존,' 알밤관련 음식, 물품 만들기 체험이 있으며, 
						추억의 민속놀이 체험, 추억 포토존 등 다양한 볼거리와 즐길거리를 제공한다.
					</p>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>
    
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <script src="js/heartIcon.js"></script>
    <script>
		document.addEventListener("DOMContentLoaded", () => {
		  const list = document.getElementById("favList");
		  const btn  = document.getElementById("btnMore");
		  if (!list || !btn) return;
		
		  const cards = Array.from(list.querySelectorAll(".col-md-4"));
		  const STEP = 6;
		
		  btn.addEventListener("click", () => {
		    const hidden = cards.filter(card => card.classList.contains("d-none"));
		    hidden.slice(0, STEP).forEach(card => card.classList.remove("d-none"));
		
		    // 더 이상 숨겨진 카드가 없으면 버튼 숨김
		    if (cards.every(card => !card.classList.contains("d-none"))) {
		      btn.style.display = "none";
		    }
		  });
		});
	</script>




		    
</body>
</html>
    