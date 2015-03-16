package net.cho.web.controller;

import net.cho.web.model.MemberVo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutController {

	@RequestMapping("/about.do")
	public String signup(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/about/main";
	}
	
	@RequestMapping("/map.do")
	public String map(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/about/mapview";
	}
	
}
