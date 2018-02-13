package kr.co.fus.superadmin.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.fus.superadmin.bean.SuperAdminInfoBean;
import kr.co.fus.superadmin.dao.SuperAdminInfoDao;

public class SuperAdminInfoServiceImpl implements SuperAdminInfoService{
	
	private SuperAdminInfoDao dao;
	public void setSuperAdminInfoDao(SuperAdminInfoDao superAdminInfoDao) {
		this.dao = superAdminInfoDao;
	}
	
	@Override
	public void login(HttpSession session, String superid, String superpw, String superpw2) {
		System.out.println("22222222222222222222222222222"+superid+superpw+superpw2);
		SuperAdminInfoBean loginPass = dao.login(superid);
		System.out.println(loginPass+"3333333333333333333");
		String pass1 = loginPass.getAdminInfoPassword();
		String pass2 = loginPass.getAdminInfoPassword2();
		if (loginPass != null) {
			if (pass1.equals(superpw)) {
				if (pass2.equals(superpw2)) {
					session.setAttribute("id", superid);
					System.out.println("성공");
				} else {
					return;
				}
			} else {
				return;
			}
		} 
	}
}
