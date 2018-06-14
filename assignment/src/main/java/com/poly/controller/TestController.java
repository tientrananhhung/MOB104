package com.poly.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
@RequestMapping("/test")
public class TestController {
	
	@GetMapping
	public ModelAndView show() {
		ModelAndView model = new ModelAndView("test");
		return model;
	}
}
