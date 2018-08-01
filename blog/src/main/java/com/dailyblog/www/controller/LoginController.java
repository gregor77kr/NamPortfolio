package com.dailyblog.www.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dailyblog.www.model.member.dto.MemberDto;
import com.dailyblog.www.service.login.loginService;

@Controller
@RequestMapping("login/*")
public class LoginController {
	
	@Inject
	loginService loginService;
	
	@RequestMapping("login.do")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "loginProcess.do", method = RequestMethod.POST)
	public ModelAndView loginProcess(MemberDto dto, HttpSession session) {
		
		if(loginService.login(dto, session)) {
			return new ModelAndView("redirect:/");
		} else {
			return new ModelAndView("login", "message", "error");			
		}
	}// login Process ends
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}// logout ends
	
	
}
