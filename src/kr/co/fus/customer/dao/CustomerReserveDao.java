package kr.co.fus.customer.dao;

import java.util.ArrayList;

import kr.co.fus.customer.bean.CustomerReserveBean;

public interface CustomerReserveDao {
	public void testt(CustomerReserveBean customerReserveBean);
	public ArrayList<CustomerReserveBean> reserveList(String userId);
}
