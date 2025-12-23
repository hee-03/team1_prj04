document.addEventListener("DOMContentLoaded", () => {
    const resultArea = document.getElementById("festival-result");
    const paginationArea = document.getElementById("pagination");
    const searchForm = document.getElementById("searchForm");
    const sortContainer = document.getElementById("sort-container");
    const welcomeMessage = document.getElementById("welcome-message");

    const sortDefaultBtn = document.getElementById("sortDefaultBtn");
    const sortLikeBtn = document.getElementById("sortLikeBtn");
    const sortDateBtn = document.getElementById("sortDateBtn");

    let allList = [];
    let displayList = [];
    const ITEMS_PER_PAGE = 12; 
    let currentPage = 1;

    // ✅ 세련된 디자인의 랜덤 추천 카드 생성 함수
    function renderRecommendation(list) {
        if (!resultArea || list.length === 0) return;
        
        const randomItem = list[Math.floor(Math.random() * list.length)];
        const naverSearchUrl = `https://search.naver.com/search.naver?query=${encodeURIComponent(randomItem.title)}`;

        // 리스트 최상단에 추천 섹션 삽입
        const recommendationHtml = `
            <div class="col-md-12 mb-5">
                <div style="background: linear-gradient(135deg, #f96d00 0%, #ff851b 100%); border-radius: 20px; padding: 30px; color: white; box-shadow: 0 10px 30px rgba(249, 109, 0, 0.3); display: flex; align-items: center; flex-wrap: wrap;">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div style="width: 100%; height: 200px; background-image: url('${randomItem.firstimage || 'images/image_1.jpg'}'); background-size: cover; background-position: center; border-radius: 15px; border: 3px solid rgba(255,255,255,0.3);"></div>
                    </div>
                    <div class="col-md-8 pl-md-4">
                        <span style="background: rgba(255,255,255,0.2); padding: 5px 15px; border-radius: 50px; font-size: 13px; font-weight: bold; text-transform: uppercase; letter-spacing: 1px;">Editor's Pick 🌟</span>
                        <h2 class="mt-2 mb-3" style="color: white; font-weight: 800; font-size: 28px;">${randomItem.title}</h2>
                        <p style="font-size: 16px; opacity: 0.9; margin-bottom: 20px;">📍 ${randomItem.addr1 || '지역 정보 없음'}<br>📅 축제 기간: ${randomItem.eventstartdate} ~ ${randomItem.eventenddate}</p>
                        <a href="${naverSearchUrl}" target="_blank" class="btn btn-white px-4 py-3" style="background: white; color: #f96d00; font-weight: bold; border-radius: 10px; border: none;">지금 바로 확인하기</a>
                    </div>
                </div>
                <hr style="margin-top: 50px; border-top: 1px solid #eee;">
                <h4 class="text-center mb-4" style="font-weight: 700; color: #333;">다른 축제들도 둘러보세요 👀</h4>
            </div>
        `;
        resultArea.innerHTML = recommendationHtml;
    }

    async function loadData() {
        try {
            if(resultArea) resultArea.innerHTML = '<div class="col-md-12 text-center"><p>데이터를 불러오는 중입니다...</p></div>';
            const res = await fetch("http://localhost:7071/api/festival");
            const data = await res.json();
            const items = data.response?.body?.items?.item || [];
            
            allList = (Array.isArray(items) ? items : [items]).map(it => ({
                ...it,
                likes: Math.floor(Math.random() * 100)
            }));

            // 로드 직후 리스트 영역에 추천 카드 노출
            renderRecommendation(allList);
            // 추천 카드 아래에 기본 리스트 1페이지 표시
            displayList = [...allList];
            const start = (currentPage - 1) * ITEMS_PER_PAGE;
            resultArea.innerHTML += displayList.slice(start, start + ITEMS_PER_PAGE).map(it => createCardHtml(it)).join("");
            renderPagination();
            
            return true;
        } catch (e) {
            console.error("데이터 로드 실패:", e);
            return false;
        }
    }

    // 카드 HTML 생성 로직 분리 (중복 방지)
    function createCardHtml(it) {
        const naverSearchUrl = `https://search.naver.com/search.naver?query=${encodeURIComponent(it.title)}`;
        return `
          <div class="col-md-4 d-flex">
            <div class="blog-entry justify-content-end" style="width: 100%; margin-bottom: 30px; border-radius: 15px; overflow: hidden; box-shadow: 0 5px 15px rgba(0,0,0,0.05);">
              <a href="${naverSearchUrl}" target="_blank" class="block-20" style="background-image: url('${it.firstimage || 'images/image_1.jpg'}'); height: 200px;"></a>
              <div class="text mt-3 p-3 d-block">
                <h3 class="heading" style="font-size: 17px; font-weight: 700;">
                    <a href="${naverSearchUrl}" target="_blank" style="color: #333;">${it.title}</a>
                </h3>
                <div class="meta mb-2" style="font-size: 13px; color: #f96d00;">
                    <span>📍 ${it.addr1 ? it.addr1.split(' ')[0] : '지역'}</span> | <span>❤ ${it.likes}</span>
                </div>
                <p style="color: #999; font-size: 12px;">📅 ${it.eventstartdate} ~ ${it.eventenddate}</p>
              </div>
            </div>
          </div>
        `;
    }

    function renderCards(list) {
        if(!resultArea) return;
        if(list.length === 0) {
            resultArea.innerHTML = '<div class="col-md-12 text-center"><p>검색 결과가 없습니다. 😅</p></div>';
            return;
        }
        resultArea.innerHTML = list.map(it => createCardHtml(it)).join("");
    }

    function renderPagination() {
        if(!paginationArea) return;
        const totalPages = Math.ceil(displayList.length / ITEMS_PER_PAGE);
        if (totalPages <= 1) {
            paginationArea.innerHTML = "";
            return;
        }
        let html = '<ul>';
        if (currentPage > 1) html += `<li><a href="#" onclick="changePage(event, ${currentPage - 1})">&lt;</a></li>`;
        const delta = 5; 
        for (let i = 1; i <= totalPages; i++) {
            if (i === 1 || i === totalPages || (i >= currentPage - delta && i <= currentPage + delta)) {
                html += `<li class="${i === currentPage ? 'active' : ''}"><a href="#" onclick="changePage(event, ${i})">${i}</a></li>`;
            } else if (i === currentPage - delta - 1 || i === currentPage + delta + 1) {
                html += `<li class="disabled"><span style="padding: 0 10px;">...</span></li>`;
            }
        }
        if (currentPage < totalPages) html += `<li><a href="#" onclick="changePage(event, ${currentPage + 1})">&gt;</a></li>`;
        html += '</ul>';
        paginationArea.innerHTML = html;
    }

    window.changePage = (e, p) => {
        e.preventDefault();
        currentPage = p;
        const start = (p - 1) * ITEMS_PER_PAGE;
        renderCards(displayList.slice(start, start + ITEMS_PER_PAGE));
        renderPagination();
        window.scrollTo(0, 700); 
    };

    function updateBtnState(activeBtn) {
        const buttons = [sortDefaultBtn, sortLikeBtn, sortDateBtn];
        buttons.forEach(btn => { if(btn) btn.classList.remove('active'); });
        if(activeBtn) activeBtn.classList.add('active');
    }

    // 정렬/검색 클릭 시 추천 배너는 사라지고 리스트만 깔끔하게 나오도록 유지
    if(sortDefaultBtn) sortDefaultBtn.onclick = () => { displayList = [...allList]; updateBtnState(sortDefaultBtn); renderPage(1); };
    if(sortLikeBtn) sortLikeBtn.onclick = () => { displayList.sort((a,b) => b.likes - a.likes); updateBtnState(sortLikeBtn); renderPage(1); };
    if(sortDateBtn) sortDateBtn.onclick = () => { displayList.sort((a,b) => a.eventstartdate.localeCompare(b.eventstartdate)); updateBtnState(sortDateBtn); renderPage(1); };

    if(searchForm) {
        searchForm.addEventListener("submit", async (e) => {
            e.preventDefault();
            if(welcomeMessage) welcomeMessage.style.display = "none";
            if(allList.length === 0) await loadData();
            if(sortContainer) sortContainer.style.display = "flex";
            const region = document.getElementById("regionSelect").value;
            const season = document.getElementById("seasonSelect").value;
            displayList = allList.filter(it => {
                const matchRegion = !region || it.addr1.includes(region.substring(0,2));
                const month = it.eventstartdate ? parseInt(it.eventstartdate.substring(4,6)) : 0;
                let matchSeason = true;
                if(season === "봄") matchSeason = month >= 3 && month <= 5;
                else if(season === "여름") matchSeason = month >= 6 && month <= 8;
                else if(season === "가을") matchSeason = month >= 9 && month <= 11;
                else if(season === "겨울") matchSeason = month === 12 || month <= 2;
                return matchRegion && matchSeason;
            });
            updateBtnState(sortDefaultBtn); 
            renderPage(1);
        });
    }

    function renderPage(p) {
        currentPage = p;
        const start = (p - 1) * ITEMS_PER_PAGE;
        renderCards(displayList.slice(start, start + ITEMS_PER_PAGE));
        renderPagination();
    }

    loadData();
});