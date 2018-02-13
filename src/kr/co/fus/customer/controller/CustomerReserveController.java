package kr.co.fus.customer.controller;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.fus.customer.bean.CustomerReserveBean;
import kr.co.fus.customer.service.CustomerReserveService;

@Controller
public class CustomerReserveController {
	
	@Autowired
	CustomerReserveService customerReserveService;
	
	@RequestMapping(value = "/reserve.cus", method = RequestMethod.GET)
	public String reservePage(HttpServletRequest req, Locale locale, Model model) {
		return "customer/CustomerReserve";
	}
	@RequestMapping(value = "/reserve.cus", method = RequestMethod.POST)
	public String reserveCreate(HttpServletRequest req, Locale locale, Model model, @ModelAttribute CustomerReserveBean customerReserveBean) {
		customerReserveService.testt(customerReserveBean);
		return "redirect:reserveList.cus";
	}
	@RequestMapping(value = "/reserveList.cus", method = RequestMethod.GET)
	public String reserveList(HttpServletRequest req, Model model, HttpSession session) {
		session.setAttribute("userId", "1");
		ArrayList<CustomerReserveBean> reserveList = customerReserveService.reserveList((String)session.getAttribute("userId"));
		model.addAttribute("reserveList" , reserveList);
		return "customer/mypage/CustomerReserveList";
	}
	
}
