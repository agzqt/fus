package kr.co.fus.customer.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

@Resource
public class CustomerInfoDaoImpl implements CustomerInfoDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public String test() {
		return sqlSession.selectOne("test");
	}
}
