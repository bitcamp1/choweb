package net.cho.web.controller;

import javax.servlet.ServletContext;

import net.cho.web.dao.*;
import net.cho.web.model.MemberVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	ServletContext application;

	//@Autowired
	//BoardDAO dao;

	@RequestMapping("/sign_page.do")
	public String sign(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/sign/sign_page";
	}
	
	@RequestMapping("/login_page.do")
	public String login(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/sign/login_page";
	}
	
	@RequestMapping("/reserve.do")
	public String reserve(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/movie/reserve";
	}
	
	@RequestMapping("/ticket.do")
	public String ticket(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/movie/ticket";
	}
	
	
	@RequestMapping("/member_insert.do")
	public ModelAndView board_insert(MemberVo mvo,
			@RequestParam("idx") String[] msg) {
		System.out.println("AboutController member_insert 10:08");
		ModelAndView mav = new ModelAndView();

		// 이름,제목,내용,성별,취미,파일 데이타받기 해결
		System.out.println("넘어온이메일: " + mvo.getEmail());
		System.out.println("넘어온비밀번호 " + mvo.getPasswd());
		System.out.println("넘어온이름: " + mvo.getName());
		System.out.println("넘어온전화번호: " + mvo.getMobile() );

		StringBuffer sb = new StringBuffer();
		for (String h : msg) {
			sb.append(h).append(" ");
		}		
		
		//dao.dbInsert(dto);// dao으로 넘어갑니다
		// String url="/WEB-INF/views/three.jsp";
		mav.setViewName("redirect:/member_list.do");
		return mav;
	}// end
	

	/*@RequestMapping("/board_editForm.do")
	public String board_edit(Model model, int idx) {
		System.out.println("ListController.java(editForm)");
		BoardDTO dto = dao.dbDetail(idx);
		model.addAttribute("bean", dto);
		String url = "/WEB-INF/views/board_edit.jsp";
		return url;
	}// end
*/
	/*@RequestMapping("/board_edit.do")
	public ModelAndView board_edit(BoardDTO dto,
			@RequestParam("hobby") String[] msg) {
		System.out.println("board_insert(BoardDTO dto) 10:08");
		ModelAndView mav = new ModelAndView();
		// 이름,제목,내용,성별,취미,파일 데이타받기 해결
		System.out.println("넘어온이름: " + dto.getName());
		System.out.println("넘어온제목: " + dto.getTitle());
		System.out.println("넘어온내용: " + dto.getContent());
		System.out.println("넘어온성별: " + dto.getGender());

		StringBuffer sb = new StringBuffer();
		for (String h : msg) {
			sb.append(h).append(" ");
		}
		System.out.println("넘어온취미: " + sb.toString());
		// System.out.println("넘어온취미: " + dto.getHobby());

		String img_file_name = "";
		try {
			String path = application.getRealPath("upload");
			img_file_name = dto.getUpload_f().getOriginalFilename(); // MultipartFile클래스에서
																		// 제공되는
																		// 메소드
			File file = new File(path, img_file_name);
			dto.getUpload_f().transferTo(file); // MultipartFile클래스에서 제공되는 메소드
			System.out.println("넘어온그림: " + img_file_name);
		} catch (Exception ex) {
		}

		dto.setHobby(sb.toString());
		dto.setImg_file_name(img_file_name);
		dao.dbEdit(dto);// dao으로 넘어갑니다
		// String url="/WEB-INF/views/three.jsp";
		mav.setViewName("redirect:/board_list.do");
		return mav;
	}*/
}// class end
