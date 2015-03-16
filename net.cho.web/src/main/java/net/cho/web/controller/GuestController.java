package net.cho.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.cho.web.dao.GuestDao;
import net.cho.web.factory.Command;
import net.cho.web.factory.SimpleCommandFactory;
import net.cho.web.model.GuestVo;

@Controller
public class GuestController {

	@RequestMapping("/guest.do")
	public String about(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/guest/main";
	}
	
}
/**
 * Servlet implementation class ProductController
 */
/*@Controller("/control/guest.do")
public class GuestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SimpleCommandFactory factory = new SimpleCommandFactory();   
	String  view;
	Command command ; 
	List<GuestVo>glist = new ArrayList<GuestVo>();
	GuestVo gvo;
	
   
	public void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p0 = request.getServletPath().split("/")[2];
		String p1 = p0.substring(0,p0.indexOf("."));
		String p2 = request.getParameter("command");
		String p3 = request.getParameter("pageNO");
		String p4 = request.getParameter("keyField");
		String p5 = request.getParameter("keyword");
		if(p2 == null){ p2 = "main";}
		if(p3 == null){	p3 = "1"; }
		if(p4 == null){ p4 = "NONE";}
		if(p5 == null){ p5 = "NONE";}
		System.out.println("param2 :"+ p2);
		System.out.println("param3 :"+ p3);
		System.out.println("param4 :"+ p4);
		System.out.println("param5 :"+ p5);
		command = factory.createCommand(p1,p2,p3,p4,p5);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		init(request,response);
		System.out.println("컨트롤러 명령어 : "+command.getCommand());
		if(command.getKeyword().equals("NONE")){
			System.out.println("컨트롤러에 검색어가 없습니다.");
		}
			
	}
	private void process(HttpServletRequest request, HttpServletResponse response,String view) throws ServletException, IOException {
		
		RequestDispatcher dis = request.getRequestDispatcher("/views/guest/"+view+".jsp");
		dis.forward(request, response);
	}
}
*/