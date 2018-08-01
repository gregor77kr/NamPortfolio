package com.dailyblog.www.model.login;

import com.dailyblog.www.model.member.dto.MemberDto;

public interface LoginDao {
	
	public boolean login(MemberDto dto);
	public MemberDto selectMember(MemberDto dto);
}
