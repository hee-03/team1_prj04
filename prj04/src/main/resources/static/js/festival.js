document.addEventListener("DOMContentLoaded", () => {
    const resultArea = document.getElementById("festival-result");
    const paginationArea = document.getElementById("pagination");
    const searchForm = document.getElementById("searchForm");
    const sortContainer = document.getElementById("sort-container");

    const sortDefaultBtn = document.getElementById("sortDefaultBtn");
    const sortLikeBtn = document.getElementById("sortLikeBtn");
    const sortDateBtn = document.getElementById("sortDateBtn");

    let allList = [];
    let displayList = [];
    let recommendedItem = null; 
    const ITEMS_PER_PAGE = 12; 
    let currentPage = 1;

    let likedItems = JSON.parse(localStorage.getItem("festivalLikes")) || {};

    // 1. 추천 배너 HTML
    function getRecommendationHtml(item) {
        if (!item) return "";
        const naverSearchUrl = `https://search.naver.com/search.naver?query=${encodeURIComponent(item.title)}`;
        return `
            <div class="col-md-12 mb-5">
                <div style="background: linear-gradient(135deg, #f96d00 0%, #ff851b 100%); border-radius: 20px; padding: 30px; color: white; box-shadow: 0 10px 30px rgba(249, 109, 0, 0.3); display: flex; align-items: center; flex-wrap: wrap;">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div style="width: 100%; height: 200px; background-image: url('${item.firstimage || 'images/image_1.jpg'}'); background-size: cover; background-position: center; border-radius: 15px; border: 3px solid rgba(255,255,255,0.3);"></div>
                    </div>
                    <div class="col-md-8 pl-md-4">
                        <span style="background: rgba(255,255,255,0.2); padding: 5px 15px; border-radius: 50px; font-size: 13px; font-weight: bold; text-transform: uppercase; letter-spacing: 1px;">Editor's Pick 🌟</span>
                        <h2 class="mt-2 mb-3" style="color: white; font-weight: 800; font-size: 28px;">${item.title}</h2>
                        <p style="font-size: 16px; opacity: 0.9; margin-bottom: 20px;">📍 ${item.addr1 || '지역 정보 없음'}<br>📅 축제 기간: ${item.eventstartdate} ~ ${item.eventenddate}</p>
                        <a href="${naverSearchUrl}" target="_blank" class="btn btn-white px-4 py-3" style="background: white; color: #f96d00; font-weight: bold; border-radius: 10px; border: none; text-decoration: none;">지금 바로 확인하기</a>
                    </div>
                </div>
                <hr style="margin-top: 50px; border-top: 1px solid #eee;">
                <h4 class="text-center mb-4" style="font-weight: 700; color: #333;">전국 축제 둘러보기 👀</h4>
            </div>
        `;
    }

    // 2. 좋아요 토글
    window.toggleLike = (id) => {
        const item = allList.find(it => it.id == id);
        if(!item) return;

        if(!likedItems[id]) {
            likedItems[id] = { count: item.likes + 1, active: true };
        } else {
            likedItems[id].active = !likedItems[id].active;
            likedItems[id].count = likedItems[id].active ? likedItems[id].count + 1 : likedItems[id].count - 1;
        }

        item.likes = likedItems[id].count;
        localStorage.setItem("festivalLikes", JSON.stringify(likedItems));
        
        const cardElements = document.querySelectorAll(`[data-id="${id}"]`);
        cardElements.forEach(el => {
            const heartIcon = el.querySelector('.like-btn span');
            const countNum = el.querySelector('.like-count-num');
            if(heartIcon) {
                heartIcon.innerHTML = likedItems[id].active ? '❤️' : '🤍';
                heartIcon.style.color = likedItems[id].active ? '#ff4136' : '#ccc';
            }
            if(countNum) countNum.innerText = item.likes;
        });
    };

    // 3. 카드 HTML (📍 장소 정보 추가됨)
    function createCardHtml(it) {
        const naverSearchUrl = `https://search.naver.com/search.naver?query=${encodeURIComponent(it.title)}`;
        const isLiked = likedItems[it.id] && likedItems[it.id].active;
        const formatDate = (s) => s ? `${s.substring(2,4)}.${s.substring(4,6)}.${s.substring(6,8)}` : "";
        
        // 주소를 짧게 가공 (예: 경기도 수원시 -> 경기도 수원)
        const shortAddr = it.addr1 ? it.addr1.split(' ').slice(0, 2).join(' ') : "지역 정보 없음";

        return `
          <div class="col-md-4 d-flex" data-id="${it.id}">
            <div class="blog-entry" style="width: 100%; margin-bottom: 40px; border-radius: 20px; overflow: hidden; background: #fff; box-shadow: 0 10px 25px rgba(0,0,0,0.08); transition: all 0.3s ease; border: 1px solid #f0f0f0;">
              <div style="position: relative; overflow: hidden; height: 220px;">
                <a href="${naverSearchUrl}" target="_blank" class="block-20" style="background-image: url('${it.firstimage || 'images/image_1.jpg'}'); background-size: cover; background-position: center; height: 100%; display: block;"></a>
                <div onclick="toggleLike('${it.id}')" class="like-btn" style="position: absolute; top: 15px; right: 15px; background: #fff; width: 38px; height: 38px; border-radius: 50%; display: flex; align-items: center; justify-content: center; cursor: pointer; box-shadow: 0 4px 10px rgba(0,0,0,0.15); z-index: 10;">
                    <span style="color: ${isLiked ? '#ff4136' : '#ccc'}; font-size: 18px;">${isLiked ? '❤️' : '🤍'}</span>
                </div>
              </div>
              <div class="text p-4">
                <h3 class="heading" style="font-size: 18px; font-weight: 700; height: 50px; overflow: hidden; margin-bottom: 10px;">
                    <a href="${naverSearchUrl}" target="_blank" style="color: #222;">${it.title}</a>
                </h3>
                
                <div style="font-size: 13px; color: #666; margin-bottom: 5px;">
                    <span class="ion-ios-pin mr-1" style="color: #f9ab30;"></span> ${shortAddr}
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 10px; border-top: 1px solid #eee; padding-top: 15px;">
                    <span style="font-size: 12px; color: #888;">📅 ${formatDate(it.eventstartdate)} ~ ${formatDate(it.eventenddate)}</span>
                    <span style="font-size: 13px; font-weight: 700;">❤️ <span class="like-count-num">${it.likes}</span></span>
                </div>
              </div>
            </div>
          </div>
        `;
    }

    async function loadData() {
        try {
            resultArea.innerHTML = '<div class="col-md-12 text-center"><p>데이터 로딩 중...</p></div>';
            // ✅ 핵심 수정: localhost 대신 실제 서버 IP 주소 사용
            const res = await fetch("http://192.168.0.31:7071/api/festival");
            const data = await res.json();
            const items = data.response?.body?.items?.item || [];
            
            allList = (Array.isArray(items) ? items : [items]).map(it => {
                const id = it.contentid || it.title;
                return { ...it, id: id, likes: likedItems[id] ? likedItems[id].count : Math.floor(Math.random() * 100) };
            });

            recommendedItem = allList[Math.floor(Math.random() * allList.length)];
            displayList = [...allList];
            if(sortContainer) sortContainer.style.display = "flex";
            renderPage(1);
        } catch (e) { 
            console.error(e);
            resultArea.innerHTML = '<div class="col-md-12 text-center"><p style="color:red;">서버 연결 실패. (server.js가 실행 중인지 확인하세요)</p></div>';
        }
    }

    // 4. 페이지네이션 렌더링
    function renderPagination() {
        if(!paginationArea) return;
        const totalPages = Math.ceil(displayList.length / ITEMS_PER_PAGE);
        if (totalPages <= 1) { paginationArea.innerHTML = ""; return; }

        let html = '<ul>';
        if (currentPage > 1) html += `<li><a href="#" onclick="changePage(event, ${currentPage - 1})">&lt;</a></li>`;

        const side = 2; 
        for (let i = 1; i <= totalPages; i++) {
            if (i === 1 || i === totalPages || (i >= currentPage - side && i <= currentPage + side)) {
                html += `<li class="${i === currentPage ? 'active' : ''}"><a href="#" onclick="changePage(event, ${i})">${i}</a></li>`;
            } else if (i === currentPage - side - 1 || i === currentPage + side + 1) {
                html += `<li class="disabled"><span style="padding: 0 10px; border:none;">...</span></li>`;
            }
        }

        if (currentPage < totalPages) html += `<li><a href="#" onclick="changePage(event, ${currentPage + 1})">&gt;</a></li>`;
        html += '</ul>';
        paginationArea.innerHTML = html;
    }

    window.changePage = (e, p) => {
        if(e) e.preventDefault();
        currentPage = p;
        renderPage(p);
        window.scrollTo(0, 600);
    };

    function renderPage(p) {
        currentPage = p;
        const start = (p - 1) * ITEMS_PER_PAGE;
        const sliced = displayList.slice(start, start + ITEMS_PER_PAGE);
        
        let html = (currentPage === 1) ? getRecommendationHtml(recommendedItem) : "";
        html += sliced.map(it => createCardHtml(it)).join("");
        
        resultArea.innerHTML = html;
        renderPagination();
    }

    function updateBtnState(btn) {
        [sortDefaultBtn, sortLikeBtn, sortDateBtn].forEach(b => b && b.classList.remove('active'));
        if(btn) btn.classList.add('active');
    }

    sortDefaultBtn.onclick = () => { displayList = [...allList]; updateBtnState(sortDefaultBtn); renderPage(1); };
    sortLikeBtn.onclick = () => { displayList.sort((a,b) => b.likes - a.likes); updateBtnState(sortLikeBtn); renderPage(1); };
    sortDateBtn.onclick = () => { displayList.sort((a,b) => a.eventstartdate.localeCompare(b.eventstartdate)); updateBtnState(sortDateBtn); renderPage(1); };

    // 5. 검색 로직 (키워드 검색 포함)
    searchForm.addEventListener("submit", (e) => {
        e.preventDefault();
        const reg = document.getElementById("regionSelect").value;
        const sea = document.getElementById("seasonSelect").value;
        const key = document.getElementById("keywordInput") ? document.getElementById("keywordInput").value.trim().toLowerCase() : "";

        displayList = allList.filter(it => {
            // 지역 필터
            const mReg = !reg || it.addr1.includes(reg.substring(0,2));
            
            // 시즌 필터
            const month = parseInt(it.eventstartdate.substring(4,6));
            let mSea = true;
            if(sea === "봄") mSea = month >= 3 && month <= 5;
            else if(sea === "여름") mSea = month >= 6 && month <= 8;
            else if(sea === "가을") mSea = month >= 9 && month <= 11;
            else if(sea === "겨울") mSea = month === 12 || month <= 2;
            
            // ✅ 키워드 검색 추가
            const mKey = !key || it.title.toLowerCase().includes(key);

            return mReg && mSea && mKey;
        });
        updateBtnState(sortDefaultBtn);
        renderPage(1);
    });

    loadData();
});