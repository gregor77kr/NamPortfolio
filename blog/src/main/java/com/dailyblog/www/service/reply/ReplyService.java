package com.dailyblog.www.service.reply;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.dailyblog.www.model.reply.dto.ReplyDto;

public interface ReplyService {
	
	public void replyWrite(HttpSession session, ReplyDto dto);
	public List<ReplyDto> readAll(String up_no);
	
}
