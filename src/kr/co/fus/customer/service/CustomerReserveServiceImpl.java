package kr.co.fus.customer.service;

import org.springframework.stereotype.Service;

import kr.co.fus.customer.dao.CustomerReserveDao;

@Service
public class CustomerReserveServiceImpl implements CustomerReserveService{
	private CustomerReserveDao dao;
	public void setCustomerReserveDao(CustomerReserveDao customerReserveDao) {
		this.dao = customerReserveDao;
	}
}
