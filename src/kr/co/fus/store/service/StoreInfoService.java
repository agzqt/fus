package kr.co.fus.store.service;

import javax.servlet.http.HttpSession;

import kr.co.fus.store.bean.StoreInfoBean;

public interface StoreInfoService {
	public void storeInsert(StoreInfoBean bean); // 가입
	public void storeLoginAction(HttpSession session, String StoreInfoId, String StoreInfoPassword);//로그인
	public StoreInfoBean storeOne(String StoreInfoID);//store지점한개찾기
}
