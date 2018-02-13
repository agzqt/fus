package kr.co.fus.pos.service;

import kr.co.fus.pos.dao.PosOrderDao;

public class PosOrderServiceImpl implements PosOrderService{
	
	
	private PosOrderDao dao;
	public void setPosOrderDao(PosOrderDao posOrderDao) {
		this.dao = posOrderDao;
	}
	
	@Override
	public String test() {
		return dao.test();
	}
}
