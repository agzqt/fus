package kr.co.fus.store.service;

import javax.servlet.http.HttpSession;

import kr.co.fus.store.bean.StoreInfoBean;

public interface StoreInfoService {
	public void storeInsert(StoreInfoBean bean); // 가입
	public void storeLoginAction(HttpSession session, String StoreInfoId, String StoreInfoPassword);//로그인
	public void login(HttpSession session, String StoreInfoId, String StoreInfoPassword);//포스로그인

}
