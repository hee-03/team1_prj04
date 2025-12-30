package web.com.prj04.favorite;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import web.com.prj04.prj04_mvc.Content;

@Mapper
public interface TravelMapper {

    // 1. 지역별 여행지 리스트 조회
    List<Content> getContentsByRegionName(@Param("regionName") String regionName);

    // 2. 좋아요 추가
    int insertLike(@Param("title") String title, 
                   @Param("areacode") String areacode, 
                   @Param("email") String email);

    // 3. 좋아요 취소
    int deleteLike(@Param("title") String title, 
                   @Param("areacode") String areacode, 
                   @Param("email") String email);

    // 4. [중요] 유저 선호도 TOP 추출 (세션 저장용 데이터)
    // 작성하신 복합 쿼리와 매핑되어 Top 객체를 반환합니다.
    Top getTopPreference(@Param("email") String email);

    // 5. [중요] 선호도 기반 추천 리스트 조회
    // 세션에서 꺼낸 Top 객체의 cat1, areacode를 파라미터로 사용합니다.
    List<Content> getRecommendedByTop(Top top);
}