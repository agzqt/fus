package kr.co.fus.pos.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.fus.customer.bean.CustomerReserveBean;
import kr.co.fus.customer.service.CustomerReserveService;
import kr.co.fus.store.service.StoreInfoService;

@Controller
public class PosLoginController {
	
	@Autowired
	private StoreInfoService storeInfoService;
	@Autowired
	private CustomerReserveService customerReserveService;
	@RequestMapping(value = "/login.pos", method=RequestMethod.GET)
	public String poslogin(HttpServletRequest request, HttpServletResponse response) {
		return "pos/posLogin";
	}
	/////////////////////////////////////////////////////////////////////pos 로그인
	@RequestMapping(value = "/main.pos", method=RequestMethod.POST)
	public String login(HttpSession session, String StoreInfoId, String StoreInfoPassword, Model model) {
		System.out.println(session+"--"+StoreInfoId+"--"+StoreInfoPassword);
		storeInfoService.storeLoginAction(session, StoreInfoId, StoreInfoPassword);
	
	//////////////////////////////////////////////////////////////////// 예약 리스트 뽑아오기	
		ArrayList<CustomerReserveBean> list = customerReserveService.reserveList("1");
		model.addAttribute("reserveList", list);
		if (session.getAttribute("id")==null) {
			return "redirect:/login.pos";
		}
		
		return "pos/posMain";
	}
	
	@RequestMapping("/logout.pos")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:./login.pos";
	}
}