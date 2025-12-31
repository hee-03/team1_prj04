document.addEventListener("DOMContentLoaded", () => {
    document.addEventListener("click", async (e) => {
        if (e.target.classList.contains("heartIcon")) {
            const heart = e.target;
            e.stopPropagation();

            // 1. 카드 정보 추출
            const card = heart.closest(".blog-entry") || heart.closest(".recommend-entry") || heart.closest(".col-md-4");
            if (!card) return;

            const contentid = heart.getAttribute("data-contentid");
            
            // contentid가 없으면 그냥 무시 (알림창 안 띄움)
            if (!contentid || contentid === "null" || contentid === "undefined") {
                console.warn("데이터가 부족하여 요청을 보낼 수 없습니다.");
                return; 
            }

            const titleElement = card.querySelector(".heading a") || card.querySelector("h3") || card.querySelector(".heading");
            const title = titleElement ? titleElement.innerText.trim() : "";
            
            const isAdding = heart.classList.contains("off");
            const actionType = isAdding ? "INSERT" : "DELETE";

            // 2. 서버 통신
            try {
                const response = await fetch("/travel/like", {
                    method: "POST",
                    headers: { "Content-Type": "application/x-www-form-urlencoded" },
                    body: new URLSearchParams({
                        "contentid": contentid,
                        "title": title,
                        "action": actionType
                    })
                });

                const result = await response.text();

                // 서버 결과가 어떻든 알림창(alert)은 절대 띄우지 않습니다.
                if (result.trim() === "success") {
                    heart.classList.toggle("off");
                    
                    // 삭제 시 화면에서 즉시 제거 (나의 여행담기 페이지)
                    if (actionType === "DELETE" && location.pathname.includes("mytrip")) {
                        const column = heart.closest(".col-md-4");
                        if(column) column.remove();
                    }
                } else {
                    // 실패 시 조용히 개발자 도구 콘솔에만 기록
                    console.log("처리 결과 실패:", result);
                }
            } catch (error) {
                // 네트워크 에러 등이 나도 조용히 기록만 남김
                console.error("통신 에러:", error);
            }
        }
    });
});