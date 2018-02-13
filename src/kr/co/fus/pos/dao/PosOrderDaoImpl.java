package kr.co.fus.pos.dao;

import org.apache.ibatis.session.SqlSession;

public class PosOrderDaoImpl implements PosOrderDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public String test() {
		return sqlSession.selectOne("test");
	}
}
