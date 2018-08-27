package com.dailyblog.www.model.member.dao;

import com.dailyblog.www.model.member.dto.MemberDto;

public interface MemberDao {
	public void memberInsert(MemberDto dto);
	public int checkDupId(String user_id);
	public int checkDupName(String nickname);
	public String findPasswd(String user_id); 
}
