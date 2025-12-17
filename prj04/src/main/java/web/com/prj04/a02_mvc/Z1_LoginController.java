package web.com.prj04.a02_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class Z1_LoginController {

	@Autowired(required=false)
	private Z2_LoginService service;
	
//	http://localhost:7070/getMembersList
	@RequestMapping("getMembersList")
	public String getMembersList(
	        @RequestParam(name="email", defaultValue = "") String email,
	        @RequestParam(name="pwd", defaultValue = "") String pwd,
	        HttpSession session,
	        RedirectAttributes rttr) {

	    // 1. 로그인 검증 (실제로는 서비스/DB에서 확인해야 함)
	    // 예: 서비스에서 해당 이메일과 비번이 맞는지 확인하는 로직
	    // MemberDTO loginMember = memberService.login(email, pwd);

	    if (!email.equals("") && !pwd.equals("")) {
	      session.setAttribute("loginUser", email); 
	        return "redirect:/main"; 
	    } else {
	        rttr.addFlashAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다.");
	        return "login"; 
	    }
	}
	
	//http://localhost:7070/getJoinList
     @RequestMapping("getJoinList")
     public String getJoinList() {
    	 return "join";
     }
     
     /*
   //http://localhost:7070/joinMember
     @RequestMapping("joinMember")
    	 return "join";
    	    }
    	     	 
     }
       */ 
	
}
