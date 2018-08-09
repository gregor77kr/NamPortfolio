package com.dailyblog.www.service.reply;

import javax.servlet.http.HttpSession;

import com.dailyblog.www.model.reply.dto.ReplyDto;

public interface ReplyService {
	
	public void replyWrite(HttpSession session, ReplyDto dto);
	
}
