package com.dailyblog.www.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dailyblog.www.model.member.dto.MemberDto;
import com.dailyblog.www.service.member.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	MemberService memberService;
	
	// 회원가입 페이지 호출 메서드
	@RequestMapping("signUp.do")
	public ModelAndView SignUp() {

		return new ModelAndView("signUp");
	}

	// 회원 가입
	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public ModelAndView insert(MemberDto dto) {

		// email id와 도메인을 받아서 이메일 형태로 재가공하여 email로 설정
		dto.setEmail(dto.getEmail() + "@" + dto.getDomain());
		
		// db insert
		memberService.memberInsert(dto);
	
		return new ModelAndView("redirect:/");
	}
	

}
