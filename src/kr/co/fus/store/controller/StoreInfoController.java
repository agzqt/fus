package kr.co.fus.store.controller;

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
import kr.co.fus.store.bean.StoreInfoBean;
import kr.co.fus.store.service.StoreInfoService;

@Controller
public class StoreInfoController {
	//private StoreJoinDao storeJoinDao;

	@Autowired
	private StoreInfoService storeInfoService; 
/*	@Autowired
	private CustomerReserveService customerReserveService;*/
	
	//회원가입
	@RequestMapping(value="/storejoinaction.sto", method = RequestMethod.POST)
	public String test(HttpServletRequest req, StoreInfoBean storeInfoBean, Model model) {
		
		System.out.println("insert=>" + storeInfoBean);
		storeInfoService.storeInsert(storeInfoBean);
		
		return "redirect:/storelogin.sto";
	}
	
	//로그인
	@RequestMapping(value = "/storeLoginAction.sto", method=RequestMethod.POST)
	public String storLoginAction(HttpSession session, String storeInfoId, String storeInfoPassword, Model model) {
		storeInfoService.storeLoginAction(session, storeInfoId, storeInfoPassword);
		System.out.println(storeInfoId);
		/*ArrayList<CustomerReserveBean> list = customerReserveService.reserveList("1");
		model.addAttribute("reserveList",list);*/
		if (session.getAttribute("id")==null) {
			return "redirect:/storelogin.sto";
		}
		return "store/StoreIndex";
	}
	//로그아웃
	@RequestMapping("/storeLogout.sto")
	protected String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:./storelogin.sto";
	}

	//좌석수정
	
	//점포수정
	
	//리뷰 업데이트
	
	
	}
