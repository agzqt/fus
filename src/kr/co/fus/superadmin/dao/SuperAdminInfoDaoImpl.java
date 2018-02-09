package kr.co.fus.superadmin.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.fus.superadmin.bean.SuperAdminInfoBean;

public class SuperAdminInfoDaoImpl implements SuperAdminInfoDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public SuperAdminInfoBean login(String superid) {
		return sqlSession.selectOne("superlogin", superid);
	}
}
