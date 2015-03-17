package smarthomepage.com.cop.bbs.web;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BoardController {

	@RequestMapping("/board.do")
	public String about(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/board/main";
	}
	
}
