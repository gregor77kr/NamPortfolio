package com.dailyblog.www.service.board;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.dailyblog.www.model.board.dao.BoardDao;
import com.dailyblog.www.model.board.dto.BoardDto;

@Service
public class BoardServiceImple implements BoardService {
	
	private static final Logger log = LoggerFactory.getLogger(BoardServiceImple.class);
	
	@Inject
	BoardDao boardDao;
	
	@Override
	public List<BoardDto> readAll(HttpSession session) {
		
		@SuppressWarnings("unchecked")
		Map<String, Object> map = (Map<String, Object>) session.getAttribute("user_info");
		
		log.info("data" + boardDao.readAll((String) map.get("user_id")));
		return boardDao.readAll((String) map.get("user_id"));
	}
		
}
