package web.com.prj04.a02_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
   
 	//http://localhost:7070/festival
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
      
      
      
      
      // Model : 핵심
      // http://localhost:6060/deptList
      /*
       * @GetMapping("deptList") public String deptList(Model d) { // model : 핵심데이터,
       * view 보낼데이터.. d.addAttribute("deptList", service.getDeptList()); return
       * "deptList";
       * 
       * }
       */
   

}
