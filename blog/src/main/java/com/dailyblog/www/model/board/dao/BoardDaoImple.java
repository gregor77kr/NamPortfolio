package com.dailyblog.www.model.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dailyblog.www.model.board.dto.BoardDto;
import com.dailyblog.www.model.reply.dto.ReplyDto;

@Repository
public class BoardDaoImple implements BoardDao {

	@Inject
	SqlSession sqlSession;

	@Override
	public List<BoardDto> readAll(String user_id) {
		
		return sqlSession.selectList("board.readAll", user_id);
	}

	@Override
	public void delete(String up_no) {
		sqlSession.delete("board.delete", up_no);
		
	}

	@Override
	public BoardDto readOne(String up_no) {
		
		return sqlSession.selectOne("board.readOne", up_no);
	}

	@Override
	public void update(BoardDto dto) {
		sqlSession.update("board.update", dto);
		
	}

	@Override
	public List<ReplyDto> readReply(List<String> no_list) {
		
		return sqlSession.selectList("reply.readAll", no_list);
	}
	
}
