package com.dailyblog.www.model.member.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dailyblog.www.model.member.dto.MemberDto;

@Repository
public class MemberDaoImple implements MemberDao{
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void memberInsert(MemberDto dto) {
		
		sqlSession.insert("member.insert_member", dto);
		sqlSession.insert("member.insert_nickname" ,dto);
	}



	
}
