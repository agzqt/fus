package kr.co.fus.customer.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;


public class CustomerPointDaoImpl  implements CustomerPointDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
}
