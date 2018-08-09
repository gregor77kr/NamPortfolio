package com.dailyblog.www.service.reply;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.dailyblog.www.model.reply.dao.ReplyDao;
import com.dailyblog.www.model.reply.dto.ReplyDto;

@Service
public class ReplyServiceImple implements ReplyService {
	
	@Inject
	ReplyDao replyDao;
	
	private static final Logger log = LoggerFactory.getLogger(ReplyServiceImple.class);
	
	@Override
	public void replyWrite(HttpSession session, ReplyDto dto) {
		
		log.info("session :" + session.getAttribute("user_info"));
		log.info("dto :" + dto);
				
		
		replyDao.replyWrite(dto);
	}
	
	
}
