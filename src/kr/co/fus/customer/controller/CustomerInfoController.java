package kr.co.fus.customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.fus.customer.service.CustomerInfoService;

@Controller
public class CustomerInfoController {

	@Autowired
	CustomerInfoService customerInfoService;
	
	@RequestMapping("/loginform.cus")
	public String loginform(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("로그인폼");
		return "CustomerLogin";
	}
	
	@RequestMapping("/login.cus")
	public String login(HttpSession session, String cusid, String cuspw) {
		System.out.println("로그인");
		customerInfoService.login(session, cusid, cuspw);
		return "redirect:../CustomerIndex";
	}
	
	@RequestMapping("/logout.cus")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		System.out.println("세션을파괴했으니로그아웃이되지않았을까");
		session.invalidate();
		return "redirect:../CustomerIndex";
	}
	
}
