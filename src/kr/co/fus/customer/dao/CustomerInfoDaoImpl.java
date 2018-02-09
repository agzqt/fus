package kr.co.fus.customer.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import kr.co.fus.superadmin.bean.SuperAdminInfoBean;

@Resource
public class CustomerInfoDaoImpl implements CustomerInfoDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public String login(String cusid) {
		return sqlSession.selectOne("cuslogin", cusid);
	}
}
