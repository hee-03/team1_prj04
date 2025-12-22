package web.com.prj04.prj04_mvc;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class A01_Controller {
	
	@Autowired
	private A02_Service service;

	// AJAX 요청 받음 regionName=서울 ==> @ResponseBody -> Json응답
	@GetMapping("/travel/list")
	@ResponseBody
	public List<Content> travelList(@RequestParam String regionName){
			
	System.out.println("controller 진입 regionName = "+regionName);
	
	List<Content> list = service.getContentsByRegionName(regionName);
	
	System.out.println("반환 content 수 = "+list.size());
	
	return list;//Service에게 전달
	}
	
	// http://localhost:7070/rec_travel
	@GetMapping("rec_travel_test")
	 public String rec_travel_test() {
	    return "rec_travel";
	}

}
