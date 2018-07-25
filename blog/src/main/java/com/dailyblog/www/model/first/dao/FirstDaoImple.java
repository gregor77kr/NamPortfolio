package com.dailyblog.www.model.first.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FirstDaoImple implements FirstDao {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int countOfUser() {
		
		return sqlSession.selectOne("first.countOfUser");
	}

	
}
