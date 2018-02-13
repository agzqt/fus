package kr.co.fus.store.dao;

import kr.co.fus.store.bean.StoreInfoBean;

public interface StoreInfoDao {
	
	public void storeInsert(StoreInfoBean bean); // 가입
	public String storeLoginAction(String storeInfoId); //  로그인
	public StoreInfoBean storeOne(String StoreInfoID);//store지점한개찾기

}
