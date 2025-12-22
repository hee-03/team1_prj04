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
    const ITEMS_PER_PAGE = 6;
    let currentPage = 1;

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
            
            return true;
        } catch (e) {
            console.error("데이터 로드 실패:", e);
            if(resultArea) resultArea.innerHTML = '<div class="col-md-12 text-center"><p>데이터를 불러오는 데 실패했습니다.</p></div>';
            return false;
        }
    }

    function renderCards(list) {
        if(!resultArea) return;
        if(list.length === 0) {
            resultArea.innerHTML = '<div class="col-md-12 text-center"><p>검색 결과가 없습니다. 😅</p></div>';
            return;
        }
        
        resultArea.innerHTML = list.map(it => `
          <div class="col-md-4 d-flex">
          	<div class="blog-entry justify-content-end" style="width: 100%; margin-bottom: 30px;">
              <a href="detail.jsp?id=${it.contentid}" class="block-20" style="background-image: url('${it.firstimage || 'images/image_1.jpg'}');"></a>
              <div class="text mt-3 float-right d-block">
                <h3 class="heading" style="font-size: 18px;">
                    <a href="detail.jsp?id=${it.contentid}">${it.title}</a>
                    <span style="color: #f96d00; font-size: 14px; margin-left: 10px;">❤ ${it.likes}</span>
                </h3>
                <p>📍 ${it.addr1 || '지역 정보 없음'}</p>
                <p style="color: #f96d00; font-size: 12px;">📅 ${it.eventstartdate} ~ ${it.eventenddate}</p>
              </div>
            </div>
          </div>
        `).join("");
    }

    function renderPagination() {
        if(!paginationArea) return;
        const total = Math.ceil(displayList.length / ITEMS_PER_PAGE);
        let html = '<ul>';
        for (let i = 1; i <= Math.min(total, 5); i++) {
            html += `<li class="${i === currentPage ? 'active' : ''}"><a href="#" onclick="changePage(event, ${i})">${i}</a></li>`;
        }
        html += '</ul>';
        paginationArea.innerHTML = total > 1 ? html : "";
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
        buttons.forEach(btn => {
            if(btn) btn.classList.remove('active');
        });
        if(activeBtn) activeBtn.classList.add('active');
    }

    if(sortDefaultBtn) sortDefaultBtn.onclick = () => { 
        if(allList.length === 0) return;
        displayList = [...allList]; 
        updateBtnState(sortDefaultBtn); 
        renderPage(1); 
    };
    if(sortLikeBtn) sortLikeBtn.onclick = () => { 
        if(allList.length === 0) return;
        displayList.sort((a,b) => b.likes - a.likes); 
        updateBtnState(sortLikeBtn); 
        renderPage(1); 
    };
    if(sortDateBtn) sortDateBtn.onclick = () => { 
        if(allList.length === 0) return;
        displayList.sort((a,b) => a.eventstartdate.localeCompare(b.eventstartdate)); 
        updateBtnState(sortDateBtn); 
        renderPage(1); 
    };

    if(searchForm) {
        searchForm.addEventListener("submit", async (e) => {
            e.preventDefault();
            
            // 처음 검색 시 안내 메시지 숨기기
            if(welcomeMessage) welcomeMessage.style.display = "none";
            
            if(allList.length === 0) {
                const success = await loadData();
                if(!success) return;
            }

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
});