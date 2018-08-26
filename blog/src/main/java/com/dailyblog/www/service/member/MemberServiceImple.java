package com.dailyblog.www.service.member;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.dailyblog.www.model.member.dao.MemberDao;
import com.dailyblog.www.model.member.dto.MemberDto;

@Service
public class MemberServiceImple implements MemberService{
	
	@Inject
	MemberDao memberDao;

	@Override
	public void memberInsert(MemberDto dto) {
		
		memberDao.memberInsert(dto);
	}

	@Override
	public int checkDupId(String user_id) {
		
		return memberDao.checkDupId(user_id);
	}

	@Override
	public int checkDupName(String nickname) {
		
		return memberDao.checkDupName(nickname);
	}
	
	
	
}
