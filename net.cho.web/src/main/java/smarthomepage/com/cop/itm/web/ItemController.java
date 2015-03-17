package smarthomepage.com.cop.itm.web;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ItemController {

	@RequestMapping("/item.do")
	public String about(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/item/main";
	}
	
}
