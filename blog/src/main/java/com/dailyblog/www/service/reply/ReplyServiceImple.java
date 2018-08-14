package com.dailyblog.www.service.reply;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.dailyblog.www.commons.SelectMem_no;
import com.dailyblog.www.model.reply.dao.ReplyDao;
import com.dailyblog.www.model.reply.dto.ReplyDto;

@Service
public class ReplyServiceImple implements ReplyService {

	@Inject
	ReplyDao replyDao;

	@Inject
	SelectMem_no sm;

	private static final Logger log = LoggerFactory.getLogger(ReplyServiceImple.class);

	@Override
	public void replyWrite(HttpSession session, ReplyDto dto) {


		//log.info("session :" + session.getAttribute("user_info"));
		//log.info("dto :" + dto);
		// mem_no, up_no !null, reply_no, reply !null, reply_date

		// mem_no 선택하여 set
		dto.setMem_no(sm.getMem_no(session));

		// reply_no 생성하기
		// 먼저 댓글이 몇개있는지 확인해주어야 한다.
		//log.info("count" + replyDao.countReply(dto.getUp_no()));
		String count =  Integer.toString(replyDao.countReply(dto.getUp_no()));
		String up_no = dto.getUp_no();
		dto.setReply_no(up_no + count);
		
		//date값 처리
		String reply_date = new SimpleDateFormat("yyyy/MM/dd hh:mm").format(Calendar.getInstance().getTime());
		dto.setReply_date(reply_date);
			
		//log.info("dto after" + dto);
		
		replyDao.replyWrite(dto);
	}

	
	
	@Override
	public List<ReplyDto> readAll(String up_no) {
		
		return replyDao.readAll(up_no);
	}
	
	
}
