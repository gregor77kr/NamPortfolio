package com.dailyblog.www.model.login;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dailyblog.www.model.member.dto.MemberDto;

@Repository
public class LoginDaoImple implements LoginDao{
		
	@Inject
	SqlSession sqlSession;

	@Override
	public boolean login(MemberDto dto) {
		MemberDto result = sqlSession.selectOne("login.login", dto);
		
		return (result == null) ? false : true;
	}

	@Override
	public MemberDto selectMember(MemberDto dto) {
		
		return sqlSession.selectOne("login.login", dto);
	}
	
	
}
