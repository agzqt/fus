package kr.co.fus.customer.dao;

import java.util.List;

import kr.co.fus.customer.bean.CustomerInfoBean;

public interface CustomerInfoDao {
	public String login(String cusid);
	
	public void insertMember(CustomerInfoBean customerInfoBean); //  회원가입
	
	public List<CustomerInfoBean> customerGetList(CustomerInfoBean customerInfoBean); // 리스트
	
	public int customerDuplCheck(String customerInfoId); //id 중복체크 
	 
}
