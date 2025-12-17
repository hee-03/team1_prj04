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
	
	
	// Model : 핵심
	// http://localhost:6060/deptList
	@GetMapping("deptList")
	public String deptList(Model d) {
		// model : 핵심데이터, view 보낼데이터..
		d.addAttribute("deptList", service.getDeptList());
		return "deptList";
		
	}
	
	
	// http://localhost:6060/mytrip
	@GetMapping("mytrip")
	public String mytrip() {
		return "sejin/mytrip";
	}
	
}
