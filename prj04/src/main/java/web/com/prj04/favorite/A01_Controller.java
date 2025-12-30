package web.com.prj04.favorite;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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
	// http://localhost:7070/rec_travel_test
	@GetMapping("rec_travel_test")
	public String rec_travel_test() {
	    return "rec_travel2";
	}

	@PostMapping("/travel/like")
	@ResponseBody
	public ResponseEntity<String> toggleLike(
	        @RequestParam("contentid") String contentid,
	        @RequestParam(value="title", required=false) String title,
	        @RequestParam(value="areacode", required=false) String areacode, 
	        @RequestParam("action") String action,
	        HttpSession session) {
	    
	    String logInEmail = (String) session.getAttribute("logInEmail");
	    if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com"; 

	    try {
	        boolean success = service.handleLike(contentid, title, areacode, action, logInEmail);
	        return ResponseEntity.ok(success ? "success" : "fail");
	    } catch (Exception e) {
	        return ResponseEntity.status(500).body("error");
	    }
	}

	@GetMapping("/travel/recommend")
	@ResponseBody
	public List<Content> getRecommend(HttpSession session) {
		String logInEmail = (String) session.getAttribute("logInEmail");
		if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com"; 
		return service.getFinalRecommendation(logInEmail);
	}

	@GetMapping("/travel/myLikes")
	@ResponseBody
	public List<String> getMyLikes(HttpSession session) {
		String logInEmail = (String) session.getAttribute("logInEmail");
		if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com";
		return service.getMyLikeContentIds(logInEmail);
	}
}