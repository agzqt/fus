package kr.co.fus.customer.service;

import org.springframework.stereotype.Service;

import kr.co.fus.customer.dao.CustomerGradeDao;
import kr.co.fus.customer.dao.CustomerInfoDao;

@Service
public class CustomerGradeServiceImpl implements CustomerGradeService{
	private CustomerGradeDao dao;
	public void setCustomerGradeDao(CustomerGradeDao customerGradeDao) {
		this.dao = customerGradeDao;
	}
}
