package kr.co.fus.store.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.fus.store.bean.StoreInfoBean;
import kr.co.fus.store.service.StoreInfoService;

@Controller
public class StoreInfoController {
	//private StoreJoinDao storeJoinDao;

	@Autowired
	private StoreInfoService storeInfoService; 
	
	@RequestMapping(value = "/storemain.sto", method = RequestMethod.GET)
	public String storeMain() {
		System.out.println("스토어 메인실행됨.[GET방식]");
		return "StoreMain";
	}
	
	
	@RequestMapping(value = "/storejoin.sto", method = RequestMethod.GET)
	public String storeJoin() {
		System.out.println("스토어 조인실행됨.[GET방식]");
		return "StoreJoin";
	}
	

	
	@RequestMapping(value="/storejoinaction.sto", method = RequestMethod.POST)
	public String test(HttpServletRequest req, StoreInfoBean storeInfoBean, Model model) {
		
		System.out.println("insert=>" + storeInfoBean);
		storeInfoService.storeInsert(storeInfoBean);
		
		String res = "redirect:/loginform.super";
		return res;
	}
	
	@RequestMapping(value = "/storelogin.sto", method = RequestMethod.GET)
	public String storeLogin() {
		System.out.println("실행됨.[GET방식]");
		return "StoreLogin";
	}
	
	@RequestMapping(value = "/storeLoginAction.sto", method=RequestMethod.POST)
	public String storLoginAction(HttpSession session, String storeInfoId, String storeInfoPassword) {
		storeInfoService.storeLoginAction(session, storeInfoId, storeInfoPassword);
		return "StoreIndex";
	}

	}
