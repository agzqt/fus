package kr.co.fus.pos.service;

import kr.co.fus.pos.dao.PosSeatDao;

public class PosSeatServiceImpl implements PosSeatService{
	
	
	private PosSeatDao dao;
	public void setPosSeatDao(PosSeatDao posSeatDao) {
		this.dao = posSeatDao;
	}
	
	@Override
	public String test() {
		return dao.test();
	}
}
