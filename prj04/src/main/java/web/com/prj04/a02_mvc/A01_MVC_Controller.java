package web.com.prj04.a02_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class A01_MVC_Controller {

   @Autowired
   private A02_MVC_Service service;
   
   // http://localhost:7070/main
   @GetMapping("main")
   public String main() {
      return "index";
   }
   
   // http://localhost:7070/mytrip
   @GetMapping("mytrip")
   public String mytrip() {
      return "mytrip";
   }
   // http://localhost:7070/rec_travel
   @GetMapping("rec_travel")
   public String rec_travel() {
      return "rec_travel";
   }
   //http://localhost:7070/whereGoing2 
   @GetMapping("whereGoing2")
   public String whereGoing2() {
	   return "whereGoing2";
   }
   
 	
   //http://192.168.0.31:7070/festival
   @GetMapping("/festival")
   public String festival() {
       return "festival"; // → /WEB-INF/view/festival.jsp
   }
   
      
   //이병주   
   //http://localhost:7070/whereGoing
   @GetMapping("whereGoing")
   public String whereGoing() {
	   return "whereGoing";
   }
   
 //http://localhost:7070/map
   @GetMapping("/map")
   public String map() {
       return "map";
   }
      
   //http://localhost:7070/findResult
   @GetMapping("findResult")
   public String findResult() {
	   return "findResult";
   }
   
   // header 검색 ==> 결과 페이지 이동
   @GetMapping("search")
	public String search(@RequestParam("keyword") String keyword, Model model) {
		model.addAttribute("keyword", keyword);
	    return "findResult";
	}
   
   // 검색 결과 ajax용
   @GetMapping("/travel/search")
   @ResponseBody
   public List<AreaBasedVO> searchTravel(@RequestParam("keyword") String keyword) {
       return service.searchByKeyword(keyword);
   }
   

}
