package kr.co.fus.customer.service;

import org.springframework.stereotype.Service;

import kr.co.fus.customer.dao.CustomerInfoDao;

@Service
public class CustomerInfoServiceImpl implements CustomerInfoService{
	
	
	private CustomerInfoDao dao;
	public void setCustomerInfoDao(CustomerInfoDao customerInfoDao) {
		this.dao = customerInfoDao;
	}
	
	@Override
	public String test() {
		return dao.test();
	}
}
