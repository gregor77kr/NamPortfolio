package com.dailyblog.www.model.reply.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dailyblog.www.model.reply.dto.ReplyDto;

@Repository
public class ReplyDaoImple implements ReplyDao {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void replyWrite(ReplyDto dto) {
		
		
	}

}
