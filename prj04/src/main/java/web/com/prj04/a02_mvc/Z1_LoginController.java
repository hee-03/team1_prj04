package web.com.prj04.a02_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
  //http://localhost:7070/Join
    @GetMapping("Join")
    public String Join() {
    	return "join";
    }
    
    @PostMapping("Join")
    public String insertMember(Members mem1, Model d) {
    	
        d.addAttribute("mem2", service.insertMember(mem1));
        
        return "login";
    }
	
	

	
}
