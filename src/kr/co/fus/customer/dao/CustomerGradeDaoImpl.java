package kr.co.fus.customer.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

@Resource
public class CustomerGradeDaoImpl  implements CustomerGradeDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public String test2() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
