package kr.co.fus.superadmin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.fus.superadmin.service.SuperAdminInfoService;

@Controller
public class SuperAdminLoginController {

	SuperAdminInfoService superAdminInfoService;
	public void serSuperAdminInfoService(SuperAdminInfoService superAdminInfoService) {
		this.superAdminInfoService = superAdminInfoService;
	}
	
	/*@RequestMapping("/login.bbs")
	public String login(HttpSession session, String userName, String password, int pn) {
		superAdminInfoService.login(session, userName, password);
		return "redirect:/home.bbs?pageNum="+pn;
	}*/
	
	/*@RequestMapping("/index.bbs")
	protected String login(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/index.jsp";
	}*/

	
}
