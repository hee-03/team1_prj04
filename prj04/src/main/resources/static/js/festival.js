document.addEventListener("DOMContentLoaded", () => {
    const resultArea = document.getElementById("festival-result");
    const paginationArea = document.getElementById("pagination");
    const searchForm = document.getElementById("searchForm");

    let allList = [];      // 서버에서 가져온 전체 원본 데이터
    let displayList = [];  // 현재 화면에 필터링/정렬되어 보여질 데이터
    let recommendedItem = null; 
    let currentSortType = 'default'; 
    const ITEMS_PER_PAGE = 12; 
    let currentPage = 1;

    let likedItems = JSON.parse(localStorage.getItem("festivalLikes")) || {};

    // 1. 추천 배너 HTML
    function getBannerHtml(item) {
        if (!item) return "";
        const naverSearchUrl = `https://search.naver.com/search.naver?query=${encodeURIComponent(item.title)}`;
        return `
            <div class="col-md-12 mb-5">
                <div style="background: linear-gradient(135deg, #f96d00 0%, #ff851b 100%); border-radius: 20px; padding: 30px; color: white; box-shadow: 0 10px 30px rgba(249, 109, 0, 0.3); display: flex; align-items: center; flex-wrap: wrap;">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div style="width: 100%; height: 200px; background-image: url('${item.firstimage || 'images/image_1.jpg'}'); background-size: cover; background-position: center; border-radius: 15px; border: 3px solid rgba(255,255,255,0.3);"></div>
                    </div>
                    <div class="col-md-8 pl-md-4">
                        <span style="background: rgba(255,255,255,0.2); padding: 5px 15px; border-radius: 50px; font-size: 13px; font-weight: bold; text-transform: uppercase; letter-spacing: 1px;">여행담기's Pick 🌟</span>
                        <h2 class="mt-2 mb-3" style="color: white; font-weight: 800; font-size: 28px;">${item.title}</h2>
                        <p style="font-size: 16px; opacity: 0.9; margin-bottom: 20px;">📍 ${item.addr1 || '지역 정보 없음'}<br>📅 축제 기간: ${item.eventstartdate} ~ ${item.eventenddate}</p>
                        <a href="${naverSearchUrl}" target="_blank" class="btn btn-white px-4 py-3" style="background: white; color: #f96d00; font-weight: bold; border-radius: 10px; border: none; text-decoration: none;">지금 바로 확인하기</a>
                    </div>
                </div>
            </div>`;
    }

    // 2. 정렬 영역 HTML
    function getSortAreaHtml() {
        return `
            <div class="col-md-12 mb-4">
                <div class="d-md-flex align-items-center justify-content-between mt-5">
                    <h2 style="font-weight: 800; color: #222; margin-bottom: 0; font-size: 28px;">전국 축제 둘러보기 👀</h2>
                    <div class="sort-buttons mt-3 mt-md-0">
                        <div class="btn-group" role="group" style="display: flex !important; gap: 6px !important; box-shadow: none !important;">
                            <button onclick="handleSort('default')" class="btn btn-outline-primary ${currentSortType === 'default' ? 'active' : ''}" 
                                style="font-size: 15px !important; padding: 7px 16px !important; height: auto !important; border-radius: 8px !important; font-weight: 600 !important;">기본순</button>
                            <button onclick="handleSort('like')" class="btn btn-outline-primary ${currentSortType === 'like' ? 'active' : ''}" 
                                style="font-size: 15px !important; padding: 7px 16px !important; height: auto !important; border-radius: 8px !important; font-weight: 600 !important;">❤️ 좋아요순</button>
                            <button onclick="handleSort('date')" class="btn btn-outline-primary ${currentSortType === 'date' ? 'active' : ''}" 
                                style="font-size: 15px !important; padding: 7px 16px !important; height: auto !important; border-radius: 8px !important; font-weight: 600 !important;">📅 날짜순</button>
                            <button onclick="handleSort('my')" class="btn btn-outline-primary ${currentSortType === 'my' ? 'active' : ''}" 
                                style="font-size: 15px !important; padding: 7px 16px !important; height: auto !important; border-radius: 8px !important; font-weight: 600 !important;">🌟 내 찜 목록</button>
                        </div>
                    </div>
                </div>
                <hr style="margin-top: 25px; border-top: 1px solid #eee;">
            </div>`;
    }

    window.handleSort = (type) => {
        currentSortType = type;
        if (type === 'my') {
            displayList = allList.filter(it => likedItems[it.id] && likedItems[it.id].active);
        } else {
            displayList = [...allList];
            if (type === 'like') {
                displayList.sort((a, b) => b.likes - a.likes);
            } else if (type === 'date') {
                displayList.sort((a, b) => a.eventstartdate.localeCompare(b.eventstartdate));
            }
        }
        renderPage(1); 
    };

    // ✅ 카드 HTML: 하트 배경(흰 동그라미) 제거
    function createCardHtml(it) {
        const naverSearchUrl = `https://search.naver.com/search.naver?query=${encodeURIComponent(it.title)}`;
        const isLiked = likedItems[it.id] && likedItems[it.id].active;
        const formatDate = (s) => s ? `${s.substring(2,4)}.${s.substring(4,6)}.${s.substring(6,8)}` : "";
        const shortAddr = it.addr1 ? it.addr1.split(' ').slice(0, 2).join(' ') : "지역 정보 없음";

        return `
          <div class="col-md-4 d-flex" data-id="${it.id}">
            <div class="blog-entry" style="width: 100%; margin-bottom: 40px; border-radius: 20px; overflow: hidden; background: #fff; box-shadow: 0 10px 25px rgba(0,0,0,0.08); border: 1px solid #f0f0f0;">
              <div style="position: relative; overflow: hidden; height: 220px;">
                <a href="${naverSearchUrl}" target="_blank" class="block-20" style="background-image: url('${it.firstimage || 'images/image_1.jpg'}'); background-size: cover; background-position: center; height: 100%; display: block;"></a>
                
                <div onclick="toggleLike('${it.id}')" class="like-btn" 
                     style="position: absolute; top: 10px; right: 10px; width: 45px; height: 45px; display: flex; align-items: center; justify-content: center; cursor: pointer; z-index: 10; transition: transform 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);">
                    <span style="color: ${isLiked ? '#ff4136' : 'rgba(255,255,255,0.8)'}; font-size: 24px; filter: drop-shadow(0 2px 4px rgba(0,0,0,0.3)); transition: color 0.3s ease;">
                        ${isLiked ? '❤️' : '🤍'}
                    </span>
                </div>
              </div>
              <div class="text p-4">
                <h3 class="heading" style="font-size: 18px; font-weight: 700; height: 50px; overflow: hidden; margin-bottom: 10px;">
                    <a href="${naverSearchUrl}" target="_blank" style="color: #222;">${it.title}</a>
                </h3>
                <div style="font-size: 13px; color: #666; margin-bottom: 5px;"><span class="ion-ios-pin mr-1" style="color: #f9ab30;"></span> ${shortAddr}</div>
                <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 10px; border-top: 1px solid #eee; padding-top: 15px;">
                    <span style="font-size: 12px; color: #888;">📅 ${formatDate(it.eventstartdate)} ~ ${formatDate(it.eventenddate)}</span>
                    <span style="font-size: 13px; font-weight: 700;">❤️ <span class="like-count-num">${it.likes}</span></span>
                </div>
              </div>
            </div>
          </div>`;
    }

    async function loadData() {
        try {
            resultArea.innerHTML = '<div class="col-md-12 text-center"><p>데이터 로딩 중...</p></div>';
            const res = await fetch("http://192.168.0.31:7071/api/festival");
            const data = await res.json();
            const items = data.response?.body?.items?.item || [];
            
            allList = (Array.isArray(items) ? items : [items]).map(it => {
                const id = it.contentid || it.title;
                return { ...it, id: id, likes: likedItems[id] ? likedItems[id].count : Math.floor(Math.random() * 100) };
            });

            recommendedItem = allList[Math.floor(Math.random() * allList.length)];
            displayList = [...allList];
            renderPage(1);
        } catch (e) { 
            console.error(e);
            resultArea.innerHTML = '<div class="col-md-12 text-center"><p style="color:red;">서버 연결 실패.</p></div>';
        }
    }

    function renderPage(p) {
        currentPage = p;
        const start = (p - 1) * ITEMS_PER_PAGE;
        const sliced = displayList.slice(start, start + ITEMS_PER_PAGE);
        resultArea.style.minHeight = "1200px";

        let html = getBannerHtml(recommendedItem);
        html += getSortAreaHtml();

        if(sliced.length === 0) {
            html += '<div class="col-md-12 text-center py-5"><h3 style="color:#ccc;">표시할 항목이 없습니다.</h3></div>';
        } else {
            html += sliced.map(it => createCardHtml(it)).join("");
        }
        
        resultArea.innerHTML = html;
        renderPagination();
    }

    function renderPagination() {
        if(!paginationArea) return;
        const totalPages = Math.ceil(displayList.length / ITEMS_PER_PAGE);
        if (totalPages <= 1) { paginationArea.innerHTML = ""; return; }
        
        let html = '<ul>';
        if (currentPage > 1) html += `<li><a href="javascript:void(0);" onclick="changePage(event, 1)">&lt;&lt;</a></li>`;

        let startPage = Math.max(1, currentPage - 2);
        let endPage = Math.min(totalPages, startPage + 4);
        if (endPage - startPage < 4) startPage = Math.max(1, endPage - 4);

        for (let i = startPage; i <= endPage; i++) {
            html += `<li class="${i === currentPage ? 'active' : ''}"><a href="javascript:void(0);" onclick="changePage(event, ${i})">${i}</a></li>`;
        }

        if (currentPage < totalPages) html += `<li><a href="javascript:void(0);" onclick="changePage(event, ${totalPages})">&gt;&gt;</a></li>`;
        html += '</ul>';
        paginationArea.innerHTML = html;
    }

    window.changePage = (e, p) => {
        if(e) {
            e.preventDefault();
            e.stopPropagation();
            const scrollPos = window.pageYOffset || document.documentElement.scrollTop;
            renderPage(p);
            setTimeout(() => {
                window.scrollTo(0, scrollPos);
            }, 0);
        } else {
            renderPage(p);
        }
    };

    window.toggleLike = (id) => {
        const item = allList.find(it => it.id == id);
        if(!item) return;

        const btn = document.querySelector(`[data-id="${id}"] .like-btn`);
        if(btn) {
            btn.style.transform = "scale(1.4)";
            setTimeout(() => btn.style.transform = "scale(1)", 200);
        }

        if(!likedItems[id]) likedItems[id] = { count: item.likes + 1, active: true };
        else {
            likedItems[id].active = !likedItems[id].active;
            likedItems[id].count = likedItems[id].active ? likedItems[id].count + 1 : likedItems[id].count - 1;
        }
        item.likes = likedItems[id].count;
        localStorage.setItem("festivalLikes", JSON.stringify(likedItems));
        
        if (currentSortType === 'my') {
            displayList = allList.filter(it => likedItems[it.id] && likedItems[it.id].active);
            renderPage(currentPage);
        } else {
            const countNum = document.querySelector(`[data-id="${id}"] .like-count-num`);
            const icon = document.querySelector(`[data-id="${id}"] .like-btn span`);
            if(countNum) countNum.innerText = item.likes;
            if(icon) {
                icon.innerText = likedItems[id].active ? '❤️' : '🤍';
                // ✅ 활성화되지 않았을 때 하얀색 하트가 사진 배경에 잘 보이도록 처리
                icon.style.color = likedItems[id].active ? '#ff4136' : 'rgba(255,255,255,0.8)';
            }
        }
    };

    searchForm.addEventListener("submit", (e) => {
        e.preventDefault();
        const reg = document.getElementById("regionSelect").value;
        const sea = document.getElementById("seasonSelect").value;
        displayList = allList.filter(it => {
            const mReg = !reg || it.addr1.includes(reg.substring(0,2));
            const month = parseInt(it.eventstartdate.substring(4,6));
            let mSea = true;
            if(sea === "봄") mSea = month >= 3 && month <= 5;
            else if(sea === "여름") mSea = month >= 6 && month <= 8;
            else if(sea === "가을") mSea = month >= 9 && month <= 11;
            else if(sea === "겨울") mSea = month === 12 || month <= 2;
            return mReg && mSea;
        });
        currentSortType = 'default';
        renderPage(1);
    });

    loadData();
});