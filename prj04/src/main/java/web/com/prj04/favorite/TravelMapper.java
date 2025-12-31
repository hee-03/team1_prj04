package web.com.prj04.favorite;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import web.com.prj04.prj04_mvc.Content;

@Mapper
public interface TravelMapper {

    // 1. 지역별 여행지 리스트 조회
    List<Content> getContentsByRegionName(@Param("regionName") String regionName);

    // 2. 좋아요 추가 (contentid 추가)
    int insertLike(@Param("contentid") String contentid,
                   @Param("title") String title, 
                   @Param("areacode") String areacode, 
                   @Param("email") String email);

    // 3. 좋아요 취소 (고유키인 contentid로 삭제)
    int deleteLike(@Param("contentid") String contentid, 
                   @Param("email") String email);

    // 4. 유저 선호도 TOP 추출
    Top getTopPreference(@Param("email") String email);

    // 5. 선호도 기반 추천 리스트 조회
    List<Content> getRecommendedByTop(Top top);
    
    // 6. [추가] 유저가 좋아요 누른 모든 contentid 리스트 가져오기
    List<String> getMyLikeContentIds(@Param("email") String email);

    // ==========================================
    // 아래 메서드를 새로 추가했습니다. (기존 코드 건드리지 않음)
    // 나의 여행담기 페이지에서 찜한 여행지들의 전체 정보를 불러오기 위함입니다.
    // ==========================================
    List<Content> getLikedContentList(@Param("email") String email);
}