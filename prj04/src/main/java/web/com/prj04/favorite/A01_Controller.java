package web.com.prj04.favorite;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import web.com.prj04.prj04_mvc.*; 

@Controller
public class A01_Controller {
	
	@Autowired
	private A02_Service service;

	@GetMapping("/travel/list")
	@ResponseBody
	public List<Content> travelList(@RequestParam String regionName){
		return service.getContentsByRegionName(regionName);
	}
//http://localhost:7070/rec_travel_test
	@GetMapping("rec_travel_test")
	public String rec_travel_test() {
	    return "rec_travel2";
	}

	// 1. 좋아요 처리 (Favorite 테이블 저장/삭제)
	@PostMapping("/travel/like")
	@ResponseBody
	public String toggleLike(
			@RequestParam String title,
			@RequestParam String areacode, 
			@RequestParam String action,
			HttpSession session) {
		
		String logInEmail = (String) session.getAttribute("logInEmail");
		if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com"; 

		try {
			boolean success = service.handleLike(title, areacode, action, logInEmail);
			return success ? "success" : "error";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	// 2. 추천 여행지 리스트 반환 (서비스의 통합 로직 사용)
	@GetMapping("/travel/recommend")
	@ResponseBody
	public List<Content> getRecommend(HttpSession session) {
		String logInEmail = (String) session.getAttribute("logInEmail");
		if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com"; 
		
		// 서비스에서 분석부터 추천지 추출까지 한 번에 처리
		return service.getFinalRecommendation(logInEmail);
	}

	// 3. [신규 추가] 유저가 이미 좋아요 누른 areacode 목록 가져오기 (JSP 하트 유지용)
	@GetMapping("/travel/myLikes")
	@ResponseBody
	public List<String> getMyLikes(HttpSession session) {
		String logInEmail = (String) session.getAttribute("logInEmail");
		if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com";
		
		// 세션이나 DB에서 유저의 선호 리스트를 가져와서 areacode만 리스트로 반환
		// 여기서는 간단하게 TOP 분석 쿼리를 재활용하거나 Favorite 전체 리스트를 가져올 수 있습니다.
		// (가장 정확한 방법은 Mapper에 getMyLikeCodes 쿼리를 만드는 것이지만, 
		// 우선 작동을 위해 Top 데이터를 활용하거나 빈 리스트를 보냅니다.)
		
		web.com.prj04.favorite.Top top = service.getTopPreference(logInEmail);
		List<String> codes = new ArrayList<>();
		if(top != null && top.getAreacode() != null) {
			codes.add(String.valueOf(top.getAreacode())); // 문자열로 확실히 변환
		}
		return codes;
	}
}