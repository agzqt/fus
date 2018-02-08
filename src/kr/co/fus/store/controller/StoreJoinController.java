package kr.co.fus.store.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.fus.store.dao.StoreJoinDao;

@Controller
public class StoreJoinController {
	private StoreJoinDao storeJoinDao;

	public void setMemberDao(StoreJoinDao storeJoinDao) {
		this.storeJoinDao = storeJoinDao;
	}
	
	@RequestMapping(value = "/storejoin.store", method = RequestMethod.GET)
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		System.out.println("실행됨.[GET방식]");
		return new ModelAndView("insert");
	}

	@RequestMapping(value = "/storejoin.store", method = RequestMethod.POST)
	protected ModelAndView handleRequestInternal2(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {

		System.out.println("실행됨.[POST방식]");
		String code = arg0.getParameter("code");
		String id = arg0.getParameter("id");
		String pwd = arg0.getParameter("pwd");
		String name = arg0.getParameter("name");
		String addr = arg0.getParameter("addr");
		String phone = arg0.getParameter("phone");
		String mobile = arg0.getParameter("mobile");
		String cate = arg0.getParameter("cate");
		String license = arg0.getParameter("license");
		String open = arg0.getParameter("open");
		String close = arg0.getParameter("close");
		String mood = arg0.getParameter("mood");
		String max = arg0.getParameter("max");
		String info = arg0.getParameter("info");

		/*StoreJoinDao bean = new StoreJoinDao();
		bean.setStoreInfoCode(code);
		bean.setStoreInfoId(id);
		bean.setStoreInfoPassword(pwd);
		bean.setStoreInfoName(name);
		bean.setStoreInfoAddress(addr);
		bean.setStoreInfoStorePhone(phone);
		bean.setStoreInfoMobilePhone(mobile);
		bean.setStoreInfoCategory(cate);
		bean.setStoreInfoLicense(license);
		bean.setStoreInfoOpen(open);
		bean.setStoreInfoClose(close);
		bean.setStoreInfoMood(mood);
		bean.setStoreInfoMax(max);
		bean.setStoreInfoInfo(info);

		storeJoinDao.insert(bean);*/

		System.out.printf("%s, %s, %s, %s\n", id, pwd, name);
		return new ModelAndView("login");
	}
}
