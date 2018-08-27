package com.dailyblog.www.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dailyblog.www.service.member.MemberService;

@Controller
@RequestMapping("/account/*")
public class AccountController {
	
	@Inject
	MemberService memberService;
	
	@RequestMapping("passwd.do/{user_id}")
	public String passwd(@PathVariable("user_id") String user_id) {
		
		// 추후 사용자 인증 form view로 넘기고
		return "redirect:/";
	}
}
