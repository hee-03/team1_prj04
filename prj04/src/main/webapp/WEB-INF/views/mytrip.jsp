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

<section class="ftco-counter img mytripsect" id="section-counter">
    	<div class="container">
		    <section id="recommend-section" class="ftco-section">
		        <div class="container">
		            <div class="row justify-content-center pb-4">
		                <div class="col-md-12 heading-section text-center">
		                    <h2 class="mb-4">🌟 나만을 위한 맞춤 여행지</h2>
		                </div>
		            </div>
		            <div id="recommendList" class="row">
		                </div>
		        </div>
		    </section>
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
          
        <div class="row mt-5">
		  <div class="col text-center">
		    <button type="button" id="btnMore" class="btn btn-outline-primary">
		      더보기
		    </button>
		  </div>
		</div>
      </div>
    </section>
    
    
    
    
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <script src="js/heartIcon.js"></script>
    <script>
    <script type="text/javascript">
    $(document).ready(function(){
        var listCntPerPage = 12;
        var randomList = [];
        var myLikes = []; 

        // [중요] 초기화 시 추천 섹션은 절대로 d-none 처리하지 않습니다.
        $("#destination").addClass("d-none");
        $("div.container[id^='rec']").addClass("d-none"); // 상세페이지들만 숨김
        
        // 페이지 로드 시 바로 실행
        loadMyLikes();
        loadRecommendations(); 

        function loadMyLikes() {
            $.ajax({
                url: "${pageContext.request.contextPath}/travel/myLikes", 
                type: "get",
                dataType: "json",
                success: function(list) {
                    myLikes = list.map(function(item) { return String(item); }); 
                }
            });
        }

        // 지도 클릭 시 동작 수정
        $("[id^='travel_destination']").on("click", function(){
            $("#destination").removeClass("d-none");
            var num = $(this).attr("id").replace("travel_destination", "");
            
            // 상세 섹션들(id="rec01" 등)만 정확히 선택해서 숨깁니다.
            $("div.container[id^='rec']").addClass("d-none");
            $("#rec" + num).removeClass("d-none");
            
            var regionName = $("#rec" + num).find("p.region").text().trim().split(" ")[0];
            loadTravel(regionName);
            
            $('html, body').animate({
                scrollTop: $("#destination").offset().top - 100
            }, 500);
        });

        function loadTravel(regionName){
            $.ajax({
                url: "${pageContext.request.contextPath}/travel/list",
                type: "get",
                data: {regionName: regionName},
                dataType: "json",
                success: function(list){ 
                    initTravelList(list); 
                }
            });
        }
            
        function initTravelList(list){
            var imageList = list.filter(function(item){ 
                return item.firstimage && item.firstimage.trim() !== ""; 
            });
            imageList.sort(function(){ return Math.random() - 0.5; });
            randomList = imageList.slice(0, 60);
            drawPage(1);
        }
            
        window.drawPage = function(page){
            var startIndex = (page - 1) * listCntPerPage;
            var pageList = randomList.slice(startIndex, startIndex + listCntPerPage);
            
            $(".block-27 ul li").removeClass("active");
            $(".block-27 ul li").each(function(){
                if($(this).text().trim() === String(page)) $(this).addClass("active");
            });
            drawTravelList(pageList);
        }
            
        function drawTravelList(pageList){
            var html = '<div class="row" style="width:100%">';
            $.each(pageList, function(i, item){
                var img = item.firstimage ? item.firstimage : 'images/no_image.png';
                var isLiked = myLikes.indexOf(String(item.areacode)) !== -1;
                var heartClass = isLiked ? "" : "off";

                html += '<div class="col-md-4 d-flex">' +
                            '<div class="blog-entry justify-content-end" style="width:100%;">' +
                                '<div class="block-20" style="background-image: url(\'' + img + '\');"></div>' +
                                '<div class="text mt-3 float-right d-block">' +
                                    '<h3 class="heading">' +
                                        '<a>' + item.title + '</a>' +
                                        '<span class="heartIcon ' + heartClass + '" data-areacode="' + item.areacode + '">❤</span>' +
                                    '</h3>' +
                                    '<p>' + (item.addr1 ? item.addr1 : "") + '</p>' +
                                '</div>' +
                            '</div>' +
                        '</div>';
            });
            $("#travelList").html(html + "</div>");
        }

        $(document).on("click", ".heartIcon", function(){
            var heart = $(this);
            var title = heart.siblings("a").text();
            var areacode = String(heart.data("areacode"));
            var action = heart.hasClass("off") ? "INSERT" : "DELETE";

            $.ajax({
                url: "${pageContext.request.contextPath}/travel/like",
                type: "post",
                data: { title: title, areacode: areacode, action: action },
                success: function(res){
                    if(res === "success") {
                        heart.toggleClass("off");
                        if(action === "INSERT") {
                            if(myLikes.indexOf(areacode) === -1) myLikes.push(areacode);
                        } else {
                            myLikes = myLikes.filter(function(code) { return code !== areacode; });
                        }
                        loadRecommendations(); // 하트 누를 때마다 추천 리스트 갱신
                    }
                }
            });
        });

        // 추천 여행지 로드 함수 (별도 분리)
        function loadRecommendations() {
            console.log("추천 데이터 요청 시작");
            $.ajax({
                url: "${pageContext.request.contextPath}/travel/recommend",
                type: "get",
                dataType: "json",
                cache: false,
                success: function(data) {
                    var $recList = $("#recommendList");
                    $recList.empty(); 

                    if (data && data.length > 0) {
                        console.log("받은 추천 데이터 개수:", data.length);
                        var html = "";
                        $.each(data, function(i, item) {
                            var img = (item.firstimage && item.firstimage !== "") ? item.firstimage : "images/rec_travel/recmain.png";
                            var title = item.title ? item.title : "추천 여행지";
                            var addr = item.addr1 ? item.addr1 : "주소 정보 없음";

                            html += '<div class="col-md-4 mb-4">' +
                                        '<div class="recommend-entry">' +
                                            '<div class="block-20" style="background-image: url(\'' + img + '\'); height: 200px; background-size: cover; background-position: center; position: relative;">' +
                                                '<span style="position: absolute; top: 15px; left: 15px; background: #ff4f4f; color: #fff; padding: 3px 12px; border-radius: 20px; font-size: 12px; font-weight: bold;">알고리즘 추천</span>' +
                                            '</div>' +
                                            '<div class="text p-3">' +
                                                '<h3 style="font-size: 18px; font-weight: 700; color: #333; margin-bottom: 8px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">' + title + '</h3>' +
                                                '<p style="font-size: 13px; color: #888; margin-bottom: 0; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">' + addr + '</p>' +
                                            '</div>' +
                                        '</div>' +
                                    '</div>';
                        });
                        
                        $recList.html(html);
                        $("#recommend-section").show();
                    } else {
                        console.log("추천 데이터가 없습니다.");
                        // 데이터가 없을 때는 섹션 자체를 숨길 수도 있습니다.
                        // $("#recommend-section").hide(); 
                    }
                },
                error: function(xhr, status, error) {
                    console.error("추천 로드 실패:", error);
                }
            });
        }
    });
    
	</script>




		    
</body>
</html>
    