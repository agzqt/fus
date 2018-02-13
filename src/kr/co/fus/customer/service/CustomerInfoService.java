package kr.co.fus.customer.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.fus.customer.bean.CustomerInfoBean;

public interface CustomerInfoService {
	public void login(HttpSession session, String cusid, String cuspw);
	
	public void insertMember(CustomerInfoBean customerInfoBean); //  회원가입
	
	public int duplCheck(String customerInfoId); //회원가입 id 중복체크

	List<CustomerInfoBean> customerGetList(CustomerInfoBean customerInfoBean);
 
	
	
}
