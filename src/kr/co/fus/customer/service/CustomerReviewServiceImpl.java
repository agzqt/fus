package kr.co.fus.customer.service;

import org.springframework.stereotype.Service;

import kr.co.fus.customer.dao.CustomerReviewDao;


public class CustomerReviewServiceImpl implements CustomerReviewService{
	private CustomerReviewDao dao;
	public void setCustomerReviewDao(CustomerReviewDao customerReviewDao) {
		this.dao = customerReviewDao;
	}
}
