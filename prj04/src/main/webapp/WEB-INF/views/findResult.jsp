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
    <section id="destination_travel" class="ftco-section3" style="margin-top:50px;">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-41">검색 결과</h2>
          </div>
        </div>
        <div id="travelList" class="d-flex">
			<!-- ajax결과가 여기에 삽입 -->
        </div>
      </div>
    </section>
    <%-- //ooo 검색결과 --%>
    
    <%-- 이곳도 추천해요 --%>
    <section class="ftco-counter img mytripsect" id="section-counter" style="margin-top:80px;">
    	<div class="container">
    		<div class="row justify-content-center pb-4">
	          <div class="col-md-7 text-center heading-section ftco-animate">
	            <h2 class="mb-4">이곳도 추천해요.</h2>
	          </div>
	        </div>
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(/images/findResult/GyeongBokGeung.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">경복궁</h2>
		            <p>
						서울특별시 종로구 사직로 161 (세종로)에 있는 조선시대의 궁궐 중 하나이자 조선의 정궁(법궁)으로, 사적 제117호로 지정되었다. 
						태조가 조선을 건국하고 한양 천도를 단행하면서 조선 시대에 가장 먼저 지은 궁궐이다.
						1592년 임진왜란 때 소실되어 275년 간 방치되었다. 
						그러던 1865년 고종 재위 시기에 왕실의 권위를 높이기 위한 목적으로 중건되어, 
						궐내 전각 7,225칸과 후원(後苑) 내 전각 232칸 반을 합해 7,450여 칸의 거대한 규모를 자랑하는 건축물로 거듭났다. 
						하지만 조선 말기와 대한제국 시기에 일부 전각이 이전되었으며 특히 일제강점기에 전각 수천 칸이 헐리거나 매각되면서 대부분의 건축물이 소실되었다. 
						게다가 광복 이후 대한민국 정부가 수립되고 나서도 9동 106칸이 철거되는 등 수난을 겪었다.
						복원 사업에 착수하기 직전에는 고종 재위 당시의 불과 7% 수준인 36동만 남아있는 상태였으며, 
						1990년 강녕전, 교태전 권역 등을 시작으로 단계적인 복원이 이루어지고 있다. 
						다만 현재까지 수립된 복원 사업이 모두 진행되어도 고종 재위 시기의 41%에 불과할 정도로 자료 부족 등 
						현실적인 문제로 인해 미래에도 온전한 조선시대 말의 모습을 보기는 어려울 듯하다.
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
    				<div class="img d-flex align-self-stretch" style="background-image:url(/images/findResult/Coex.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		            <h2 class="mb-4">서울 코엑스</h2>
		            <p>
						서울특별시 강남구 영동대로 513(삼성동)에 위치한 한국종합전시장의 영문 명칭이다. 
						일반적으로 ‘코엑스’라고 하면 전시장뿐만 아니라 코엑스몰, 호텔 등 부대시설까지 포함한 
						한국종합무역센터 전체를 통칭하는 경우가 많지만, 엄밀히 말하면 전시장만 ‘코엑스’이다.
						코엑스는 전시·컨벤션 시설로서 국내외 전시회와 행사, 회의 등을 개최하며, 
						동시에 코엑스몰과 연결되어 쇼핑·문화·관광의 복합 공간으로 기능한다.
						이 때문에 코엑스라는 명칭은 시설 전체를 통칭할 때와 전시장만을 지칭할 때 
						혼용되어 사용되는 경우가 많다.						
					</p>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>
    <section class="ftco-counter img mytripsect" id="section-counter2" style="margin-bottom:80px;">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(/images/findResult/hongdaeStreet.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          		<div class="col-md-12 heading-section ftco-animate">
		            		<h2 class="mb-4">홍대거리</h2>
		            		<p>
								홍대거리는 홍익대학교, 홍대입구역, 상수역, 합정역, 망원역 일대에 위치한 서울의 상권이다. 
								옛 당인리선 철길을 따라 완만한 곡선으로 중심 거리(어울마당로)가 형성되어 있다.
								홍대거리의 홍대는 홍익대학교의 줄임말인데, 학교명이 인근 상권의 이름이 된것은 홍대입구역이 개통된 후
								특색 있는 상권이 갖춰진 서교동, 동교동, 상수동 일대 또는 이 지역에서 발달한 국내 인디씬을 흔히 홍대 앞이라고 칭하던 것에서 유래했다.
								건대, 이대 등 대학교 이름의 줄임말이 인근 번화가 그 자체를 가리키는 명칭으로 제법 쓰이는 것처럼 이 일대를 그냥 '홍대'라고 부르기도 한다. '홍대'라는 약칭 자체가 일종의 지명처럼 굳어졌기에 외국에서도 '홍대(Hongdae)'라고 그대로 부른다. 
								한국 초대 국가 철학인 홍익인간 널리 인류를 이롭게 한다 뜻으로 인류 문명이 나아가야 할 방향성에서 따왔다.
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