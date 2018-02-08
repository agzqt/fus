package kr.co.fus.customer.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

@Resource
public class CustomerReviewDaoImpl  implements CustomerReviewDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
}
