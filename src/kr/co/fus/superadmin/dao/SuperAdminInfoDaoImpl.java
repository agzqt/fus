package kr.co.fus.superadmin.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

@Resource
public class SuperAdminInfoDaoImpl implements SuperAdminInfoDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public String test() {
		return sqlSession.selectOne("test");
	}
}
