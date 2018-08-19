package com.dailyblog.www.model.reply.dao;

import java.util.List;

import com.dailyblog.www.model.reply.dto.ReplyDto;

public interface ReplyDao {
	
	public void replyWrite(ReplyDto dto);
	public int countReply(String up_no);
	public List<ReplyDto> readAll(String up_no);
	public void delete(String reply_no);
	public void update(ReplyDto dto);
}
