package com.dailyblog.www.service.member;

import com.dailyblog.www.model.member.dto.MemberDto;

public interface MemberService {
	
	public void memberInsert(MemberDto dto);
	public int checkDupId(String user_id);
	public int checkDupName(String nickname);
}
