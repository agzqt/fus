package kr.co.fus.customer.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.fus.customer.bean.CustomerInfoBean;
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
		return "redirect:/index.cus";
	}
	
	@RequestMapping("/logout.cus")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		System.out.println("세션을파괴했으니로그아웃이되지않았을까");
		session.invalidate();
		return "redirect:/index.cus";
	}
	@RequestMapping(value="/CustomerInfoJoin.cus", method=RequestMethod.GET)
	public String loginjoin() {
		System.out.println("get 방식 왔나=>" );
		return "CustomerJoin";
	}
	@RequestMapping(value="/CustomerInfoJoin.cus", method=RequestMethod.POST)
	public String loginjoin(CustomerInfoBean customerInfoBean) {
		System.out.println("post 왔나=>" );
		
			return "CustomerJoin";
	}

	@RequestMapping("/write.cus")
	public String write(@ModelAttribute CustomerInfoBean customerInfoBean) {
		System.out.println("write=>" );
		customerInfoService.insertMember(customerInfoBean);

		return "redirect:/index.cus";
	}

	@RequestMapping("/CustomerList.cus")
	public String CustomerList(HttpServletRequest request,Model model,CustomerInfoBean customerInfoBean) {
		System.out.println("CustomerList컨트롤러=>" );
		List<CustomerInfoBean> list = customerInfoService.customerGetList(customerInfoBean);
		model.addAttribute("list", list);
		
		return "CustomerLogin";
	}

	/*@RequestMapping("/DuplCheck.cus")
	public String DuplCheck(@RequestParam("customerInfoId") String customerInfoId) {
		System.out.println("@RequestParam컨트롤러=>" );
	
		int result = customerInfoService.duplCheck(customerInfoId);
		if(result == 0) {
			System.out.println("dddddddddd왕냐안아아");
		}
		
		return "CustomerLogin";
	}*/
	
	@RequestMapping(value = "/index.cus", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "../CustomerIndex";
	}
	
}
