package kr.co.fus.customer.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import kr.co.fus.customer.bean.CustomerInfoBean;

public class CustomerInfoDaoImpl implements CustomerInfoDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public String login(String cusid) {
		return sqlSession.selectOne("cuslogin", cusid);
	}
	
	@Override
	public void insertMember(CustomerInfoBean customerInfoBean) {
		sqlSession.insert("customerInsertMember", customerInfoBean);
	}
	
	@Override
	public List<CustomerInfoBean> customerGetList(CustomerInfoBean customerInfoBean) {

		return sqlSession.selectList("customerList",customerInfoBean);
		
	}

	@Override
	public int customerDuplCheck(String customerInfoId) {
		
		return sqlSession.selectOne("selectListDuplCheck",customerInfoId);
	}

}
