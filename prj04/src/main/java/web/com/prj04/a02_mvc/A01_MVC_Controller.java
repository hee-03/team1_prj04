package web.com.prj04.a02_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
// [추가된 import]
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import web.com.prj04.prj04_mvc.Content; 

@Controller
public class A01_MVC_Controller {

   @Autowired
   private A02_MVC_Service service;
   
   // [추가된 주입] 이미 수정해둔 favorite 패키지의 서비스를 활용하기 위해 주입합니다.
   @Autowired
   private web.com.prj04.favorite.A02_Service favoriteService;
   
   // http://localhost:7777/main
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
   
 //박성준   
 //http://192.168.0.31:7070/festival
 //http://localhost:7070/festival 
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
      
      
      
      
   
   // ==========================================
   // [새로 추가된 메서드] 나의 여행담기 데이터 조회 로직
   // 기존 코드는 수정하지 않고 하단에 추가만 하였습니다.
   // ==========================================
   
   /**
    * 나의 여행담기(mytrip.jsp)에서 '내가 좋아하는 여행' 리스트를 AJAX로 가져오는 매핑입니다.
    * 404 에러 방지를 위해 현재 페이지를 호출하는 이 컨트롤러에 직접 등록합니다.
    */
   @GetMapping("/travel/myLikeDetails")
   @ResponseBody
   public List<Content> getMyLikeDetails(HttpSession session) {
       // 세션에서 로그인 이메일 가져오기
       String logInEmail = (String) session.getAttribute("logInEmail");
       
       // 로그인 정보가 없을 시 테스트용 기본 이메일 사용
       if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com";
       
       // [핵심] 아까 favorite.A02_Service에 추가해둔 DB 조회 메서드를 호출합니다.
       return favoriteService.getLikedContentList(logInEmail);
   }
// ==========================================
   // [새로 추가된 메서드] 하트 클릭 시 찜 추가/삭제 처리
   // ==========================================
// ==========================================
   // [수정된 메서드] 하트 클릭 시 찜 추가/삭제 처리
   // ResponseEntity 대신 직접 String을 반환하여 응답 오류를 방지합니다.
   // ==========================================
// ==========================================
   // [최종 수정] 400 에러 방지를 위해 파라미터 설정을 유연하게 변경함
   // ==========================================
   @PostMapping("/travel/like")
   @ResponseBody
   public String toggleLike(
           @RequestParam(value="contentid", required=false) String contentid,
           @RequestParam(value="title", required=false) String title,
           @RequestParam(value="areacode", required=false) String areacode, 
           @RequestParam(value="action", required=false) String action,
           HttpSession session) {
       
       String logInEmail = (String) session.getAttribute("logInEmail");
       if(logInEmail == null) logInEmail = "rlaekagus329@gmail.com"; 

       // 디버깅용 로그: 데이터가 어떻게 들어오는지 콘솔에 찍어봅니다.
       System.out.println("Like Request -> ID: " + contentid + ", Action: " + action);

       try {
           // 필수 값인 contentid와 action이 없으면 바로 실패 리턴
           if(contentid == null || action == null) return "fail";

           boolean success = favoriteService.handleLike(contentid, title, areacode, action, logInEmail);
           return success ? "success" : "fail";
       } catch (Exception e) {
           e.printStackTrace();
           return "error";
       }
   }

}