package kr.co.fus.store.service;

import javax.servlet.http.HttpSession;

import kr.co.fus.store.bean.StoreInfoBean;
import kr.co.fus.store.dao.StoreInfoDao;

public class StoreInfoServiceImpl implements StoreInfoService {

	private StoreInfoDao dao;

	public void setStoreInfoDao(StoreInfoDao storeInfoDao) {
		this.dao = storeInfoDao;
	}

	@Override
	public void storeInsert(StoreInfoBean bean) {
		dao.storeInsert(bean);
	}
	
	@Override
	public void storeLoginAction(HttpSession session, String storeInfoId, String storeInfoPassword) {
		System.out.println("22222222222222222222222222222");
		String loginPass = dao.storeLoginAction(storeInfoId);
		if (loginPass != null) {
			if (loginPass.equals(storeInfoPassword)) {
				session.setAttribute("id", storeInfoId);
				System.out.println("성공");
			} else {
				return;
			}
		} 
	}
	
	@Override
	public StoreInfoBean storeOne(String StoreInfoId) {
		return dao.storeOne(StoreInfoId);
		
	}
}
