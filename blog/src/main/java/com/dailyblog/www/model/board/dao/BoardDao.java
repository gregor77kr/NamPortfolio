package com.dailyblog.www.model.board.dao;

import java.util.List;

import com.dailyblog.www.model.board.dto.BoardDto;
import com.dailyblog.www.model.reply.dto.ReplyDto;

public interface BoardDao {
	
	public List<BoardDto> readAll(String user_id);
	public void delete(String up_no);
	public BoardDto readOne(String up_no);
	public void update(BoardDto dto);
	public List<ReplyDto> readReply(List<String> no_list);
	
}
