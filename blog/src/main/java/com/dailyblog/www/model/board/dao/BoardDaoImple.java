package com.dailyblog.www.model.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dailyblog.www.model.board.dto.BoardDto;

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
	
	
	
}
