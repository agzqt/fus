package kr.co.fus.customer.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import kr.co.fus.customer.bean.CustomerReserveBean;
import kr.co.fus.customer.dao.CustomerReserveDao;

@Service
public class CustomerReserveServiceImpl implements CustomerReserveService{
	private CustomerReserveDao dao;
	public void setCustomerReserveDao(CustomerReserveDao customerReserveDao) {
		this.dao = customerReserveDao;
	}
@Override
public void testt(CustomerReserveBean customerReserveBean) {
	dao.testt(customerReserveBean);
}
@Override
public ArrayList<CustomerReserveBean> reserveList(String userId) {
	return (ArrayList)dao.reserveList(userId);
}
}
