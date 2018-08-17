package com.dailyblog.www.service.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.dailyblog.www.model.board.dao.BoardDao;
import com.dailyblog.www.model.board.dto.BoardDto;
import com.dailyblog.www.model.reply.dto.ReplyDto;

@Service
public class BoardServiceImple implements BoardService {

	// private static final Logger log =
	// LoggerFactory.getLogger(BoardServiceImple.class);

	@Inject
	BoardDao boardDao;

	@Override
	public List<BoardDto> readAll(HttpSession session) {

		@SuppressWarnings("unchecked")
		Map<String, Object> map = (Map<String, Object>) session.getAttribute("user_info");

		// log.info("data" + boardDao.readAll((String) map.get("user_id")));
		return boardDao.readAll((String) map.get("user_id"));
	}

	@Override
	public void delete(String up_no) {
		boardDao.delete(up_no);
	}

	@Override
	public BoardDto readOne(String up_no) {

		return boardDao.readOne(up_no);
	}

	@Override
	public void update(BoardDto dto) {

		boardDao.update(dto);
	}

	@Override
	public List<ReplyDto> readReply(List<BoardDto> list) {
		//1. up_no만 모은 list를 생성한다.
		List<String> no_list = new ArrayList<>();
		
		//2. session(user_id)에 관련된 list에서 up_no만 추출하여 no_list에 담는다
		for (BoardDto dto : list) {
			no_list.add(dto.getUp_no());
		}
		
		//3. no_list에 해당하는 댓글 목록을 불러온다
		return boardDao.readReply(no_list);
	}

}
