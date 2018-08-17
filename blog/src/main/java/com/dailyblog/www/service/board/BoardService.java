package com.dailyblog.www.service.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.dailyblog.www.model.board.dto.BoardDto;
import com.dailyblog.www.model.reply.dto.ReplyDto;

public interface BoardService {
	
	public List<BoardDto> readAll(HttpSession session);
	public void delete(String up_no);
	public BoardDto readOne(String up_no);
	public void update(BoardDto dto);
	public List<ReplyDto> readReply(List<BoardDto> list);
}
