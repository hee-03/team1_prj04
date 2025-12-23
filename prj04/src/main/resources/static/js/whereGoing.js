  document.addEventListener('DOMContentLoaded', function() {
	  
	  if(!document.getElementById('map')) {//이 코드 이제 필요없지 않을까 싶음.
		    const dummyMap = document.createElement('div');
		    dummyMap.id = 'map';
		    dummyMap.style.display = 'none';
		    document.body.appendChild(dummyMap);
		}
	  
	    // 1. 공통 요소 선택
	    const locationItems = document.querySelectorAll('.location_item');//지역 요소들 배열 형태로 저장
	    
		
		const cityItems = document.querySelectorAll('.city_item');//도시 요소들 배열 형태로 저장
	    
		
	    const city01 = document.querySelector("#city01");//첫번째 도시
	    const city02 = document.querySelector("#city02");//두번째 도시
	    const city03 = document.querySelector("#city03");//세번째 도시
	    
	    const cityImg01 = document.querySelector("#city-img01");//첫번째 도시 이미지
	    const cityImg02 = document.querySelector("#city-img02");//두번째 도시 이미지
	    const cityImg03 = document.querySelector("#city-img03");//세번째 도시 이미지
	    
	    const cityName01 = document.querySelector("#city-name01");//첫번째 도시 이름
	    const cityName02 = document.querySelector("#city-name02");//두번째 도시 이름
	    const cityName03 = document.querySelector("#city-name03");//세번째 도시 이름
		
		
		// 기존의 attractionImage01, attractionName01... 수십 개를 아래와 같이 정리
		
		/* ===================================== */
		/* 관광정보 변수 01~06번 반복문으로 담은 것. */
		/* ===================================== */
		const slots = {
		    attraction: [],
		    festival: [],
		    restaurant: [],
		    hotel: []
		};

		// 반복문을 돌며 01~06번 요소들을 배열에 자동으로 담습니다.
		for (let i = 1; i <= 6; i++) {
		    const num = i.toString().padStart(2, '0'); // "01", "02"... 제작
		    
		    slots.attraction.push({
		        image: document.querySelector(`#attractionImage${num}`),
		        name: document.querySelector(`#attractionName${num}`)
		    });
		    slots.festival.push({
		        image: document.querySelector(`#festivalImage${num}`),
		        name: document.querySelector(`#festivalName${num}`)
		    });
		    slots.restaurant.push({
		        image: document.querySelector(`#restaurantImage${num}`),
		        name: document.querySelector(`#restaurantName${num}`)
		    });
		    slots.hotel.push({
		        image: document.querySelector(`#hotelImage${num}`),
		        name: document.querySelector(`#hotelName${num}`)
		    });
		}
		/* ===================================== */
		/* // 관광정보 변수 01~06번 반복문으로 담은 것. */
		/* ===================================== */				

	    // 2. 클릭 이벤트 통합 관리
	    locationItems.forEach(function(item) {
	        item.addEventListener('click', function(event) {
	            // 모든 항목에서 선택 클래스 제거
	            locationItems.forEach(li => li.classList.remove('selected_location'));
	            // 클릭된 항목에 선택 클래스 추가
	            this.classList.add('selected_location');
	            
	            // 클릭된 요소의 ID에 따라 데이터 변경
	            const selectedId = this.id;
	            if (selectedId === "location00") { // 경기
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-jongro.jpg')";//종로
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-gangnam.png')";//강남
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-mapo.png')";//마포
	                
	                cityName01.innerText = "종로";
	                cityName02.innerText = "강남";
	                cityName03.innerText = "마포";
	                
	                /*
	                수정안 : 여기있는 코드들 일단, 다 삭제하고, 그 관광정보들 코드 불러오기...
	                */
	            }else if (selectedId === "location01") { // 경기
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-yongin.jpg')";//용인
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-suwon.jpg')";//수원
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-ansan.jpeg')";//안산
	                
	                cityName01.innerText = "용인";
	                cityName02.innerText = "수원";
	                cityName03.innerText = "안산";
	            }else if (selectedId === "location02") { // 강원
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-sokcho.jpg')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-cheuncheon.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-pyeongchang.png')";
	                
	                cityName01.innerText = "속초";
	                cityName02.innerText = "춘천";
	                cityName03.innerText = "평창";   
	            }else if (selectedId === "location03") { //충남
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-cheonan.jpg')";//천안
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-asan.png')";//아산
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-boryeong.jpg')";//보령
	                
	                cityName01.innerText = "천안";
	                cityName02.innerText = "아산";
	                cityName03.innerText = "보령"; 	            	
	            }else if (selectedId === "location04") { // 충북
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-cheongju.jpg')"; // 청주
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-chungju.png')"; // 충주
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-danyang.jpg')"; // 단양 (군 단위)
	                
	                cityName01.innerText = "청주";
	                cityName02.innerText = "충주";
	                cityName03.innerText = "단양"; 
	            }else if (selectedId === "location05") {//전남
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-suncheon.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-yeosu.jpg')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-mokpo.png')";
	                
	                cityName01.innerText = "순천";
	                cityName02.innerText = "여수";
	                cityName03.innerText = "목포";   
	            }else if (selectedId === "location06") {//전북
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-jeonju.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-gunsan.jpg')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-iksan.png')";
	                
	                cityName01.innerText = "전주";
	                cityName02.innerText = "군산";
	                cityName03.innerText = "익산";   
	            }else if (selectedId === "location07") {//경남
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-tongyeong.jpg')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-geoje.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-namhae.jpg')";
	                
	                cityName01.innerText = "통영";
	                cityName02.innerText = "거제";
	                cityName03.innerText = "남해";   
	            }else if (selectedId === "location08") {//경북
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-gyeongju.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-andong.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-pohang.png')";
	                
	                cityName01.innerText = "경주";
	                cityName02.innerText = "안동";
	                cityName03.innerText = "포항";
	            }else if (selectedId === "location09") {//제주
	                cityImg01.style.backgroundImage = "url('images/whereGoing/cityImage/city-jeju.png')";
	                cityImg02.style.backgroundImage = "url('images/whereGoing/cityImage/city-seogwipo.png')";
	                cityImg03.style.backgroundImage = "url('images/whereGoing/cityImage/city-udo.jpg')";
	                
	                cityName01.innerText = "제주";
	                cityName02.innerText = "서귀포";
	                cityName03.innerText = "우도";   
           		}
	         	// ★ 핵심: 지역(도,특별시)를 클릭하자마자 첫 번째 도시를 강제로 클릭시킴
	            city01.click();
	        });
	    });
	    //일단, 경기도 서울 클릭시 코드부터 추가하고, 나머지 하기.
	    
	    
	    //도시 선택  attraction_image01  attraction_name01
	    cityItems.forEach(function(item){
	    	item.addEventListener('click',function(event){
	    		//GGG	   
	    		// 1. 선택 시각 효과
	            cityItems.forEach(c => c.classList.remove('selected_city'));
	            this.classList.add('selected_city');
	            // 2. 현재 칸에 적힌 '도시 이름' 읽기
	            const cityName = this.querySelector('h3 span:first-child').innerText;
	            // 3. 도시 이름에 맞춰 데이터 업데이트
	            /*
	            =====함수 구조=====
	            updateDetails(
	            		"명소 이미지 경로", "명소 이름", url
	            		"축제 이미지 경로", "축제 이름", url
	            		"맛집 이미지 경로", "맛집 이름", url
	            		"호텔 이미지 경로", "호텔이름", url
	            )
	            */
	            if (cityName === "종로") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		//데이터 넣는 곳. 수동 추가 혹은 데이터 연동
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/seoul/GyeongBokGeung.jpg","경복궁", "",
	                		"","seoul_fest.jpg", "서울 페스티벌", "",
	                		"","seoul_food.jpg", "서울 맛집", "", 
	                		"","seoul_hotel.jpg", "서울 호텔", ""
	                );
	                updateDetails02(
	                		"","","서울명소2","#",
	                		"","","서울축제2","#",
	                		"","","서울맛집2","#",
	                		"","","서울호텔2","#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if(cityName === "강남"){
	                updateDetails01(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#");
	                updateDetails02(
	                		"","","명소2", "#",
	                		"","","축제2", "#",
	                		"","","맛집2", "#",
	                		"","","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );	            	
	            } else if(cityName === "마포"){
	                updateDetails01(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#");
	                updateDetails02(
	                		"","","명소2", "#",
	                		"","","축제2", "#",
	                		"","","맛집2", "#",
	                		"","","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );	            	
	            } else if(cityName === "용인"){
	                updateDetails01(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#"
	                );
	                updateDetails02(
	                		"","","명소1", "#",
	                		"","","축제1", "#",
	                		"","","맛집1", "#",
	                		"","","호텔1", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );	            	
	            } else if (cityName === "수원") {
	                updateDetails01(
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/suwon/suwonHwaseong.jpg", "수원화성", "#",
	                		"","images/whereGoing/festivalImage/SeoulAndGyeonggi/suwon/mediaArt.jpg", "수원화성 미디어아트", "#",
	                		"","images/whereGoing/restaurantImage/SeoulAndGyeonggi/suwon/JinmiChicken.jpg", "진미통닭", "#",
	                		"","images/whereGoing/hotelImage/SeoulAndGyeonggi/suwon/novotelSuwon.jpg", "노보텔 수원", "#"
	                );
	                updateDetails02(
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/suwon/suwonStarField.jpg","수원 스타필드", "#",
	                		"","22f.jpg","수원축제2", "#",
	                		"","22r.jpg","수원맛집2", "#",
	                		"","22h.jpg","수원호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "안산") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","images/whereGoing/attractionImage/SeoulAndGyeonggi/ansan/DaeBuDo.jpg", "대부도", "#",
	                		"","ansan_fest.jpg", "안산 거리축제", "#",
	                		"","ansan_food.jpg", "대부도 칼국수", "#",
	                		"","ansan_hotel.jpg", "안산 호텔", "#"
	                );
	                updateDetails02(
	                		"","","안산명소2", "#",
	                		"","","안산축제2", "#",
	                		"","","안산맛집2", "#",
	                		"","","안산호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "속초") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","images/whereGoing/attractionImage/Gangwon/sokcho/seolAkMountain.jpg", "설악산", "#",
	                		"","sokcho_fest.jpg", "속초 축제", "#", 
	                		"","sokcho_food.jpg", "속초 닭강정", "#",
	                		"","sokcho_hotel.jpg", "속초 호텔", "#"
	                );
	                updateDetails02(
	                		"","","속초명소2", "#",
	                		"","","속초축제2", "#",
	                		"","","속초맛집2", "#",
	                		"","","속초호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "춘천") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","","춘천명소1", "#",
	                		"","","춘천축제1", "#",
	                		"","","춘천맛집1", "#",
	                		"","","춘천호텔1", "#");
	                updateDetails02(
	                		"","","명소2", "#",
	                		"","","축제2", "#",
	                		"","","맛집2", "#",
	                		"","","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "평창") {
	            	//◆◆◆축제,맛집, 호텔은 임시 지정이니 마저 작성할 것.
	                updateDetails01(
	                		"","","평창명소1", "#",
	                		"","","평창축제1", "#",
	                		"","","평창맛집1", "#",
	                		"","","평창호텔1", "#"
	                );
	                updateDetails02(
	                		"","","평창명소2", "#",
	                		"","","평창축제2", "#",
	                		"","","평창맛집2", "#",
	                		"","","평창호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "천안") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "blog-single.html",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "아산") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "보령") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "청주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "충주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "단양") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "순천") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "여수") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "목포") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "전주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "군산") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "익산") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "통영") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "거제") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "남해") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "경주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "안동") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "포항") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "제주") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "서귀포") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            } else if (cityName === "우도") {
	            	//◆◆◆
	                updateDetails01(
	                		"", "","명소1", "#",
	                		"", "","축제1", "#",
	                		"", "","맛집1", "#",
	                		"", "","호텔1", "#");
	                updateDetails02(
	                		"", "","명소2", "#",
	                		"", "","축제2", "#",
	                		"", "","맛집2", "#",
	                		"", "","호텔2", "#"
	                );
	                updateDetails03(
	                		"","","명소3", "#",
	                		"","","축제3", "#",
	                		"","","맛집3", "#",
	                		"","","호텔3", "#"
	                );	 
	                updateDetails04(
	                		"","","명소4", "#",
	                		"","","축제4", "#",
	                		"","","맛집4", "#",
	                		"","","호텔4", "#"
	                );
	                updateDetails05(
	                		"","","명소5", "#",
	                		"","","축제5", "#",
	                		"","","맛집5", "#",
	                		"","","호텔5", "#"
	                );
	                updateDetails06(
	                		"","","명소6", "#",
	                		"","","축제6", "#",
	                		"","","맛집6", "#",
	                		"","","호텔6", "#"
	                );
	            }	  
	            //GGG
	    	});
	    });
		//GGG
		/* ======================================================== */
		/* 통합 업데이트 함수: 모든 카테고리와 모든 번호(01~06)를 처리 */
		/* ======================================================== */
		function updateCategoryData(type, index, id, img, name, link) {
		    // 1. 아까 만든 slots 객체에서 해당 위치의 요소를 가져옵니다.
		    // index는 0부터 시작하므로, 01번 슬롯을 바꾸려면 index에 0을 넣으면 됩니다.
		    const slot = slots[type][index];
		    
		    if (!slot) {
		        console.error(`존재하지 않는 슬롯입니다: ${type} - ${index}`);
		        return;
		    }

		    // 2. 이미지 및 텍스트 업데이트
		    slot.image.style.backgroundImage = "url('" + img + "')";
		    slot.name.innerText = name;

		    // 3. 클릭 시 이동 이벤트 (부모 요소인 .blog-entry 기준)
		    const parentSlot = slot.image.parentElement;
		    parentSlot.style.cursor = "pointer";
		    parentSlot.onclick = function() {
		        if (link && link !== "#" && link !== "") {
		            location.href = link;
		        } else {
		            console.log(name + "의 링크가 준비되지 않았습니다.");
		        }
		    };

		    // 4. 하트 버튼(찜하기) 로직
		    // 기존에 id로 찾던 것을 부모 안에서 클래스(.heartIcon)로 찾으면 훨씬 정확합니다.
		    const heartBtn = parentSlot.querySelector('.heartIcon');
		    if (heartBtn) {
		        heartBtn.setAttribute('data-id', id); // 팀원이 줄 고유 ID 저장
		        heartBtn.onclick = function(event) {
		            event.stopPropagation(); // 부모의 클릭 이벤트(상세페이지 이동) 방지
		            this.classList.toggle('active');
		            
		            const currentId = this.getAttribute('data-id');
		            console.log("서버 전송 데이터:", { type: type, id: currentId, name: name });
		            alert(name + "을(를) 찜했습니다.");
		        };
		    }
		}
		//GGG
		
		//GGG
		// 초기 로딩 시 서울 클릭
	    city01.click();
	  	//GGG
	  	
	  	
	  	//여행관련 요소 default 상태일 때 하트 클릭 함수
	    const allHeartIcons = document.querySelectorAll('.heartIcon');

	    allHeartIcons.forEach(function(heart) {
	        heart.onclick = function(event) {
	            event.stopPropagation();
	            this.classList.toggle('active');
	            
	            // 1. 클릭한 하트의 고유 ID 가져오기
	            const placeId = this.getAttribute('data-id'); 
	            // 2. 장소 이름 가져오기
	            const placeName = this.parentElement.querySelector('span:first-child').innerText;

	            console.log("서버로 보낼 데이터:", { id: placeId, name: placeName });

	            // [나중에 서버 연동 시]
	            /*
	            fetch('/api/wishlist/add', {
	                method: 'POST',
	                body: JSON.stringify({ id: placeId })
	            }).then(...)
	            */
	            alert(placeName + "이(가) 나의 여행담기에 저장되었습니다!");
	        };
	    });
	});  