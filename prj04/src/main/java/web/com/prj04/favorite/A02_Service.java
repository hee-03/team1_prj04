package web.com.prj04.favorite;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.com.prj04.prj04_mvc.Content;

@Service
public class A02_Service {

    @Autowired
    private TravelMapper mapper; // 사용하시는 Mapper 인터페이스명으로 확인하세요.

    // 1. 지역별 여행지 리스트 조회 (기존 기능)
    public List<Content> getContentsByRegionName(String regionName) {
        return mapper.getContentsByRegionName(regionName);
    }

    // 2. 좋아요 처리 (INSERT / DELETE 통합 관리)
    
    
    
    @Transactional
    public boolean handleLike(String title, String areacode, String action, String email) {
        int result = 0;
        
        // [로그 추가] 실행 전 데이터 확인
        System.out.println("==== 좋아요 요청 발생 ====");
        System.out.println("Action: " + action);
        System.out.println("Title: " + title);
        System.out.println("AreaCode: " + areacode);
        System.out.println("Email: " + email);

        if ("INSERT".equals(action)) {
            // title은 area_based에서 cat1을 찾기 위한 용도로 사용됨
            result = mapper.insertLike(title, areacode, email);
            System.out.println("결과: " + (result > 0 ? "INSERT 성공" : "INSERT 실패"));
        } else if ("DELETE".equals(action)) {
            // 매퍼 인터페이스에 맞게 title 파라미터도 함께 전달하여 안전하게 삭제 처리
            result = mapper.deleteLike(title, areacode, email); 
            System.out.println("결과: " + (result > 0 ? "DELETE 성공" : "DELETE 실패"));
        }
        
        System.out.println("========================");
        return result > 0;
    }

    // 3. [추가] 유저의 최선호 카테고리 및 지역 추출 (TOP 객체 반환)
    // 작성하신 복합 SELECT 문을 호출합니다.
    public Top getTopPreference(String email) {
        return mapper.getTopPreference(email);
    }

    // 4. [추가] 세션에 저장된 TOP 데이터를 기반으로 추천 리스트 조회
    // areacode와 cat1을 조건으로 3개의 랜덤 데이터를 가져옵니다.
    public List<Content> getRecommendedByTop(Top top) {
        return mapper.getRecommendedByTop(top);
    }

    // ---------------------------------------------------------
    // 5. [신규 추가] 최종 추천 리스트 반환 로직
    // 위에서 만든 3번과 4번을 연결하여 컨트롤러에 데이터를 전달합니다.
    // ---------------------------------------------------------
    public List<Content> getFinalRecommendation(String email) {
        // [Step 1] Favorite 테이블 분석
        Top top = mapper.getTopPreference(email);
        
        // [로그 추가] 분석 결과 확인
        if (top != null) {
            System.out.println("==== 추천 분석 성공 ====");
            System.out.println("선호 카테고리(Cat1): " + top.getCat1());
            System.out.println("선호 지역코드(AreaCode): " + top.getAreacode());
        } else {
            System.out.println("==== 추천 분석 실패: 선호 데이터 없음 (Top is null) ====");
        }
        
        // [Step 2] 분석 데이터 기반 추천 리스트 추출
        if (top != null && top.getCat1() != null && top.getAreacode() != null) {
            List<Content> list = mapper.getRecommendedByTop(top);
            System.out.println("추천된 리스트 개수: " + (list != null ? list.size() : 0));
            return list;
        }
        
        return new ArrayList<>();
    }

    // [추가] 하트 유지 로직을 위해 사용자가 누른 areacode 목록을 가져오는 기능
    public List<String> getMyLikeCodes(String email) {
        Top top = mapper.getTopPreference(email);
        List<String> list = new ArrayList<>();
        if (top != null && top.getAreacode() != null) {
            list.add(String.valueOf(top.getAreacode()));
        }
        return list;
    }
}