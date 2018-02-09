package kr.co.fus.superadmin.service;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface SuperAdminInfoService {
	public void login(HttpSession session, String superid, String superpw, String superpw2);
}
