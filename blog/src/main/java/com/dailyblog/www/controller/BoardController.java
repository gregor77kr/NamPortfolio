package com.dailyblog.www.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dailyblog.www.model.board.dto.BoardDto;
import com.dailyblog.www.model.reply.dto.ReplyDto;
import com.dailyblog.www.model.upload.dto.UploadDto;
import com.dailyblog.www.service.board.BoardService;
import com.dailyblog.www.service.upload.UploadService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	//private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	UploadService uploadService;
	
	@Inject
	BoardService boardService;

	
	@RequestMapping("/main.do")
	public ModelAndView main(HttpSession session) {
		
		// 이 list에는 해당 session 게시물의 up_no가 있다.
		// 그렇다면 여기서 list에서 up_no를 추출하여 그 것에 해당하는 댓글 목록을 불러와보자
		List<BoardDto> list = boardService.readAll(session);
		
		// return 할 객체를 생성하고
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		
		// parameter로 던져줄 list가 null이 아닐 때만 댓글조회 method를 호출하여
		if(!list.isEmpty()) {
			List<ReplyDto> reply_list = boardService.readReply(list);
			map.put("reply_list", reply_list);
		}
		
		return new ModelAndView("main", "map", map);
	}
	
	@RequestMapping(value= "write.do", method = RequestMethod.POST)
	public String write(MultipartFile file, HttpSession session, UploadDto dto) throws Exception {
		
		uploadService.upload(dto, session, file);
		
		return "redirect:/board/main.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(@RequestParam String up_no) {
		
		boardService.delete(up_no);
		return "redirect:/board/main.do";
	}
	
	@RequestMapping("updateForm.do")
	public ModelAndView updateForm(@RequestParam String up_no) {
		//log.info("up_no :" + up_no);
		
		return new ModelAndView("updateForm", "dto", boardService.readOne(up_no));
	}
	
	@RequestMapping(value = "update.do", method =RequestMethod.POST)
	@ResponseBody
	public BoardDto update(BoardDto dto) {
		//log.info("input dto :" + dto);
		boardService.update(dto);
		BoardDto updated = boardService.readOne(dto.getUp_no());
		//log.info("updated : " + updated);
		return updated;
	}
}
