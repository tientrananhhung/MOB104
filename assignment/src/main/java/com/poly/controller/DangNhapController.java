package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Transactional
@RequestMapping("/login")
public class DangNhapController {

	@GetMapping
	public String dangNhap() {
		return "dangnhap";
	}
	
}
