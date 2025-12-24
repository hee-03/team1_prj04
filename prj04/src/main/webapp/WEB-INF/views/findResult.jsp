<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>여행지 검색결과</title>
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
	
	<%-- ooo 검색결과 --%>
    <section id="destination_travel" class="ftco-section3">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-41">관광 명소</h2>
          </div>
        </div>
        <div id="travelList" class="d-flex">
			<!-- ajax결과가 여기에 삽입 -->
        </div>
      </div>
    </section>
    <%-- //ooo 검색결과 --%>
    
    <%-- 이곳도 추천해요 --%>
    <section class="ftco-counter img mytripsect" id="section-counter">
    	<div class="container">
    		<div class="row justify-content-center pb-4">
	          <div class="col-md-7 text-center heading-section ftco-animate">
	            <h2 class="mb-4">이곳도 추천해요.</h2>
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
    <%-- //이곳도 추천해요 --%>
    
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>  
  </body>
  <script>
  $(document).ready(function(){
		
	  let regionName = "서울";
	  // 서울 초기 선택
	  $("#location00").addClass("active");
	  // 초기화면에서 영역표시
	  $("[id^='destination']").removeClass("d-none");
	  
	    // 클릭 이벤트
	    $("[id^='location']").on("click", function(){
	    	
	    	// 서울 선택 초기화
	    	$("[id^='location']").removeClass("active");
	    	$(this).addClass("active");
	    	
	        //$("#destination").removeClass("d-none");
	        
	        // 클릭된 여행지 위치에서 지역명 추출
	        let regionText = $(this).children(".loc_text").text();
	        console.log(regionText);// 지역 나오는거 확인
	        
	        switch (regionText) {
	        case "경기": regionName = "경기도"; break;
	        case "강원": regionName = "강원특별자치도"; break;
	        case "전북": regionName = "전북특별자치도"; break;
	        case "경남": regionName = "경상남도"; break;
	        case "경북": regionName = "경상북도"; break;
	        case "제주": regionName = "제주특별자치도"; break;
	        case "서울": regionName = "서울"; break;
	        case "충남": regionName = "충청남도"; break;
	        case "충북": regionName = "충청북도"; break;
	        case "전남": regionName = "전라남도"; break;
	        default:
	            break;
	    	}
	    	console.log("변환된 regionName:", regionName);
	        
	        //AJAX 호출
	        loadTravel(regionName)
	        
	    });
	    	loadTravel(regionName);
	        //AJAX 호출
	        function loadTravel(regionName){
	        	$.ajax({
		        	url: "${pageContext.request.contextPath}/travel/list",
		        	type: "get",
		        	data: {regionName: regionName},
		        	dataType: "json",
		        	success: function(list){
		        		let split = splitByCategory(list);
		        		let randomTravel = getRandomList(split.travelList);
		        		let randomLeisure = getRandomList(split.leisureList);
		        		let randomFood = getRandomList(split.foodList);
		        		let randomHotel = getRandomList(split.hotelList);
		        		//initTravelList(list);
		        		drawTravelList(randomTravel);
		        		drawLeisureList(randomLeisure);
		        		drawFoodList(randomFood);
		        		drawHotelList(randomHotel);
		        	},
		        	error: function(){
		        		alert("데이터 불러오기 실패");
		        	}
		        });
	        }
	        
	        // 대분류(cat1)별로 분류
	        function splitByCategory(list){
	        	let travelList = [];
	        	let leisureList = [];
	        	let foodList = [];
	        	let hotelList = [];
	        	
	        	$.each(list, function(i, item){
	        		
	        		if(["A01", "A02", "A04", "C01"].includes(item.cat1)){
	        			// 여행지 A01, A02, A04, C01
	        			travelList.push(item);
	        		}
	        		if(item.cat1 === "A03"){
	        			// 레포츠
	        			leisureList.push(item);
	        		}
	        		if(item.cat1 === "A05"){
	        			//음식
	        			foodList.push(item);
	        		}
	        		if(item.cat1 === "B02"){
	        			// 호텔
	        			hotelList.push(item);
	        		}
	        	})
	        	return {
	        		travelList: travelList,
	        		leisureList: leisureList,
	        		foodList: foodList,
	        		hotelList: hotelList
	        	};
	        }
		    
			function getRandomList(list){
	        	
	        	let imageList = list.filter(function(item){
	        		return item.firstimage && item.firstimage.trim() !== "";
	        	})
	        	
	        	//랜덤 셔플
	        	imageList.sort(function(){
	        		return Math.random() - 0.5;
	        	});
	        	
	        	/* // 6개 선택
	        	let randomList = imageList.slice(0, 6);
	        	drawTravelList(randomList); */
	        	
	        	return imageList.slice(0, 6);
	        }
	        
			// 명소 리스트
		    function drawTravelList(list){
		    	
		    	let html = `<div class="row">`;
		    	
		    	if(list.length === 0){
		    		html += "<p>해당 지역의 여행지 데이터가 없습니다.</p>"
		    	}else{
		    		$.each(list, function(i, item){
		    			
		    			html += `
		    					 <div class="col-md-4 d-flex">
		    					 	<div class="blog-entry justify-content-end" style="width:800px;">
		    					 		<a href="#" class="block-20"
		    					 			style="background-image: url('\${item.firstimage}');">
		    					 		</a>
		    					 		<div class="text mt-3 float-right d-block">
			    					 		<h3 class="heading">
			    					 			<a href="#">\${item.title}</a>
			    					 			<span class="heartIcon">❤</span>
			    					 		</h3>
			    					 		<p>\${item.addr1}</p>
			    					 		<p>\${item.cat1}</p>
		    					 		</div>
		    					 	</div>
		    					 </div>
		    					`;
		    		});	
		    	}
		    	html += `</div>`;
		    	
		    	$("#travelList").html(html)
		    }
			// 레저 리스트
			function drawLeisureList(list){
		    	
		    	let html = `<div class="row">`;
		    	
		    	if(list.length === 0){
		    		html += "<p>해당 지역의 레저 데이터가 없습니다.</p>"
		    	}else{
		    		$.each(list, function(i, item){
		    			
		    			html += `
		    					 <div class="col-md-4 d-flex">
		    					 	<div class="blog-entry justify-content-end" style="width:800px;">
		    					 		<a href="#" class="block-20"
		    					 			style="background-image: url('\${item.firstimage}');">
		    					 		</a>
		    					 		<div class="text mt-3 float-right d-block">
			    					 		<h3 class="heading">
			    					 			<a href="#">\${item.title}</a>
			    					 			<span class="heartIcon">❤</span>
			    					 		</h3>
			    					 		<p>\${item.addr1}</p>
			    					 		<p>\${item.cat1}</p>
		    					 		</div>
		    					 	</div>
		    					 </div>
		    					`;
		    		});	
		    	}
		    	html += `</div>`;
		    	
		    	$("#leisureList").html(html)
		    }
			// 맛집 리스트
			function drawFoodList(list){
		    	
		    	let html = `<div class="row">`;
		    	
		    	if(list.length === 0){
		    		html += "<p>해당 지역의 맛집 데이터가 없습니다.</p>"
		    	}else{
		    		$.each(list, function(i, item){
		    			
		    			html += `
		    					 <div class="col-md-4 d-flex">
		    					 	<div class="blog-entry justify-content-end" style="width:800px;">
		    					 		<a href="#" class="block-20"
		    					 			style="background-image: url('\${item.firstimage}');">
		    					 		</a>
		    					 		<div class="text mt-3 float-right d-block">
			    					 		<h3 class="heading">
			    					 			<a href="#">\${item.title}</a>
			    					 			<span class="heartIcon">❤</span>
			    					 		</h3>
			    					 		<p>\${item.addr1}</p>
			    					 		<p>\${item.cat1}</p>
		    					 		</div>
		    					 	</div>
		    					 </div>
		    					`;
		    		});	
		    	}
		    	html += `</div>`;
		    	
		    	$("#foodList").html(html)
		    }
			// 호텔 리스트
			function drawHotelList(list){
		    	
		    	let html = `<div class="row">`;
		    	
		    	if(list.length === 0){
		    		html += "<p>해당 지역의 호텔 데이터가 없습니다.</p>"
		    	}else{
		    		$.each(list, function(i, item){
		    			
		    			html += `
		    					 <div class="col-md-4 d-flex">
		    					 	<div class="blog-entry justify-content-end" style="width:800px;">
		    					 		<a href="#" class="block-20"
		    					 			style="background-image: url('\${item.firstimage}');">
		    					 		</a>
		    					 		<div class="text mt-3 float-right d-block">
			    					 		<h3 class="heading">
			    					 			<a href="#">\${item.title}</a>
			    					 			<span class="heartIcon">❤</span>
			    					 		</h3>
			    					 		<p>\${item.addr1}</p>
			    					 		<p>\${item.cat1}</p>
		    					 		</div>
		    					 	</div>
		    					 </div>
		    					`;
		    		});	
		    	}
		    	html += `</div>`;
		    	
		    	$("#hotelList").html(html)
		    }
	    
	});
  </script>
</html>