package smarthomepage.com.uat.uia;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import smarthomepage.com.uss.umt.MemberVO;

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
	public ModelAndView board_insert(MemberVO mvo,
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
	
}// class end
