package kr.co.fus.pos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.fus.store.service.StoreInfoService;

@Controller
public class PosLoginController {
	
	@Autowired
	private StoreInfoService storeInfoService;

	@RequestMapping(value = "/login.pos", method=RequestMethod.GET)
	protected String poslogin(HttpServletRequest request, HttpServletResponse response) {
		return "./pos/posLogin";
	}

	@RequestMapping(value = "/main.pos", method=RequestMethod.POST)
	public String login(HttpSession session, String StoreInfoId, String StoreInfoPassword, Model model) {
		System.out.println(session+"--"+StoreInfoId+"--"+StoreInfoPassword);
		storeInfoService.login(session, StoreInfoId, StoreInfoPassword);
		model.addAttribute("test", 1);
		return "./pos/posMain";
	}
	
	@RequestMapping("/logout.pos")
	protected String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:./login.pos";
	}
}