package smarthomepage.com.uat.uia;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Servlet implementation class CommonController
 */
@Controller

public class AdminController {

	@RequestMapping("/admin.do")
	public String about(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/admin/main";
	}
	
}
