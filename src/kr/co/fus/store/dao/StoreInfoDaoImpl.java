package kr.co.fus.store.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.fus.store.bean.StoreInfoBean;

public class StoreInfoDaoImpl implements StoreInfoDao {
private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void storeInsert(StoreInfoBean storeInfoBean) { // 가입
	sqlSession.insert("storeInsert", storeInfoBean);
	
	}
	
	@Override
	public String storeLoginAction(String storeInfoId) {
		return sqlSession.selectOne("storeLoginAction", storeInfoId);//로그인
	}
	
	@Override
		public StoreInfoBean storeOne(String StoreInfoId) {
			return sqlSession.selectOne("storeOne", StoreInfoId);
		}
}
