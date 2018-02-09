package kr.co.fus.customer.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.fus.customer.service.CustomerInfoService;

@Controller
public class FirstController {

	/*@Autowired
	private CustomerInfoService customerInfoService;*/

	@RequestMapping(value = "/index.cus", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "../CustomerIndex";
	}
	
	
}
