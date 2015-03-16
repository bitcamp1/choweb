package net.cho.web.controller;

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

import net.cho.web.dao.ItemDao;
import net.cho.web.factory.Command;
import net.cho.web.factory.SimpleCommandFactory;
import net.cho.web.model.ItemVo;

@Controller
public class ItemController {

	@RequestMapping("/item.do")
	public String about(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/item/main";
	}
	
}

/**
 * Servlet implementation class ItemController
 */
/*@Controller("/control/item.do")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SimpleCommandFactory factory = new SimpleCommandFactory();   
	String  view;
	Command command ;    
	ItemVo ivo = new ItemVo();
   
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
		System.out.println("p1 :"+ p1);
		System.out.println("command :"+ p2);
		System.out.println("p3 :"+ p3);
		System.out.println("p4 :"+ p4);
		System.out.println("p5 :"+ p5);
		command = factory.createCommand(p1,p2,p3,p4,p5);
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		init(request,response);
		System.out.println("ItemController");
	}
	private void process(HttpServletRequest request, HttpServletResponse response,String view) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("/views/item/"+view+".jsp");
		dis.forward(request, response);
	}
	
}
*/