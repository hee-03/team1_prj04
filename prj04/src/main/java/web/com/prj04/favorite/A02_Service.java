package web.com.prj04.favorite;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.com.prj04.prj04_mvc.Content;

@Service
public class A02_Service {

    @Autowired
    private TravelMapper mapper;

    public List<Content> getContentsByRegionName(String regionName) {
        System.out.println("=== Service: 지역별 리스트 조회 시작 ===");
        System.out.println("조회 지역: " + regionName);
        return mapper.getContentsByRegionName(regionName);
    }

    // 좋아요 처리 (sysout 추가)
    public boolean handleLike(String contentid, String title, String areacode, String action, String email) {
        System.out.println("=== Service: 좋아요 처리 시작 ===");
        System.out.println("데이터 확인 -> ID: " + contentid + ", 제목: " + title + ", 동작: " + action + ", 이메일: " + email);
        
        int result = 0;
        if ("INSERT".equals(action)) {
            result = mapper.insertLike(contentid, title, areacode, email);
            System.out.println("INSERT 결과: " + (result > 0 ? "성공" : "실패"));
        } else {
            result = mapper.deleteLike(contentid, email);
            System.out.println("DELETE 결과: " + (result > 0 ? "성공" : "실패"));
        }
        return result > 0;
    }

    // 추천 로직 통합 (분석 과정 sysout 추가)
    public List<Content> getFinalRecommendation(String email) {
        System.out.println("=== Service: 추천 분석 시작 ===");
        Top top = mapper.getTopPreference(email);
        
        if (top != null) {
            System.out.println("분석된 유저 선호도(Top): " + top.toString());
            List<Content> recList = mapper.getRecommendedByTop(top);
            System.out.println("추천된 리스트 개수: " + (recList != null ? recList.size() : 0));
            return recList;
        }
        
        System.out.println("분석 결과: 선호도 데이터 없음.");
        return null;
    }

    public List<String> getMyLikeContentIds(String email) {
        System.out.println("=== Service: 유저 좋아요 ID 목록 추출 ===");
        List<String> list = mapper.getMyLikeContentIds(email);
        System.out.println("가져온 ID 개수: " + (list != null ? list.size() : 0));
        return list;
    }
}