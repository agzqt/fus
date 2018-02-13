package kr.co.fus.customer.service;

import java.util.ArrayList;

import kr.co.fus.customer.bean.CustomerReserveBean;

public interface CustomerReserveService {
	public void testt(CustomerReserveBean customerReserveBean);
	public ArrayList<CustomerReserveBean>  reserveList(String userId);
}
