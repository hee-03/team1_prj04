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
	<div id="location_select" class="d-flex">
	
	    <div id="location00" class="">
	    	<div class="loc_img"></div><div class="loc_text">서울</div>
	    </div>
	    <div id="location01" class="">
	    	<div class="loc_img"></div><div class="loc_text">경기</div>
	    </div><%-- 초기에 `경기/서울`이 default로 선택되게 지정. --%>
	    <div id="location02" class="">
	    	<div class="loc_img"></div><div class="loc_text">강원</div>
	    </div>
	    <div id="location03" class="">
	    	<div class="loc_img"></div><div class="loc_text">충남</div>
	    </div>
	    <div id="location04" class="">
	    	<div class="loc_img"></div><div class="loc_text">충북</div>
	    </div>
	    <div id="location05" class="">
	    	<div class="loc_img"></div><div class="loc_text">전남</div>
	    </div>
	    <div id="location06" class="">
	    	<div class="loc_img"></div><div class="loc_text">전북</div>
	    </div>
	    <div id="location07" class="">
	    	<div class="loc_img"></div><div class="loc_text">경남</div>
	    </div>
	    <div id="location08" class="">
	    	<div class="loc_img"></div><div class="loc_text">경북</div>
	    </div>
	    <div id="location09" class="">
	    	<div class="loc_img"></div><div class="loc_text">제주</div>
	    </div>
	</div>
	<%-- //도 or 특별시 단위 지역 선택 (기본값: 서울)--%>
	
	<!-- 관광명소 -->
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
    <!-- //관광명소 -->

    <!-- 관광행사 -->
    <section id="destination_festival" class="ftco-section3">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-41">관광 행사</h2>
          </div>
        </div>
        <div id="leisureList" class="d-flex">
			<!-- ajax결과가 여기에 삽입 -->
        </div>
      </div>
    </section>
    <!-- //관광행사 -->
    
    <%-- 맛집 --%>
    <section id="destination_food" class="ftco-section3">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-41">지역 맛집</h2>
          </div>
        </div>
        <div id="foodList" class="d-flex">
			<!-- ajax결과가 여기에 삽입 -->
        </div>
      </div>
    </section>
    <%-- //맛집 --%>
    
    <%-- 호텔 --%>
    <section id="destination_hotel" class="ftco-section3">
      <div class="container">
      	<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-41">지역 호텔</h2>
          </div>
        </div>
        <div id="hotelList" class="d-flex">
			<!-- ajax결과가 여기에 삽입 -->
        </div>
      </div>
    </section>
    <%-- //호텔 --%>  

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
		        		initTravelList(list);
		        	},
		        	error: function(){
		        		alert("데이터 불러오기 실패");
		        	}
		        });
	        }
		    
			function initTravelList(list){
	        	
	        	let imageList = list.filter(function(item){
	        		return item.firstimage && item.firstimage.trim() !== "";
	        	})
	        	
	        	//랜덤 셔플
	        	imageList.sort(function(){
	        		return Math.random() - 0.5;
	        	});
	        	
	        	// 6개 선택
	        	let randomList = imageList.slice(0, 6);
	        	drawTravelList(randomList);
	        }
	        
		    function drawTravelList(randomList){
		    	
		    	let html = `<div class="row">`;
		    	
		    	if(randomList.length === 0){
		    		html += "<p>해당 지역의 데이터가 없습니다.</p>"
		    	}else{
		    		$.each(randomList, function(i, item){
		    			
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
		    	
		    	console.log("list전체", randomList);
		    	
		    	$("#travelList").html(html)
		    }
	    
	});
  </script>
</html>