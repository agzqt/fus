package kr.co.fus.customer.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FirstController {

	/*@Autowired
	private CustomerInfoService customerInfoService;*/

	@RequestMapping(value = "/index.cus", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "../CustomerIndex";
	}
	
	@RequestMapping(value = "/accessDenied.cus", method = RequestMethod.GET)
	public String accessDenied(Locale locale, Model model) {
		return "../error/accessDenied";
	}
}
