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
	
	//http://localhost:7070/login
    @RequestMapping("login")
    public String login() {
   	 return "login";
    } 
	
    //http://localhost:7070/Join
    @RequestMapping("Join")
    public String Join() {
   	 return "join";
    } 
	
	//	http://localhost:7070/inMembers
	@RequestMapping("inMembers")
	public String inMembers(
			@RequestParam(name="inMem", defaultValue="0") int inMem) {
		
		if(inMem == 1) {
			return "redirect:/index";			
		}else{
			return "login";
		}
	}

	
}
