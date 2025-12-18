<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>여행담기 지도</title>
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
    
    <style>
	    /* 헤더 아래 지도 영역을 크게 */
	    .map-wrap{
	      width: 100%;
	      height: calc(100vh - 90px); /* 헤더 높이에 맞게 90px 조절 */
	      min-height: 520px;
	      position: relative;
	    }
	    #map{
	      width: 100%;
	      height: 100%;
	    }
	
	    /* (선택) visitkorea처럼 위에 작은 컨트롤 박스 올리고 싶을 때 */
	    .map-ui{
	      position: absolute;
	      bottom: -68px;
	      right: 40px;
	      z-index: 10;
	      background: #fff;
	      padding: 12px 14px;
	      border-radius: 12px;
	      box-shadow: 0 6px 18px rgba(0,0,0,.12);
	    }
	  </style>
  </head>
  <body>    
  	<%@ include file="/WEB-INF/views/common/header.jsp" %>
  	
  	<section class="map-wrap">
	    <!-- (선택) 위에 UI -->
	    <div class="map-ui">
	      <button type="button" id="btnMyPos">내 위치로</button>
	    </div>
	
	    <div id="map"></div>
	  </section>
	
	  <!-- 네이버 지도 JS (필수) -->
	  <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpKeyId=m0gjp7mm4c"></script>
	  
	
	  <script>
	    // 기본 중심(서울시청)
	    var center = new naver.maps.LatLng(37.5665, 126.9780);
	
	    var map = new naver.maps.Map('map', {
	      center: center,
	      zoom: 13,
	      zoomControl: true
	    });
	
	    var marker = new naver.maps.Marker({
	      position: center,
	      map: map
	    });
	
	    // 내 위치로 이동 (visitkorea "내 주변" 느낌)
	    function moveToMyLocation(){
	      if(!navigator.geolocation){
	        alert("이 브라우저는 위치 서비스를 지원하지 않아요.");
	        return;
	      }
	      navigator.geolocation.getCurrentPosition(function(pos){
	        var lat = pos.coords.latitude;
	        var lng = pos.coords.longitude;
	        var my = new naver.maps.LatLng(lat, lng);
	
	        map.setCenter(my);
	        marker.setPosition(my);
	      }, function(){
	        alert("위치 권한을 허용해야 내 주변 지도가 가능해요!");
	      }, { enableHighAccuracy:true, timeout:8000 });
	    }
	
	    document.getElementById("btnMyPos").addEventListener("click", moveToMyLocation);
	  </script>
</body>
</html>
    