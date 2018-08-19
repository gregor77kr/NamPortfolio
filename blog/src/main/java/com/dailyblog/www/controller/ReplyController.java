package com.dailyblog.www.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dailyblog.www.model.reply.dto.ReplyDto;
import com.dailyblog.www.service.reply.ReplyService;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	
	private static final Logger log = LoggerFactory.getLogger(ReplyController.class);
	
	@Inject
	ReplyService replySerivce;
	
	@RequestMapping(value= "write.do", method = RequestMethod.POST )
	@ResponseBody
	public String write(HttpSession session, ReplyDto dto) {
		
		replySerivce.replyWrite(session, dto);
	
		return "success";
	}
	
	@RequestMapping(value = "readOne.do", method = RequestMethod.POST )
	@ResponseBody
	public List<ReplyDto> readAll(@RequestParam(value="up_no") String up_no) {
		// 게시물 목록
		//log.info("up_no :" + up_no);
		List<ReplyDto> list = replySerivce.readAll(up_no);
		
		return list;
	}
	
	@RequestMapping(value = "delete.do", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam(value="reply_no") String reply_no) {
		
		replySerivce.delete(reply_no);
		return "success";
	}
	
	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	@ResponseBody
	public String update(@RequestParam(value = "reply_no") String reply_no, @RequestParam(value = "reply") String reply ){
		
		replySerivce.update(reply_no, reply);
		
		return "success";
	}
	
}
