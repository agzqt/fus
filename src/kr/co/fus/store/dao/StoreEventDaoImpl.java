package kr.co.fus.store.dao;

import org.apache.ibatis.session.SqlSession;

public class StoreEventDaoImpl {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	

}
