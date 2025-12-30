package web.com.prj04.a02_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model; 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class S1_SearchController {
	
	@GetMapping("search")
	public String search(@RequestParam("keyword") String keyword, Model model) {
		model.addAttribute("keyword", keyword);
	    return "findResult";
	    
	}
}
