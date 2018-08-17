package com.dailyblog.www.model.reply.dao;

import java.util.List;

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
		sqlSession.insert("reply.write", dto);

	}

	@Override
	public int countReply(String up_no) {

		return sqlSession.selectOne("reply.countReply", up_no) == null ? 0
				: sqlSession.selectOne("reply.countReply", up_no);
	}

	@Override
	public List<ReplyDto> readAll(String up_no) {
		
		return sqlSession.selectList("reply.readOne",up_no);
	}

	@Override
	public void delete(String reply_no) {
		sqlSession.delete("reply.delete", reply_no);
		
	}
	
	
	
}
