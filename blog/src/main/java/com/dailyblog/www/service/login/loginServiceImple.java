package com.dailyblog.www.service.login;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.dailyblog.www.model.login.LoginDao;
import com.dailyblog.www.model.member.dto.MemberDto;

@Service
public class loginServiceImple implements loginService {

	@Inject
	LoginDao loginDao;

	@Override
	public boolean login(MemberDto dto, HttpSession session) {

		if (session.getAttribute("user_info") != null) {
			session.removeAttribute("user_info");
		}
		
		boolean result = loginDao.login(dto);

		if (result) {
			MemberDto selected = selectMember(dto);
			Map<String, Object> user_info = new HashMap<>();
			
			user_info.put("user_id", selected.getUser_id());
			user_info.put("user_name", selected.getUser_name());
			
			session.setAttribute("user_info", user_info);
		} 
		
		return result;
	}// login ends



	@Override
	public MemberDto selectMember(MemberDto dto) {
		
		return loginDao.selectMember(dto);
	}
	
	

}
