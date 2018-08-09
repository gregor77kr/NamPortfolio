package com.dailyblog.www.service.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.dailyblog.www.model.board.dto.BoardDto;

public interface BoardService {
	
	public List<BoardDto> readAll(HttpSession session); 
}