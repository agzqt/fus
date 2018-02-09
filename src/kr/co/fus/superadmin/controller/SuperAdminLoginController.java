package kr.co.fus.superadmin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.fus.superadmin.service.SuperAdminInfoService;

@Controller
public class SuperAdminLoginController {

	@Autowired
	private SuperAdminInfoService superAdminInfoService;

	@RequestMapping("/index.super")
	protected String main(HttpServletRequest request, HttpServletResponse response) {
		
		return "superIndex";
	}
	
	@RequestMapping("/loginform.super")
	protected String loginform(HttpServletRequest request, HttpServletResponse response) {
		
		return "superLogin";
	}
	
	@RequestMapping("/login.super")
	public String login(HttpSession session, String superid, String superpw, String superpw2) {
		System.out.println(session+"--"+superid+"--"+superpw+"--"+superpw2);
		System.out.println("111111111111111111111111111111");
		superAdminInfoService.login(session, superid, superpw, superpw2);
		return "superIndex";
	}
	
	@RequestMapping("/logout.super")
	protected String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		System.out.println("로아");
		session.invalidate();
		return "redirect:./index.super";
	}

	
}
