package kr.co.fus.customer.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.fus.customer.dao.CustomerInfoDao;
import kr.co.fus.superadmin.bean.SuperAdminInfoBean;

@Service
public class CustomerInfoServiceImpl implements CustomerInfoService{
	
	
	private CustomerInfoDao dao;
	public void setCustomerInfoDao(CustomerInfoDao customerInfoDao) {
		this.dao = customerInfoDao;
	}
	
	@Override
	public void login(HttpSession session, String cusid, String cuspw) {
		String loginPass = dao.login(cusid);

		if (loginPass != null) {
			if (loginPass.equals(cuspw)) {
				session.setAttribute("id", cusid);
				System.out.println("로그인성공해서세션에저장했으니이정도면된거같지않냐");
			} else {
				return;
			}
		} 
	}
}
