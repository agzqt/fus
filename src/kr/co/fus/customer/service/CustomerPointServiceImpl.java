package kr.co.fus.customer.service;

import org.springframework.stereotype.Service;

import kr.co.fus.customer.dao.CustomerPointDao;

@Service
public class CustomerPointServiceImpl implements CustomerPointService{
	private CustomerPointDao dao;
	public void setCustomerPointDao(CustomerPointDao customerPointDao) {
		this.dao = customerPointDao;
	}
}
