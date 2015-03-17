package smarthomepage.com.utl.sim.web;

import javax.servlet.http.HttpServlet;
import org.springframework.stereotype.Controller;
import smarthomepage.com.cop.itm.ItemVO;


@Controller("/control/upload.do")
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String  view;
    ItemVO ivo = new ItemVO();   
	
  

}
