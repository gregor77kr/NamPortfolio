package com.dailyblog.www.service.login;

import javax.servlet.http.HttpSession;

import com.dailyblog.www.model.member.dto.MemberDto;

public interface loginService {
	
	public boolean login(MemberDto dto, HttpSession session);
	public MemberDto selectMember(MemberDto dto);
}
