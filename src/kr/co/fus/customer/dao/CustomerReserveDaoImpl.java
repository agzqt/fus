package kr.co.fus.customer.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import kr.co.fus.customer.bean.CustomerReserveBean;

@Resource
public class CustomerReserveDaoImpl  implements CustomerReserveDao {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public void testt(CustomerReserveBean customerReserveBean) {
		sqlSession.insert("CustomerReserveInsert",customerReserveBean);
	}
	@Override
	public ArrayList<CustomerReserveBean> reserveList(String userId) {
		return (ArrayList) sqlSession.selectList("CustomerReserveList", userId);
	}
}
