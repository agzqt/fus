package kr.co.fus.customer.service;

import javax.servlet.http.HttpSession;

public interface CustomerInfoService {
	public void login(HttpSession session, String cusid, String cuspw);
}
