package com.dailyblog.www.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dailyblog.www.service.first.FirstService;

@Controller
public class FirstController {
	
	@Inject
	FirstService firstService;
	
	@RequestMapping("/")
	public ModelAndView first() {
		return new ModelAndView("first", "count_of_user", firstService.countOfUser());
	}
}
