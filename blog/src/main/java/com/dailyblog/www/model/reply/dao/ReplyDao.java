package com.dailyblog.www.model.reply.dao;

import com.dailyblog.www.model.reply.dto.ReplyDto;
import com.dailyblog.www.model.upload.dto.UploadDto;

public interface ReplyDao {
	
	public void replyWrite(ReplyDto dto);
}
