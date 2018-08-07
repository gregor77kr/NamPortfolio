package com.dailyblog.www.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dailyblog.www.model.board.dto.BoardDto;
import com.dailyblog.www.model.upload.dto.UploadDto;
import com.dailyblog.www.service.board.BoardService;
import com.dailyblog.www.service.upload.UploadService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	UploadService uploadService;
	
	@Inject
	BoardService boardService;
	
	@RequestMapping("/main.do")
	public ModelAndView main(HttpSession session ) {
		List<BoardDto> list =  boardService.readAll(session);
		
		return new ModelAndView("main", "list", list);
	}
	
	@RequestMapping(value= "write.do", method = RequestMethod.POST)
	public String write(MultipartFile file, HttpSession session, UploadDto dto) throws Exception {
		
		uploadService.upload(dto, session, file);
		
		return "redirect:/board/main.do";
	}

}
